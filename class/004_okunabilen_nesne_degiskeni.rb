#!/usr/bin/env ruby

# Sınıfın kısa açıklaması
class Sinif
  def initialize deger
    @deger = deger
  end

  def deger
    # Nesne değişkenleri biz belitmediğimiz sürece dışarıdan erişime
    # kapalıdır. Nesnemizi dışarıdan erişime açmanın birkaç yolu
    # vardır. İlki elle metod tanımlamaktır. Burada elle tanımlayacağız.
    # nesne.deger çağrısını yaptığımızda bize nesnenin @deger
    # değişkeninin dönmesi için deger adında bir nesne metodu tanımladık
    # Şu an o metodun içindeyiz.
    # nesne.deger çağrısını yaptığımızda nesnemizin @nesne
    # değişkenini döndürmek için metodumuzun içine @deger yazıyoruz.
    # Dikkat! Bu metod bizim nesnemize sadece okuma erişiminin önünü
    # açmıştır, herhangi bir değer ataması yapamayız!
    @deger
  end
end

nesne = Sinif.new 5
puts nesne.deger
