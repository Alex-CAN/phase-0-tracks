application = Hash.new

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

index = index + 1
puts "Would you like to apply to Home Decor?(y/n)?"
x = gets.chomp
end
end

p application


p 'Would you like to update any applicant info?(y/n)'
change = gets.chomp
	
	if change =='y'
		p 'which applicant?'
			applicant_name = gets.chomp
		p 'Put in the number of the  field you would like to adjust?'
		p '(name, address, email, Phone Number, Favorite shade of blue, wallpaper prefernces, Thoughts on ombre)'
		field = gets.chomp
		p 'New info!'
		new_info = gets.chomp

		application[applicant_name][field] = new_info
		p application
	else
		puts "Ok, Bye"
	end 


