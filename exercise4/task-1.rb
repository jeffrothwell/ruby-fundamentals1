puts "Give me a number, any number, and I shall judge its size!"

#   needed the to_i method here, it gave me a comparison error for string vs number,
#   which makes sense as gets means "get string"
user_num = gets.chomp.to_i

if user_num >= 100
  puts "that's a big number!"
else
  puts "why not dream a little bigger?"
end
