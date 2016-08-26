puts "What's your Hamster's name?"
name = gets.chomp
puts "On a scale of one to 10 how lound is your hamster?"
volume = gets.chomp.to_i

puts "What color is #{name}'s fur"
fur = gets.chomp
puts "How old is #{name}"
age = gets.chomp

if age.length == 0
	age = nil
end

puts "Hello #{name}"
if volume >= 6
	puts "You've got loud one"
else
	puts "You've got a quiet one"
end
puts "#{fur} is a pretty color!"

puts "your pet is #{age} years old?"
