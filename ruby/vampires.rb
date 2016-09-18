<<<<<<< HEAD
#Logic	

class Vampire_app
	attr_reader :name, :age, :bread, :insurance
	def initialize (name, age, garlic_bread, insurance)
		@name = name
		@age = age
		@bread = garlic_bread
		@insurance = insurance
		p "Werewolf_Inc app initialized..."
	end

	def call
		vampires
	end

	def vampires		
		case
		when age >= 122 && bread == "no" && insurance == "no"
			puts "*************************"
			p "Almost certainly a vampire."
		when age >= 122 && (bread == "no" || insurance == "no")
			puts "***************"
			p "Probably a vampire."
		when age <= 122 && bread == "yes" && insurance == "yes"
			puts "*************************"
			p "Most likely not a vampire"
		when age <= 122 && (bread == "yes" || insurance == "yes")
			puts "*************************"
			p "Probably not a vampire."	
		else
			p "idk what you are"
		end
	end
		# puts "********************************************"
		# puts "If you have any allergies list em!"
		# 	allergies = gets.chomp

		# until allergies =="done"
		# 	puts "anymore allergies? if not put done"
		# 		allergies = gets.chomp
		# 	if allergies == "sunshine"
		# 		puts "def a vampire"
		# 	elsif allergies == "done"
		# 		puts "great"
		# 	end	
		# end
	# end
end
# driver code
puts "How many employees?"
x=gets.chomp.to_i
applicants = {}


if x > 0
	until x == 0 
		allergy_list = []
		puts "What is your name?"
		name=gets.chomp
		puts "Hello #{name} How old are you in years?"
		age=gets.chomp.to_i
		puts "Our company cafeteria serves garlic te garlic. Should we order some for you?yes or no?"
		bread=gets.chomp.downcase
		puts "Would you like to enroll in the company’s health insurance?yes or no?"
		insurance=gets.chomp.downcase
		puts "********************************************"
		puts "If you have any allergies list em!"
			allergies = gets.chomp
			allergy_list << allergies

		until allergies =="done"
			puts "anymore allergies? if not put done"
				allergies = gets.chomp
				allergy_list << allergies
			if allergies == "sunshine"
				allergy_list << allergies
				puts "def a vampire"
			elsif allergies == "done"
				puts "great"
			end	
		end
		werewolf_inc_app = Vampire_app.new(name, age, bread, insurance)
		applicants["#{name}"] = {werewolf_inc_app => werewolf_inc_app.call, allergies: allergy_list}
		x -= 1
	end
end
puts
puts
p applicants
puts
puts
good_applicants = {}
bad_applicants ={}

applicants.each_with_index do |app, index|
p "Applicant #{index}: #{app}"
=======
puts "How many employees?"
x=gets.chomp.to_i	

def vampires
	puts "What is your name?"
		name=gets.chomp
	puts "Hello #{name} How old are you in years?"
		age=gets.chomp.to_i
	puts "Our company cafeteria serves garlic te garlic. Should we order some for you?yes or no?"
		bread=gets.chomp.downcase
	puts "Would you like to enroll in the company’s health insurance?yes or no?"
		insurance=gets.chomp.downcase
				
	puts case
	when age >= 122 && bread == "no" && insurance == "no"
		"Almost certainly a vampire."
	when age >= 122 && (bread == "no" || insurance == "no")
		"Probably a vampire."
	when age <= 122 && bread == "yes" && insurance == "yes"
		"Most likely not a vampire"
	when age <= 122 && (bread == "yes" || insurance == "yes")
		"Probably not a vampire."	
	else
		"idk what you are"
	end

	puts "one last question! Do you have any allergies?"
		allergies = gets.chomp
		if allergies == "sunshine"
			puts "def a vampire"
		elsif allergies == "done"
			puts "great"
		else 
			puts "anymore allergies? if not put done"
			allergies = gets.chomp
	end
end

if x > 0
		until x == 0 
			print vampires
		x -= 1
end
>>>>>>> master
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."