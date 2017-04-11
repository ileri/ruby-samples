#!/usr/bin/env ruby

# Sınıfın kısa açıklaması
class Sinif
  def initialize deger
    @deger = deger
  end

  def deger
    @deger
  end

  def deger=(yeni_deger)
    # Ruby'de metod isimlerinde operatörleri kullanabiliyoruz.
    # Örneğin burda 
    # nesne.deger = 
    # şeklindeki bir çağrıda çağırılacak metodu yazmış olduk.
    # Yukarıdaki sözdizimi bir atama ifade ettiği için nesne metodumuza
    # artık hem okuma hem de yazma erişimimiz var
    @deger = yeni_deger
  end
end

nesne = Sinif.new 5
puts nesne.deger
nesne.deger = 10
puts nesne.deger
