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
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."