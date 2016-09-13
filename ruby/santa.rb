class Santa
	attr_reader :age, :ethnicity, :gender
	attr_accessor :gender
	@genders = ["agender", "female", "bigender", "male", "transgender", "gender fluid", "N/A"]
	@ethnicities = ["black", "Latino", "white", "Japanese-African", "Panamanian", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

	def initialize(gender, ethnicity)
		p "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		# @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	santas_list = []
	3.times  do santas_list << 	 Santa.new(@genders.sample, @ethnicities.sample) 
				p ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SANTA <<<<<<<<<<<<<<<<<<<<<<<<<<<<<< "
				p santas_list
		end


	 

	 
	
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# def gender= (gender_change)
	# 	@gender = gender_change
	# end

	def celebrate_birthday
		@age =+ 1
		p '**********************************************************************************************************************'
		p "HAPPY BIRTHDAY !!! YOU ARE NOW #{@age} !!! HAPPY BIRTHDAY !!!! YOU ARE NOW #{@age} !!! HAPPY BIRTHDAY !!!! YOU ARE NOW #{@age} !!! HAPPY"
		p '*********************************************************************************************************************'
	end

	# def get_mad(bad_reindeer)
	# 	p "Bad #{bad_reindeer}, to the back of the line with you!"
	# 	@reindeer_ranking.delete(bad_reindeer)
	# 	@reindeer_ranking << bad_reindeer
	# 	p @reindeer_ranking
	# end

	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie) 
		p"That was a good #{cookie} cookie!"
	end


end
# p '---------------------------------------------------------------------------------------------------------------------'
# st_Nick = Santa.new("male", "white")
# st_Nick.age
# st_Nick.ethnicity

# st_Nick.speak
# st_Nick.eat_milk_and_cookies("sugar")
# st_Nick.celebrate_birthday
# st_Nick.get_mad("Vixen")
# st_Nick.gender = "female"
# p st_Nick
# p '---------------------------------------------------------------------------------------------------------------------'

# def santa_app
# santas = []
# genders = []
# ethnicities = []

# p "How many santas would you like to register?"
# 	num = gets.chomp.to_i
# 	if num > 0
# 		until num == 0
# 		p "hello Santa what's your gender?"
# 		gender = gets.chomp
# 		genders << gender
# 		p "hello Santa what's your ethnicity?"
# 		ethnicity = gets.chomp
# 		ethnicities << ethnicity

# 		genders.length.times do |i|
# 			p '---------------------------------------------------------------------------------------------------------------------'
#   			p '---------------------------------------------------------------------------------------------------------------------'
#   		santas << Santa.new(genders[i], ethnicities[i])
# 		end
# 		num -= 1
# 	end
# 		santas
# 	end
# end

# p santa_app

