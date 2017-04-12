#!/usr/bin/env ruby

# Yukarıdaki #! ile başlayan satır bir yorum satırı değildir.
# Unix mimarisiyle tasarlanan işletim sistemlerinde çalıştırılabilir olan
# dosyalar sistem tarafından hangi program veya yorumlayıcı ile çalıştırılacağı
# belirtilmeden direkt olarak ./dosya_adi yada /dosyanin/tam/yolu şelinde
# çalıştırıldığında sistem bu dosyayı çalıştırmak için dosyanın ilk satırında
# yukarıda yazdığımız gibi bir "SHEBANG" arar.

# SHEBANG dediğimiz şey sadece dosya içindeki bir satırdan ibarettir.

# Kare, diez, hash yada sharp olarak adlandırılan # karakteri ve ünlem işareti
# dediğimiz ! karakterinin bitişik olarak yazılıp ardından hemen boşluk
# bırakmadan çalıştıracak programın tam yolunu yazarak SHEBANG oluştururuz.


# Ruby'de sınıf oluşturma örneği için oluşturulan sınıf
class Sinif
  # Boş bir sınıf tanımı. Geçerlidir.
  # Ruby geleneğinde sınıf tanımlarken üstünde sınıfı kısaca tanıtan
  # bir yorum satırı olur. Şunun gibi:
end
