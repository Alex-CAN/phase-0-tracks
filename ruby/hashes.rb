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
class HomeDecor
	 def initialize#(name, address, email, phone, fave_shade_of_blue, wallpaper_prefernces, ombre)
		# @name = name
		# @address =address
		# @email =email
		# @phone = phone
		# @fave_shade_of_blue = fave_shade_of_blue
		# @wallpaper_prefernces =wallpaper_prefernces
		# @ombre = ombre
		# @applicants = applicants
		p "applicant initialization..."
	end
	include Printer
	# def update(applicant_hash, field, new_info)
	# 	applicant_hash[name] =name
	# end
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

new_applicant = HomeDecor.new#(name, address, email, phone, fave_shade_of_blue, wallpaper_prefernces, ombre_is)
index = index + 1
puts "Would you like to apply to Home Decor?(y/n)?"
x = gets.chomp
end
end
puts
p application
puts
p new_applicant
puts
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


# p 'Would you like to update any applicant info?(y/n)'
# change = gets.chomp
# 	if change =='y'
# 	p 'which applicant?'
# 		name = gets.chomp
# 	p 'Put in the number of the  field you would like to adjust?'
# 	p '(#1.name, #2.address, #3.email, #4.Phone Number, #5.Favorite shade of blue, #6.wallpaper prefernces, #7.Thoughts on ombre)'
# 	field_num = gets.chomp.to_i
# 	p 'New info!'
# 	new_info = gets.chomp

# 	if field_num == 1
# 		field = "Applicant: #{index}: #{name}"
# 	new_applicant




	# application[key] = new_value
	# p application
	# else
	# puts "Ok, Bye #{application[name]}"
	# end 
