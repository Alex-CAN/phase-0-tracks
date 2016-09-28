class Game
	attr_accessor :secret_word

	def initialize(secret_word)
		@secret_word = secret_word
	end
	def encrypt
		word = secret_word.chars
		encrypted_word = []
		word.each do|let| 
			encrypted_word << "-"
		end
		return encrypted_word.join
	end
	def dash(let, guess_let)
		if let != guess_let
			"-"
		else
			return let
		end
	end

	def decrypt(guess_letter)
		arr = []
		word = secret_word.chars
		word.each_index do |ind|
			arr << dash(word[ind],guess_letter)
			# if letter != guess_letter
			# 	letter.gsub!(/["#{letter}"]/, "-")
			# end
		end
		return arr.join
	end

	def guess_check(guess)
		if guess == secret_word
			"WINNER"
		else
			return "LOSER"
		end

	end

end


# new_game =  Game.new("word")
# # p new_game.encrypt("word")

# # p new_game.decrypt("word", "r")
# p new_game.decrypt("r")