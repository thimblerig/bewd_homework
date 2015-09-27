bottles = 100

while (bottles >= 0)
  bottles = bottles -1
  if (bottles > 1)
    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.
Take one down and pass it around, #{bottles - 1} bottles of beer on the wall."
  elsif (bottles == 1)
    puts "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall."
  elsif (bottles == 0)
    puts "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end
