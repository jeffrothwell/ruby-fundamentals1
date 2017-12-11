dist = 0

loop do
  puts "Would you like to walk or run? (enter only \"walk\"/\"run\" please)"

  mode = gets.chomp

  if mode == "walk"
    dist += 1
  elsif mode == "run"
    dist += 5
  end

  puts "Distance from home is #{dist}"

end
