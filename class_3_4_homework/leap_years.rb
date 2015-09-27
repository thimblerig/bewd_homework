puts "Enter a starting year"
start_year = gets.chomp.to_i

puts "Enter a ending year"
end_year = gets.chomp.to_i

puts "leap years between #{start_year} and #{end_year}:"

while (start_year <= end_year) do

if (start_year % 4 == 0 && start_year % 100 > 0)
  puts start_year
elsif (start_year % 100 == 0)
  if (start_year % 400 == 0)
  puts start_year
  end
end

start_year = start_year + 1
end
