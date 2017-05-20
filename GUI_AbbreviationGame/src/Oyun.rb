class Oyun
 
  include GladeGUI

  def before_show()
    @file = File.open('abbreviations.json', 'r+')
    @abbrs = Abbreviation.new JSON.parse File.read(@file)
    @controlButton = 'Control!'
    @passButton = 'Pass Blank'
    @seeAnswerButton = 'See Answer'
    @cevapYazi = '~'
    playGame
    @file.close
  end

  def playGame
    @abbr = @abbrs.random
    @abbr.nil? ? (return nil) : (@key = @abbr.keys[0])
    @builder['kisaltmaYazi'].label = @key
  end

  def controlButton_clicked_cb
    puts 'Control clicked!'
    nextQuestion(@builder['cevapKutusu'].text)
  end

  def passButton_clicked_cb
    puts 'Pass clicked!'
    nextQuestion(:passTheAnswerClicked)
  end

  def seeAnswerButton_clicked_cb
    puts 'See answer clicked!'
    @builder['cevapYazi'].label = @abbr[@key]
  end

  def nextQuestion(answer)
    case answer.downcase
    when :passTheAnswerClicked.downcase
      @yazi = "#{@key}: #{@abbr[@key]}"
    when @abbr[@key].downcase
      @yazi = 'TRUE!'
    else 
      @yazi = "False, #{@key}: #{@abbr[@key]}"
    end
    puts @yazi
    @builder['cevapKutusu'].text = ''
    @builder['cevapYazi'].label = @yazi
    playGame
  end
end
