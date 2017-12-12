# start them off with some arbitrary amount of energy at distance zero
dist = 0
energy = 10

loop do
  # instructions for the user and get their input, and chomp off that newline
  puts "Would you like to walk, run or go home? (enter only \"walk\"/\"run\"/\"go home\" please)"

  mode = gets.chomp

# this handles invalid input, I modified it to allow them to enter home and still work the same as go home
# I don't tell them home is ok to type, but would look silly if that returned an error message
  while mode != "walk" && mode != "run" && mode != "go home" && mode != "home"
    puts "Invalid input, try again (only \"walk\"/\"run\"/\"go home\" please)"
    mode = gets.chomp
  end

# at this point we know we have valid input, let's first handle the case where they want to run, but energy level is too low
# for them to run, I decided running takes 3 energy away, so that's my cutoff for the condition, asks them to pick something else
  while mode == "run" && energy < 3
    puts "You're too tired to run right now, silly!\n Choose either walk or go home"
    mode = gets.chomp
  end

#super simple walk condition, walking is always ok, so off we go
  if mode == "walk"
    dist += 1
    energy += 1

# at this point if none of the above conditions has been met, they've typed run or home
# and we know they have enough energy to run, tested and corrected above
  elsif mode == "run"
    dist += 5
    energy -= 3
  end

# even if they want to go home, I still want to reprint for them their distance and energy
  puts "Distance from home is #{dist}\nEnergy level is #{energy}"

#get out of the loop if they type go home or just home
  break if mode == "go home" || mode == "home"

end

# at this point they would have selected home, it's the only way out of the loop
# they should probably take a shower.  winky face...
puts "Thanks for playing, now go home and take a shower!\n"
