class FashionShow

	def initialize
		@catalog = {}
		@model = name
		@designer = designer
		@outfit = wearing
		@rank = rank

	end

	def enter_runway
		"Now entering the walk way is #{model} wearing #{designer}"
	end

	def exit_runway
		"#{model} exits runway."
	end

	def display
	end

	def top_three
	end

end

=begin upon intialization of Fashion show class user is prompted to enter fashion show.
if yes model enters.
user is prompted for ranking
model exits
loop through hash of 5 models. 
prompt user if theyd like to see a display of all models or top three
return display of all models or top three
=end

model_lineup = {
	"Gisele Bundchen" => {designer: "", outfit: "", rank: ""},
	"Naomi Campbel" => {designer: "", outfit: "", rank: ""}
	"Kate Moss" => {designer: "", outfit: "", rank: ""}
	"Adrian Lima" => {designer: "", outfit: "", rank: ""}
	"Cindy Crawford" => {designer: "", outfit: "", rank: ""}
}