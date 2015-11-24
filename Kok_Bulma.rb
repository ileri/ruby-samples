#encoding : UTF-8
puts "Denkleminiz ax²+bx+c biçiminde olmalıdır"
print "Denleminizdeki a değerini (Derecesi 2 olan terimin katsayısını) giriniz "
a = gets.chomp
print "Denleminizdeki b değerini (Derecesi 1 olan terimin katsayısını) giriniz "
b = gets.chomp
print "Denleminizdeki c değerini (Sabit terimi) giriniz "
c = gets.chomp
a = a.to_i
b = b.to_i
c = c.to_i
delta = b**2 - 4*a*c
delt = delta.to_i
if delta > 0
  kok1 = ((b)-(delta**(-2)))/2*a
  kok2 = ((b)+(delta**(-2)))/2*a
  kok1 = kok1.to_f
  kok2 = kok2.to_f
  puts "1.Kök = #{kok1}"
  puts "2.Kök = #{kok2}"
elsif delta == 0
  kokler = (b)/2*a
  puts "İki kök de #{kokler}"
else
  puts "Denklemin gereçel kökü yok"
end
