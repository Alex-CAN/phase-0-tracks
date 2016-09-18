=begin class app
def in {name, add, em, phonnum, faveblu, wall, om// applicationhash}
def print aplicationhash
def update key
=end

class Home_Decor
	def initialize(name, address, email, phone, fave_shade_of_blue, wallpaper_prefernces, ombre)
		@name = name
		@address =address
		@email =email
		@phone = phone
		@fave_shade_of_blue = fave_shade_of_blue
		@wallpaper_prefernces =wallpaper_prefernces
		@ombre = ombre
		@applicants = {}
	end
end


#create empty application hash
application = Hash.new
#Prompt user for application info and and it to the application hash
=begin empty applicant hash
loop: submit new applicant(y/n)
until gets = n
	get user input
	initialize aplicant class
=end

puts "Would you like to apply to Home Decor?(y/n)?"
x = gets.chomp

until x == "n"

p 'Welcome New Applicant! Please provide us with some basic info'
p 'Name:'
	:name = gets.chomp
	application[:name] = []
p 'Address:'
	:address = gets.chomp
	application[:name][:address]
p 'Email:'
	application[:email][i] = gets.chomp
p 'Phone number:'
	application[:phone][i] = gets.chomp
p 'What is your favorite shade of blue?'
	application[:fave_shade_of_blue][i] = gets.chomp
p "What is you're wallpaper prefernces?"
	application[:wallpaper_prefernces][i] = gets.chomp
p 'What do you think of ombre?'
	application[:Ombre_is][i] = gets.chomp

new_applicant = Home_Decor.new(:name, :address, :email, :phone, :fave_shade_of_blue, :wallpaper_prefernces, :Ombre_is)
puts "Would you like to apply to Home Decor?(y/n)?"
x = gets.chomp

i =+ 1
end



=begin
each_with_index
push "apphash#{index}" =[#{apphash[index]}]  to applicanthash
p aplicanthash
=end
# #printing hash keys and values
# p application.keys

# p application.values
# # print hash
# p application

#give user opportunity to update a key
puts "HOME DECOR APPLICATION:"
application.each {|info, input | 
	puts " #{info}: #{input}"
}

p 'Would you like to change any of your answers?'
change = gets.chomp

if change =='yes'
p 'Which field would you like to adjust?'
key = gets.chomp.to_sym
p 'new info'
new_value = gets.chomp
application[key] = new_value
p application
else
puts "Ok, Bye #{application[:name]}"
end 
