my_name = "Jeff"

puts "Tell me your name, if you don't mind"

user_name = gets.chomp

if my_name == user_name
  puts "Whaaaaaat, we have the same name!"
else
  puts "Cool name #{user_name}, but mine is cooler"
end
