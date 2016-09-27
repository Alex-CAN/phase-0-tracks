class Game
	def encrypt(secret_word)
		word = secret_word.chars
		encrypted_word = []
		word.each do|let| 
			encrypted_word << "-"
		end
		return encrypted_word.join
		
	end
end