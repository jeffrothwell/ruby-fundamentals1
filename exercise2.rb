# I think for the first step it wasn't expecting string interpolation, so here it is"
puts 55 * 0.18
puts "you should tip $" + (55 * 0.18).to_s + " on this meal"

# and here with string interpolation
# puts "you should tip $#{55 * 0.18} on this meal"

puts "45628 x 7839 is equal to #{45628 * 7839}, Huzzah!"

puts (10 < 20 && 30 < 20) || !(10 == 11)
