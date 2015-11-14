ticket = {}


puts "Which artist do you want to see?"
ticket[:artist] = gets.chomp

puts "Where do you want to see the artist?"
ticket[:venue] = gets.chomp

puts "Do you want General Admission or VIP?"
ticket[:ticket_type] = gets.chomp

puts "Here are your ticket details:"
puts "Artist: #{ticket[:artist]}, Venue: #{ticket[:venue]}, Ticket Type: #{ticket[:ticket_type]}"
