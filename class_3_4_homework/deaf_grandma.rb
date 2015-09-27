puts "what do you want to say to grandma?"
input = gets.chomp

while (input != "BYE")
year = 1930 + rand(20)
    if (input != input.upcase)
puts "HUH?! SPEAK UP, SONNY!"
input = gets.chomp
    elsif (input == input.upcase)
        puts "NO, NOT SINCE #{year}!"
        input = gets.chomp
    elsif (input == "BYE")
        break
    end
end
