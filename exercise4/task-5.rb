puts "Pick a number, any number, if you guess the one I'm thinking, you win!"

secret_number = 25

user_number = gets.to_i

if secret_number == user_number
  puts "You win!"
elsif (secret_number - user_number).abs == 1
  puts "So Close"
else
  puts "Try again"
end
