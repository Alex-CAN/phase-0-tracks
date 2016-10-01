class Game
	attr_accessor :secret_word

	def initialize(secret_word)
		@secret_word = secret_word
		@guess_count = (secret_word.length)
		@guesser_word = Array.new(@guess_count, "-")
		p "Lets play!"
	end

	def encrypt
		# word = secret_word.chars
		# encrypted_word = []
		# word.each do|let| 
		# 	encrypted_word << "-"
		# end
		# return encrypted_word.join
		@guesser_word.join
	end
	

	def decrypt(final)
		word = secret_word.chars
			word.map.with_index do |letter, index|
			if final.include? letter 
				@guesser_word[index] = letter
			else
				@guesser_word[index] = "-"
			end
		end
		return @guesser_word.join

	end


	def guess_check(final)
		check_array = []
		final.each do |letter|
			if secret_word.include? letter
				check_array << "o"
			else
				check_array << "x"
			end
		end

		if check_array.include? "x"
			"LOSER"
		else
			"WINNER"
		end
	end

end


# new_game =  Game.new("word")
# # p new_game.encrypt("word")

# # p new_game.decrypt("word", "r")
# p new_game.decrypt("r")


# require 'io/console'

# puts 'Welcome Player 1 please input a secret word to be guessed'
# word = STDIN.noecho(&:gets).chomp
# new_game = Game.new(word)

# # word.length times get player 2's guess letter and puts decryption and psuh to a guess array
# # if guess array.include? gets guess give player another guess
# #join decrypted array and compare to word
# puts 
# puts
# puts
# puts
# puts
# puts
# puts
# puts "GUESSING GAME"
# puts " Your Word: #{new_game.encrypt}"
# guesses = (word.length)
# final = []
# while guesses != 0 
# 	puts 'Guess a letter player 2'
# 	guess_letter = gets.chomp
# 		if final.include? guess_letter
# 			p new_game.decrypt(final)
# 			guesses += 1
# 		else
# 			final << guess_letter
# 			p new_game.decrypt(final)
# 		end
# 	guesses -= 1
# end

# puts word
# puts new_game.guess_check(final)