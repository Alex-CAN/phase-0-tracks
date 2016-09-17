#create empty application hash
application = Hash.new
#Prompt user for application info and and it to the application hash
p 'Welcome New Applicant! Please provide us with some basic info'
p 'Name:'
	application[:name] = gets.chomp
p 'Address:'
	application[:address] = gets.chomp
p 'Email:'
	application[:email] = gets.chomp
p 'Phone number:'
	application[:phone] = gets.chomp
p 'What is your favorite shade of blue?'
	application[:fave_shade_of_blue] = gets.chomp
p "What is you're wallpaper prefernces?"
	application[:wallpaper_prefernces] = gets.chomp
p 'What do you think of ombre?'
	application[:Ombre_is] = gets.chomp

#printing hash keys and values
p application.keys

p application.values
# print hash
p application

#give user opportunity to update a key
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
p 'Ok, Bye #{:name}'
end 