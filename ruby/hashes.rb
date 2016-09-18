=begin class app
def in {name, add, em, phonnum, faveblu, wall, om// applicationhash}
def print aplicationhash
def update key
=end
module Printer
	def print(application)		
		application.each do |applicant, info|
		puts "*********************************************************" 
		puts "HOME DECOR APPLICATION:"
		puts "#{applicant}:"
		info.each do |k,v| 
			puts "-----------"
			puts "#{k} : #{v}"
			end
		end
	end

	# def update_info(application, name, field, new_info)
		
	# 	application[name][field] = new_info
	# 	p application
	# 	else
	# 	puts "Ok, Bye #{application[name]}"
	# 	end 

	# end
end
class Home_Decor
	 def initialize#(name, address, email, phone, fave_shade_of_blue, wallpaper_prefernces, ombre)
		# @name = name
		# @address =address
		# @email =email
		# @phone = phone
		# @fave_shade_of_blue = fave_shade_of_blue
		# @wallpaper_prefernces =wallpaper_prefernces
		# @ombre = ombre
		# # @applicants = applicants
		p "applicant initialization..."
	end
	include Printer
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
index = 0
if index < 1

until x == "n"

p 'Welcome New Applicant! Please provide us with some basic info'
p 'Name:'
	name = gets.chomp	
	application["Applicant: #{index}: #{name}"] = {}
p 'Address:'
	address = gets.chomp
	application["Applicant: #{index}: #{name}"]["Address"] = address
p 'Email:'
	email = gets.chomp
	application["Applicant: #{index}: #{name}"]["Email"] = email
p 'Phone number:'
	phone = gets.chomp
	application["Applicant: #{index}: #{name}"]["Phone number"] = phone
p 'What is your favorite shade of blue?'
	fave_shade_of_blue = gets.chomp
	application["Applicant: #{index}: #{name}"]["favorite shade of blue"] = fave_shade_of_blue
p "What is you're wallpaper prefernces?"
	wallpaper_prefernces = gets.chomp
	application["Applicant: #{index}: #{name}"]["wallpaper prefernces"]  = wallpaper_prefernces
p 'What do you think of ombre?'
	ombre_is = gets.chomp
	application["Applicant: #{index}: #{name}"]["Thoughts on ombre..."] = ombre_is

new_applicant = Home_Decor.new #(name, address, email, phone, fave_shade_of_blue, wallpaper_prefernces, ombre_is)
index = index + 1
puts "Would you like to apply to Home Decor?(y/n)?"
x = gets.chomp
end
end
p application
new_applicant.print(application)




=begin
each_with_index
push "apphash#{index}" =[#{apphash[index]}]  to applicanthash
p aplicanthash
# #printing hash keys and values
# p application.keys

# p application.values
# # print hash

=end
# p application
=begin
#give user opportunity to update a key
=end


# p 'Would you like to change any of your answers?'
# change = gets.chomp

# if change =='yes'
# p 'Which field would you like to adjust?'
# key = gets.chomp.to_sym
# p 'new info'
# new_value = gets.chomp
# application[key] = new_value
# p application
# else
# puts "Ok, Bye #{application[name]}"
# end 
