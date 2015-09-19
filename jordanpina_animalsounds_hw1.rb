puts "name an animal"
animal = gets.chomp
animal.downcase!

puts animal

puts "what sound does your animal make?"
sound = gets.chomp
sound.downcase!
sound = " " + sound + ","

puts sound

puts "how many sounds does it make?"
number = gets.chomp

puts number


puts "the #{animal} goes #{sound}
