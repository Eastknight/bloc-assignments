#This file is to test One Line Conditionals

gets_discount = true
price = 10
price *= 0.8 if gets_discount
puts "Price is #{price}"
skip_tax = false
price += price * 0.1 unless skip_tax

puts "Price after tax is #{price}"