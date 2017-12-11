puts "How old are you"

user_age = gets.chomp.to_i

if user_age > 105
  puts "I'm not sure I believe you"
elsif user_age > 33
  puts "you are #{user_age - 33} years older than me"
elsif user_age < 33
  puts "you are #{33 - user_age} years younger than me"
else
  puts "Cool, we're the same age!\nThis is getting spooky, I'm gonna slowly back away now."
end
