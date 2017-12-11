dist = 0
energy = 10

loop do
  puts "Would you like to walk, run or go home? (enter only \"walk\"/\"run\"/\"go home\" please)"

  mode = gets.chomp

  while mode != "walk" && mode != "run" && mode != "go home" && mode != "home"
    puts "Invalid input, try again (only \"walk\"/\"run\"/\"go home\" please)"
    mode = gets.chomp
  end

  while mode == "run" && energy < 3
    puts "You're too tired to run right now, silly!\n Choose either walk or go home"
    mode = gets.chomp
  end

  if mode == "walk"
    dist += 1
    energy += 1
  elsif mode == "run"
    dist += 5
    energy -= 3
  end

  puts "Distance from home is #{dist}\nEnergy level is #{energy}"

  break if mode == "go home" || mode == "home"

end

puts "Thanks for playing, now go take a shower!"
