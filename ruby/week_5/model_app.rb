class FashionShow

	def initialize
		@catalog = {}
		@model_lineup = model_lineup = {
			"Gisele Bundchen" => {designer: "Versace", outfit: "Little Black Dress", rank: ""},
			"Naomi Campbel" => {designer: "Vouge", outfit: "Silver Gown", rank: ""},
			"Kate Moss" => {designer: "Jamie Hince", outfit: "Blue Frock", rank: ""},
			"Adrian Lima" => {designer: "Christian Lacroix", outfit: "Red n Black pin stripe", rank: ""},
			"Cindy Crawford" => {designer: "Ann Klenn", outfit: "Orange Sport Frill", rank: ""}
		}
		@walking = true
	end

	def call
		 catwalk
	end
	# method introduces <model> and <designer> to runway
	def enter_runway
		if @walking
			@model_lineup.each do |model, info|
				puts "Now entering the walk way is #{model} wearing #{info.values_at(:outfit)} by #{info.values_at(:designer)}"
				puts "Rank #{model}."
				rank = gets.chomp
				info[:rank] = rank
			end
		end
	end
	def rank_model
		@model_lineup
	end

	# method {enter_runway}. Presents <model>s <outfit>. logs <model><designer><outfit><rank> to catalog. {exit_runway}. 
	def catwalk
		@walking
		enter_runway

		# @model_lineup.each {|model, info| p "#{key} , #{info[0]}, info[1]"}
	end
	# method exits <model> from runway
	def exit_runway
		"#{model} exits runway."
	end

	def display
	end
	#iterate through array to sort lowest to highest rank. return last three aka highest rank.
	def top_three
	end

end


new_show = FashionShow.new
new_show.call

=begin (1)upon intialization of Fashion show class user is prompted to enter fashion show.
(2)if yes model enters.
(3)user is prompted for ranking
(4)model exits
(5)loop through hash of 5 models. 
(6)prompt user if theyd like to see a display of all models or top three
(7)return display of all models or top three
=end



# (1)
# puts "Welcome to My Hashion Show (All puns intended)! Would you like to enter?(y/n)"
# enter = gets.chomp.downcase
# #(2)
# 	if enter == "y"
# 		walking = true

# 	end
