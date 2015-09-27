puts "Welcome to GA Student Roster"
answer = "y"
roster = []

while answer.downcase !="n" do
  puts "Would you like to add a student? (y/n)"
  answer = gets.chomp
if answer.downcase == "y"
  puts "Name?"
    stu_name = gets.chomp
  puts "Class?"
    stu_class = gets.chomp
  roster << {:name => stu_name, :ga_class => stu_class}
end
end

puts "Here is the roster:"
roster.each do |student|
puts "#{student[:name]} - #{student[:ga_class]}"
end
