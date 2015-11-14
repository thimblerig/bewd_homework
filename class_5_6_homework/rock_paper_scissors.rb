#this code is not yet complete

choices = ["rock", "paper", "scissors"]

#pick a random number
i = rand(0..2)
computer_input = choices[i]

puts "rock"
sleep 1
puts "paper"
sleep 1
puts "scissors"
sleep 1

user_input = ""

while user_input.downcase != "rock" && user_input.downcase != "paper" && user_input.downcase != "scissors"
puts "shoot!"
user_input = gets.chomp
end
