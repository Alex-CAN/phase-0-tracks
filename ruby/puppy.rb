# establishing common characteristics and applying them to a puppy module to be included in the indiviual species clases
module Puppy
	def bark
		 "BARK"
	end
	def run
		 "I'm running!"
	end
end


# <<<<<<<<<<<<<<<<<<<<<<< SPECIES NAME >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# pomeranian

# <<<<<<<<<<<<<<<<<<<<<<<<< Characteristics >>>>>>>>>>>>>>>>>>>>>>>>>>>

# hair length = poofy - extremely poofy
# color = varies
# friendly? = NEVER
# size = small - extremely small 

# <<<<<<<<<<<<<<<<<<<<<<< Behavior >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# bark
# bark
# more barking
# run
# beg
# simultaneously be the most annoying and adorable thing in the room

class Palmeranian
	def initialize
		puts "bark bark bark..."
	end
	include Puppy
end

chai = Palmeranian.new
cavi = Palmeranian.new
coco = Palmeranian.new

puts coco.class
puts cavi == chai
puts chai.instance_of?(Array)
puts chai.instance_of?(Palmeranian)

puts cavi.run
puts coco.bark

puts
puts "==================================================================================================================="
puts

# <<<<<<<<<<<<<<<<<<<<<<< SPECIES NAME >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# husky

# <<<<<<<<<<<<<<<<<<<<<<<<< Characteristics >>>>>>>>>>>>>>>>>>>>>>>>>>>

# hair length = short - poofy
# color = varies
# friendly? = varies
# size = medium - large

# <<<<<<<<<<<<<<<<<<<<<<< Behavior >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# bark
# guard
# run
# play


class Husky
	include Puppy
	def play(toy)
		"Im playing with #{toy}"
	end
end

shea = Husky.new

puts shea.class
puts shea.bark
puts shea.run
puts shea.play("ball")