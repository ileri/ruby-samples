#encoding : UTF-8
def average(a)
  print a
  array = gets.split
  i=0
  sum=0
  while  array[i] != nil
    sum+=array[i].to_f
    i+=1
  end
  avg= sum/i.to_f
  puts avg
end
average ("Ortalaması alınacak sayıları giriniz: ")
