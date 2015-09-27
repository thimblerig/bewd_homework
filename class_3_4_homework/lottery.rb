secret_number = rand(10)
answer = "none"

while answer != secret_number
  puts "what is the secret number?"
  answer = gets.chomp.to_i
  if  answer  == secret_number
    puts "you got it"
  break
  else
    puts "You got it wrong"
    puts "Do you want to try again (Y/N)"
      if gets.chomp.upcase == "N"
        puts "The number is #{secret_number}"
        break
      end
  end
end
