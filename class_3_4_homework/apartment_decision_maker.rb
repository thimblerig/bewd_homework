

puts "How much is your monthly income?"
income = gets.chomp.to_i

puts "How much is the rent?"
rent = gets.chomp.to_i

if (income * 1/3 > rent)
  qual1 = true
end

puts "How many bathrooms does it have?"
bathrooms = gets.chomp.to_i

puts "How many bedrooms does it have?"
bedrooms = gets.chomp.to_i

  if (bedrooms <= 5)
    qual2 = true
  end

  if (3/2 == bedrooms/bathrooms)
    qual3 = true
  end

    if (qual1 == true && qual2 == true && qual3 == true)
      puts "Yes"
    else
      puts "No"
    end
