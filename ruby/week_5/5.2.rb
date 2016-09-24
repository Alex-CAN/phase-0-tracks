# y  =true
# n = false
# model_application = {name: "Tyra Banks", dob: "12/13/69", address: "1234 st", height:"6ft 3in", weight: "125lbs" }
# model_application[:hired] = y
# p model_application

# model_application[:name] + model_application[:dob]
# puts model_application[:name] + model_application[:dob]
# puts model_application.fetch(:name)


# model_application = {
# applicants: {
# 		"" => { dob: "", address: "", phone: "", height:"", weight: "" }
# 	}
# }


def new_applicant(hash, model,dob, address, phone, height, weight,hired)	
	hash[:applicants] =Hash.new
	hash[:applicants][model] =Hash.new
	hash[:applicants][model][:dob] = dob
	hash[:applicants][model][:address] = address
	hash[:applicants][model][:phone] = phone
	hash[:applicants][model][:height] = height
	hash[:applicants][model][:weight] =weight
	hash[:applicants][model][:hired] = hired
	hash
end

#display applicant

def display(application)
	application.each do |key, value|
	puts "========APPLICANT: #{application[:applicants][0]}=========="
	puts "#{value}"
	end

end
#update applicant info hired 
#delete applicant
model_application = Hash.new

model = "Tyra Banks"
dob = "12/13/69" 
address = "1234 st"
phone = "555-1243"
height = "6ft 3in"
weight = "125lbs" 
hired = "pending"

new_applicant(model_application, model, dob, address,phone, height,weight,hired)
p display(model_application)