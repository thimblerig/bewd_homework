present = ["Ron", "Harry", "Hermione"]

puts "Add a student"
present << gets.chomp

present.each do |student|
  puts student + " is present"
end
