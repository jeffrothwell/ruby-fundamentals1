dist = 0

loop do
  puts "Would you like to walk, run or go home? (enter only \"walk\"/\"run\"/\"go home\" please)"

  mode = gets.chomp

  if mode == "walk"
    dist += 1
  elsif mode == "run"
    dist += 5
  end

  puts "Distance from home is #{dist}"

  break if mode == "go home"

end
