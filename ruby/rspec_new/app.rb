# module Printer
# 	# def print(application)		
# 	# 	application.each do |applicant, info|
# 	# 	puts "*********************************************************" 
# 	# 	puts "HOME DECOR APPLICATION:"
# 	# 	puts "#{applicant}:"
# 	# 	info.each do |k,v| 
# 	# 		puts "-----------"
# 	# 		puts "#{k} : #{v}"
# 	# 		end
# 	# 	end
# 	# end
# end

class HomeDecor
	 def initialize#(applicants)#(name, address, email, phone, fave_shade_of_blue, wallpaper_prefernces, ombre)
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
	# def do
	# 	print
	# end 
	def print(applicants)	
		applicants.each do |applicant, info|
		puts "*********************************************************" 
		puts "HOME DECOR APPLICATION:"
		puts "#{applicant}:"
		info.each do |k,v| 
			puts "-----------"
			puts "#{k} : #{v}"
			end
		end
	end

	# include Printer
	# def update(applicant_hash, field, new_info)
	# 	applicant_hash[name] =name
	# end

# include Printer
end

new_applicants = HomeDecor.new
var = new_applicants.print({"Applicant: 72: Man" => {"Address" => "mail@mail"}})
p var