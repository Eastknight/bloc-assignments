puts "Now, let's practice ruby methods..."

def hello
  "Hello world!"
end

p hello

def return_three
  a = 1
  b = 2
  a + b 
end

p return_three

def add(a , b)
  a + b
end

p add(1, 2)
p add(4, 5)
p add(7, 7)

#num = number of times compounded
def compound_interest(name, principal, rate, years, num)
  amount = principal * (1 + rate/num) ** (num * years)
  "After #{years} years, #{name} will have #{amount} dollars!"
end

p compound_interest("Bob", 100, 0.05, 40, 12)
p compound_interest("Joe", 250, 0.06, 50, 12)

def link(address, text)
  "<a href=\"http://google.com\">Google</a>"
end

p link("www.mysite.com", "My Site!")

