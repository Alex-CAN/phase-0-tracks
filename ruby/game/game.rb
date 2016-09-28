class Game
	attr_accessor :secret_word

	def initialize(secret_word)
		@secret_word = secret_word
	end
	#PLAYER 1
	def encrypt
		word = secret_word.chars
		encrypted_word = []
		word.each do|let| 
			encrypted_word << "-"
		end
		return encrypted_word.join
	end



	#PLAYER 2
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
		end
		return arr.join
	end

	def guess_check(guess)
		if guess == secret_word
			"WINNER"
		else
			"LOSER"
		end

	end

end


# new_game =  Game.new("word")
# # p new_game.encrypt("word")

# # p new_game.decrypt("word", "r")
# p new_game.decrypt("r")

puts 'player 1'
word = gets.chomp
new_game = Game.new(word)

# word.length times get player 2's guess letter and puts decryption and psuh to a guess array
# if guess array.include? gets guess give player another guess
#join decrypted array and compare to word


guesses = word.length
final = []
while guesses != 0 
	puts 'player 2'
	guess_letter = gets.chomp
	final << guess_letter
	new_game.decrypt(guess_letter)
	guesses -= 1
end
