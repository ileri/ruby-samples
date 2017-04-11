#!/usr/bin/env ruby

# Sınıfın kısa açıklaması
class Sinif
  attr_reader :deger1
  attr_writer :deger2
  attr_accessor :deger3
  # Her nesne değişkeni için tek tek elle okuma ve yazma metodları
  # oluşturmak çok vaktimizi alacaktır. Bunun yerine meta programlama
  # ile kodun yorumlanma aşamasında bu metodların oluşturulmasını
  # sağlayabiliriz. Bunun için kullandığımız meta programlama diyimleri
  # şunlardır:

  # attr_reader
  # attr_writer
  # attr_accessor

  # Gördüğünüz gibi 3 tane özellik erişim çeşidimiz var.

  # attr_reader nesne değişkeninin sadece değerini okumaya izin verir

  # attr_writer nesne değişkenine sadece değer atamaya izin verir. 
  #   Okuma izni vermez

  # attr_accessor nene değişkenine hem okuma hem değer atama izni verir

  # Çok sayıda değişkene tek satırda bu özellikleri kazandırabiliriz
  # Kullanım şekli şöyledir:

  # attr_reader :nesne1 :nesne2 :diger_nesne

  # Gördüğünüz gibi nesne değişkeninin başına @ koymadık, sembol
  # olarak yazdık.

  # Ayrıca bu meta programlamayı kullanmamızın bir iyi yanı da meta
  # programlama ile tanımladığınız değişken erişimleri , elle metod
  # yazarak tanımladığınız değişken erişim yönteminden çok daha
  # performanslı bir şekilde çalışmaktadır.

  def initialize(deger1, deger2, deger3)
    # Birden çok değişken ataması yaparken Ruby'nin sağladığı bir
    # kolaylık olan paralel atama, yani şu şekildeki atama da mümkündür

    # @deger1, @deger2, @deger3 = deger1, deger2, deger3

    # Ancak elle tutulur nedenlerden dolayı Ruby topluluğu mümkün
    # olduğunca paralel atama yapılmaması taraftarıdır. Bunun yerine
    # aşağıdaki gibi seri atama tercih edilmelidir.
    @deger1 = deger1
    @deger2 = deger2
    @deger3 = deger3
  end

end

nesne = Sinif.new 5, 10, 15

# nesne nin deger1 değişkenine sadece okuma iznimiz var
puts nesne.deger1

# nesne nin deger2 değişkenine sadece yazma iznimiz var
nesne.deger2 = 3

# nesne nin deger3 değişkenine hem yazma hem okuma iznimiz var
puts nesne.deger3
nesne.deger3 = 19
puts nesne.deger3
