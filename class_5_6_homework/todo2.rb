tasks = []
i = 0
continue = "n"

while continue.downcase == "n"
  puts "What task would you like to add today?"
  input = gets.chomp

  tasks[i] = input
  i += 1

  puts "Is that all (Y/N)?"
  continue = gets.chomp

end

sleep 1

puts "Time to get to work!"

tasks.each do |task|
  sleep 1
  status = ""
  puts "Work on this now: #{task}"
  sleep 1
  while status.downcase !="done"
    puts "Type 'done' when you're finished"
    status = gets.chomp
    if status.downcase == "done"
      puts "Nice!"
    end
  end
end
