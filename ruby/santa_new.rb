class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(140)
		puts "Initializing Santa instance..."
	end

	def speak
		"Ho, ho, ho! Haaaaapy holidays!"	
	end

	def eat_milk_and_cookies(cookie)
		"That was a good #{cookie} cookie!"
	end

	def celebrate_birthday
		puts "HAPPY BIRTHDAY SANTA YOU ARE NOW #{@age+1}"
		@age = @age + 1

	end
	def get_mad_at(bad_reindeer)
		@reindeer_ranking.delete(bad_reindeer)
		@reindeer_ranking << bad_reindeer
		@reindeer_ranking
	end
end



#Trying out different driver codes

saint_nicholas = Santa.new("male", "irish")
p saint_nicholas
p saint_nicholas.age
p saint_nicholas.ethnicity
p saint_nicholas.celebrate_birthday
p saint_nicholas.celebrate_birthday
p saint_nicholas.get_mad_at("Vixen")
saint_nicholas.gender = "femish"

p saint_nicholas

# puts
# puts saint_nicholas.speak
# puts
# puts saint_nicholas.eat_milk_and_cookies("peanut butter")

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# puts
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# puts
# p santas[0]

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>.

puts
more_santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
100.times do |i|
  more_santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end
puts
more_santas.length.times { |x| puts "Santa #{x + 1} : #{more_santas[x]} : #{more_santas[x].gender} #{more_santas[x].ethnicity}"}

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..

# santas = []
# genders = []
# ethnicities = []

# puts "How many santas would you like to register?"
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
# 		end
# 		p santas
# 	end


