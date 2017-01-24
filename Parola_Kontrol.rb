#encoding : UTF-8
def sorgu (kadi,pass)
	ka = "kullaniciadi"
	password="123456"
	if kadi == ka && pass == password
		puts "Giriş Başarılı"
	elsif kadi == ka && pass != password
		puts "Kullanıcı Adı ile parola uyuşmuyor"
	else
		puts "Böyle bir kullanıcı yok"
	end
end
print "Kullanıcı adınızı giriniz : "
k_adi = gets.chomp
print "Parolanızı giriniz : "
parola = gets.chomp
sorgu(k_adi,parola)
