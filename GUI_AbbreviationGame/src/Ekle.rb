class Ekle
 
  include GladeGUI

  def before_show()
    @file = File.open('abbreviations.json', 'r+')
    @abbrs = Abbreviation.new JSON.parse File.read(@file)
    @ustLabel = 'Add Abbreviation'
    @addButton = 'Add!'
    @clearButton = 'Clear'
    @cevapYazi = '~'
  end

  def addAbbr(abbr,long)
    puts 'Adding new abbreviation'
    @abbr = abbr.chomp.strip
    return if @abbr.empty?
    @abbrs.list[@abbr] = long
    @file.puts JSON.pretty_generate @abbrs.list
    @builder['cevapYazi'].label = "#{abbr} : #{long} added"
  end

  def addButton_clicked_cb
    puts 'Add clicked!'
    addAbbr(@builder['kisaltma'].text,@builder['uzun'].text)
  end

  def clearButton_clicked_cb
    puts 'Clean clicked!'
    @builder['uzun'].text = ''
    @builder['kisaltma'].text = ''
  end
end

