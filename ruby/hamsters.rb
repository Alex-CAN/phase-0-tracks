<<<<<<< HEAD
class Hamster
	attr_reader = :name, :color, :volume, :age
	def initialize(name, fur_color, volume, age)
		@name = name
		@color = fur_color
		@volume = volume
		@age = age
		p "Initialzing Hamster Mode..."
	end
	def hamster
		hello
		hamster_age
		hamster_volume
		fur
	end

	def hello
		p "======================"
		p "Hello #{@name}"
		p "======================"
	end
	def hamster_age
		p "Wow #{@name} is #{@age} years old!"
		p "======================"	
	end
	def hamster_volume
		quiet = "You've got quiet one"
		loud = "You've got a loud one"

		if @volume >= 6
			p loud
			p "====================="
		else
			p quiet
			p "===================="
		end
	end

	def fur
		"#{@color} is a pretty color!"

	end

end

=======
#prompts a user for info on their hamsters "name", "volume" level, "fur" color, and "age".
>>>>>>> master
puts "What's your Hamster's name?"
name = gets.chomp
puts "On a scale of one to 10 how lound is your hamster?"
volume = gets.chomp.to_i
puts "What color is #{name}'s fur"
fur = gets.chomp
puts "How old is #{name}"
<<<<<<< HEAD
age = gets.chomp.to_i

new_hamster = Hamster.new(name, fur, volume, age)
p new_hamster.hamster

=======
age = gets.chomp
#gives variable "age" the value of nil if user leaves it blank
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
>>>>>>> master
