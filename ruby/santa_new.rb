class Santa
	def initalize
		puts "Initializing Santa instance..."
	end

	def speak
		"Ho, ho, ho! Haaaaapy holidays!"	
	end

	def eat_milk_and_cookies(cookie)
		"That was a good #{cookie} cookie!"
	end
end

saint_nicholas = Santa.new

puts saint_nicholas.speak
puts
puts saint_nicholas.eat_milk_and_cookies("peanut butter")