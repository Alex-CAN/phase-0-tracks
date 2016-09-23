# y  =true
# n = false
# model_application = {name: "Tyra Banks", dob: "12/13/69", address: "1234 st", height:"6ft 3in", weight: "125lbs" }
# model_application[:hired] = y
# p model_application

# model_application[:name] + model_application[:dob]
# puts model_application[:name] + model_application[:dob]
# puts model_application.fetch(:name)


model_application = {
applicants: {
		"" => { dob: "", address: "", phone: "", height:"", weight: "" }
	}
}

def new_applicant(name, dob, address, phone, height, weight)
	model_application[:applicants][name][:dob] = 
	model_application[:applicants][name][:address] =
	model_application[:applicants][name][:phone] =
	model_application[:applicants][name][:height] = 
	model_application[:applicants][name][:weight] =



end