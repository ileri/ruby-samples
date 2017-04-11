#!/usr/bin/env ruby

# Sinif adında bir Sınıf(class) .
class Sinif
  def initialize deger
    # Tek @ işaretiyle başlayan değişkenler nesne değişkenidir.
    # Sinif.new komutuyla nesne oluşturulduktan sonra kullanılabilirler.
    # Burada nesne değişkenimiz olan @deger değişkenine arguman olarak
    # gelen deger değişkeninin değerini atıyoruz.
    # Biz belirtmediğimiz sürece bu nesne değişkenleri dışarıdan
    # erişime kapalıdır.
    @deger = deger
  end
end

nesne = Sinif.new 5
