class Santa
	def initialize(gender, ethnicity)
		p "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age = 0
	end
	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie) 
		p"That was a good #{cookie} cookie!"
	end
end

st_Nick = Santa.new("male", "white")

st_Nick.speak
st_Nick.eat_milk_and_cookies("sugar")


def santa_app
santas = []
genders = []
ethnicities = []
p "hello Santa what's your gender?"
	gender = gets.chomp
	genders << gender
p "hello Santa what's your ethnicity?"
	ethnicity = gets.chomp
	ethnicities << ethnicity

genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

santas

end

p "How many santas would you like to register?"
	num = gets.chomp.to_i
if num > 0
	until num == 0
		p santa_app
		num -= 1
	end
end
=======
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

p santas
>>>>>>> e11637873d0a9572b97d1423c51ee65c027494fe
