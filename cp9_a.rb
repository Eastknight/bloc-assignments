puts "First, try some prints..."
p "hello world"
p 4
p true
p false

puts "\nSecond, practise some variables..."
my_string_variable = "hello world"
p my_string_variable

my_boolean = true
p my_boolean

a, b = 1, 2
p a, b

puts "\nThese guys are called symbols, they are similar to strings but with less functionality..."
p :hello
p :hi123
p :HELLO

puts "\nThird, let's try some math..."
p "1 + 2 is #{1 + 2}"
p "5 - 1 is #{5 - 1}"
p "6 / 2 is #{6 / 2}"
p "4 * 3 is #{4 * 3}"
p "2 ** 3 is #{2 ** 3}"
p "4 > 5 is #{4 > 5}"
p "3 < 6 is #{3 < 6}"
p "(3 + 4) * 7 is #{(3 + 4) * 7}"

puts "\nWe can also run some operations on strings..."
puts "If we type p \"hello\" * 3, we get:"
p "hello" * 3
puts "If we add two string by typing 'Hello' + 'World', we get:"
p "hello" + "world"
p "However you can never do 'hello' + 3, or you'll get errors!"
puts "If you really want to combine a number to a string, you should do \"hello \#{3}\"."

puts "\nForth, let's turn to the special object: nil..."
p "Bloc"[7]
p "Bloc"[2]
puts "p \"Bloc\"[7] will return nil"
puts "p \"Bloc\"[2] returns a 'o'."



