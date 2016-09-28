class Game
	def encrypt(secret_word)
		word = secret_word.chars
		encrypted_word = []
		word.each do|let| 
			encrypted_word << "-"
		end
		return encrypted_word.join
	end

	def decrypt(secret_word, guess_letter)
		word = secret_word.chars
		word.each do |letter|
			if letter != guess_letter
				letter.gsub!(/["#{letter}"]/, "-")
			end
		end
		return word.join
	end
end


# new_game =  Game.new
# p new_game.encrypt("word")

# p new_game.decrypt("word", "r")
