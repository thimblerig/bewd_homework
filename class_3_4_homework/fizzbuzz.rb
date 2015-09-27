integer = 0

while (integer < 100)
  integer = integer + 1

if (integer % 3 == 0 && integer % 5 == 0)
  puts "fizzbuzz"
elsif (integer % 3 == 0)
    puts "fizz"
elsif (integer % 5 == 0)
    puts "buzz"
else
    puts integer
  end
end
