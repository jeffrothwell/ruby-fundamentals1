# start them off with some arbitrary amount of energy at distance zero
dist = 0
energy = 10
nstep = 0

loop do
  # instructions for the user and get their input, and chomp off that newline
  if nstep < 4
    #only full instructions first four times
    puts "Would you like to walk, run or go home? (enter only \"walk\"/\"run\"/\"go home\" please)"
  elsif nstep == 4
    #hint at some other actions
    puts "You're really workin\' it!\nkeep going or try some other words like hop or twirl"
  elsif energy >= 16
    puts "Whoa, you've got so much energy you could fly - maybe it's time to try"
  elsif dist >= 50 && energy < 10
    #some fun stuff if they've been going for a while
    puts "Easy there, Forrest. don't give yourself a heart attack, you're a long way from home"
  elsif dist >= 50 && energy > 20
    #you'd have to play this game a long time to build up these stats
    puts "You've been exercising for a long time\nand probably twirling a lot\nI'm bored. Just go home already"
  else
    puts "Walk, run or go home?"
  end

  mode = gets.chomp

# this handles invalid input, I modified it to allow them to enter home and still work the same as go home
# I don't tell them home is ok to type, but would look silly if that returned an error message
  while mode != "walk" && mode != "run" && mode != "go home" && mode != "home" && mode != "hop" && mode != "twirl" && mode != "fly"
    puts "Invalid input, try again (only \"walk\"/\"run\"/\"go home\" please)"
    mode = gets.chomp
  end

# at this point we know we have valid input, let's first handle the case where they want to run, but energy level is too low
# for them to run, I decided running takes 3 energy away, so that's my cutoff for the condition, asks them to pick something else
  while mode == "run" && energy < 3
    puts "You're too tired to run right now, silly!\n Choose either walk or go home"
    mode = gets.chomp
  end

# some other jokes I threw in for fun
  while mode == "hop" && energy < 2
    puts "Build up some bop in your crop before you try to hop!\n Choose either walk or go home"
    mode = gets.chomp
  end

  while mode == "fly" && energy < 14
    puts "You're learning to fly, but you ain't got wings!\nNeed more energy there, Tom Petty...\n Choose another mode of transport"
    mode = gets.chomp
  end

#super simple walk condition, walking is always ok, so off we go
  if mode == "walk"
    dist += 1
    energy += 1

# at this point if none of the above conditions has been met,
# they've typed run or home, or some other easter egg string I've hidden in here
# and we know they have enough energy to run, walk or fly if they want to, tested and corrected above
  elsif mode == "run"
    dist += 5
    energy -= 3
  elsif mode == "hop"
    dist += 1
    energy -= 2
    puts "Let's go to the hop!"
  elsif mode == "twirl"
    energy += 3
    puts "All this twirling is making me dizzy...\nAnd I love it!"
  elsif mode == "fly"
    dist += 20
    energy -= 14
    puts "Fly me to the moon let me play among the stars\nYou are now tired and far from home"
  end

# even if they want to go home, I still want to reprint for them their distance and energy
  puts "Distance from home is #{dist}\nEnergy level is #{energy}"

#get out of the loop if they type go home or just home
  break if mode == "go home" || mode == "home"
# increase nstep
  nstep += 1
end

# at this point they would have selected home, it's the only way out of the loop
# they should probably take a shower.  winky face...
if dist < 20
  puts "Thanks for playing, now take a shower!\n"
else
  puts "Have fun getting home, we ain't in Kansas no more, Dorothy!"
end
