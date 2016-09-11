# require 'SecureRandom'

# p SecureRandom.class

# unique_identifier = SecureRandom.uuid

# p unique_identifier

# p SecureRandom.base64(2)

# p SecureRandom.singleton_methods

# p Math.singleton_methods

module Shout
	def self.yell_angrily(words)
    words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words + "!!!" + ":)"
	end

	def self.bipolar
		p "I'm so mad about..."
		p self.yell_angrily("People suck")
		p "I'm so happy about..."
		p self.yell_happily("Animals rule")
	end
	self.bipolar
end


 p Shout