puts "Are you an admin? (Y/N)"
answer = gets.chomp

if answer == "Y" 
  puts "access granted"
  puts "what is the code"
    answer2 = gets.chomp
      if answer2 == "1234"
        puts "welcome"
      elsif answer2 == "HINT"
        puts "1234"
        puts "what is the code"
          answer3 = gets.chomp
            if answer3 == "1234"
              puts "welcome"
            else
              puts "access denied"
            end
          else puts "access denied"
          end

elsif answer == "N"
  puts "access denied"
else
  puts "access denied bye bye"
end
