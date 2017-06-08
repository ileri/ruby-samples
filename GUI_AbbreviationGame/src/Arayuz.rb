
class Arayuz
 
  include GladeGUI

  def before_show()
    unless File.exist? 'abbreviations.json'
      update
    end

    @builder['window1'].title = 'Abbreviation Game'
    @baslik = 'Abbreviation Game'
    @startButton = 'Start!'
    @addButton = 'Add new Abbreviations'
    @updateButton = 'Update Abbreviations from GitHub'
    @aboutButton = 'About'
    @builder['baslik']
  end  

  def startButton_clicked_cb
    puts 'Start button clicked!'
    Oyun.new.show_glade()
  end

  def addButton_clicked_cb
    puts 'Add button clicked!'
    Ekle.new.show_glade()
  end

  def updateButton_clicked_cb
    puts 'Update button clicked!'
    alert 'New features are coming soon!'
  end

  def aboutButton_clicked_cb
    puts 'About button clicked!'
    alert "Developers GitHub Accounts: \n\n\n" +
          "Serhat Celil İLERİ\t\t@celilileri\n\n" +
          "Taha Yasir KIROĞLU\t@TahaYasirKiroglu\n\n"
  end
end
