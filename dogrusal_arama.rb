#encoding : UTF-8
print "İçinde arama yapılacak sayıları giriniz : "
girilen_sayilar= gets.chomp
print "Aranacak sayıyı giriniz: "
aranan = gets.chomp.to_i
def dogrusal(sayilar, bulunacak)
  dizi = sayilar.split
  i=0
  while i+1 < dizi.length && bulunacak != dizi[i].to_i
      i+=1
  end
  if  dizi[i].to_i == bulunacak
    konum = i+1
  else
    konum = 0
  end

  if konum==0
    puts  "Aradığınız sayı girdiğiniz dizide yok."
  else
    puts "Aradığınız sayı dizinin #{konum}. elemanı."
  end
end
dogrusal(girilen_sayilar, aranan)
