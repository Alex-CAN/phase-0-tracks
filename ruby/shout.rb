# require 'SecureRandom'

# p SecureRandom.class

# unique_identifier = SecureRandom.uuid

# p unique_identifier

# p SecureRandom.base64(2)

# p SecureRandom.singleton_methods

# p Math.singleton_methods

# module Shout
# 	def self.yell_angrily(words)
#     words + "!!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		words + "!!!" + ":)"
# 	end

# 	def self.bipolar
# 		p "I'm so mad about..."
# 		p self.yell_angrily("People suck")
# 		p "I'm so happy about..."
# 		p self.yell_happily("Animals rule")
# 	end
# 	self.bipolar
# end


#  p Shout

module Shout
	def yell_angry(words)
		words + "!!!" + "=("
	end

	def yell_happy(words)
		words + "!!!" + "=)"
	end
end

class Crocket
	include Shout
end

class JTHM
	include Shout
end

class Mom
	include Shout
end

class Dad
	include Shout
end
crocket = Crocket.new
p crocket.yell_angry("People Suck")
jthm = JTHM.new
p jthm.yell_happy("Suck people")

mom = Mom.new
p mom.yell_angry("clean your room")

dad = Dad.new
p dad.yell_happy("i love you")
