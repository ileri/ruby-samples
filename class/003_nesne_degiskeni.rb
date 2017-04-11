#!/usr/bin/env ruby

# Sinif adında bir Sınıf(class)
class Sinif
  # Ruby metod tanımlarken metodun argumanlarını metod isminden sonra bir
  # boşluk bırakıp yazmanıza da olanak sağlar. 
  
  # Ancak Ruby topluluğunun kendi deneyimlerinden yola çıkarak oluşturduğu
  # bir gelenek olarak metod tanımlarında eğer metod arguman alıyorsa 
  # argumanlar parantez içinde, aralarında virgül olacak şekilde ve 
  # virgüllerden sonra da birer boşluk bırakılarak diğer arguman gelecek
  # şekilde bir yazımı tercih ederler ve önerirler.
  
  def initialize(deger)
    # Tek @ işaretiyle başlayan değişkenler nesne değişkenidir.

    # Sinif.new komutuyla nesne oluşturulduktan sonra kullanılabilirler.

    # Burada nesne değişkenimiz olan @deger değişkenine arguman olarak
    # gelen deger değişkeninin değerini atıyoruz.

    # Biz belirtmediğimiz sürece bu nesne değişkenleri dışarıdan
    # erişime kapalıdır.

    @deger = deger
  end
end

# Yukarıda bahsettiğimiz metod tanımlarken arguman varsa parantez koyma
# durumundaki argumanları parantez içine yazma geleneği metodu
# çağırırken geçerli değildir.

# Eğer arguman olarak iç içe metodlar
# yada karmaşık ifadeler kullanmayacaksanız metodunuzu parantezsiz 
# çağırmanızda herhangi bir yanlışlık yoktur.

nesne = Sinif.new 5
