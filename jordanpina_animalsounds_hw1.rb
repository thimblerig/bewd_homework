puts "name an animal"
animal = gets.chomp
animal.downcase!

puts "you chose #{animal}"

puts "what sound does your animal make?"
sound = gets.chomp
sound.downcase!


puts "you chose #{sound}"

puts "how many sounds does it make?"
number = gets.chomp.to_i

puts "you chose #{number}"


puts "the #{animal} goes#{(" " + sound + "," ) * (number - 1)} #{sound}."
