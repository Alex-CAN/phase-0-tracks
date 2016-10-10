class Game
	attr_accessor :secret_word, :compare_it

	def initialize(secret_word)
		@secret_word = secret_word
		@guess_count = (secret_word.length)
		@guesser_word = Array.new(@guess_count, "-")
		@compare_it = {secret_word => "-"*@guess_count}
		p "Lets play!"
	end

	def encrypt
		@guesser_word.join
	end
	
	def decrypt (guess_letter)
		index = secret_word.index(guess_letter)
		dashes = @compare_it.values_at(secret_word)[0]
		if index != nil
			dashes[index] = guess_letter
			@compare_it[secret_word] = dashes
		end
		dashes	
	end

	def guess_check
		@compare_it.each do |word, guess|
			if word == guess
				return "WINNER"
			else
				return "LOSER"
			end
			end
	end

end

 # TEST DRIVER
new_game =  Game.new("word")
# # p new_game.encrypt("word")

# # p new_game.decrypt("word", "r")
# p new_game.decrypt("r")
p new_game.compare_it


# # word.length times get player 2's guess letter and puts decryption and psuh to a guess array
# # if guess array.include? gets guess give player another guess
# #join decrypted array and compare to word
#require i/o method to use a noehco on console to hide player one's user input


# require 'io/console'

# puts 'Welcome Player 1 please input a secret word to be guessed'
# word = STDIN.noecho(&:gets).chomp
# new_game = Game.new(word)

# # word.length times get player 2's guess letter and puts decryption and psuh to a guess array
# # if guess array.include? gets guess give player another guess
# #join decrypted array and compare to word


# puts " "*9999



# puts "WELCOME TO THE GUESSING GAME"
# puts " Your Word: #{new_game.encrypt}"
# guesses = (word.length)*2
# final = []
# 	while guesses != 0 
#  	puts 'Guess a letter player 2'
#  	guess_letter = gets.chomp
#  		if final.include? guess_letter
#  			p new_game.decrypt(guess_letter)
# 			guesses += 1
# 		else
#  			final << guess_letter
#  			p new_game.decrypt(guess_letter)
#  		end
#  	guesses -= 1
#  end

# puts "The Word Was..."
# puts word

# p new_game.guess_check



=begin REFACTOR:

# and more comprhensive text to user input to make output more readable.
#use a hash key:secret_word value:"-"accordingly
#method takes guess letter as argument. if guess letter is .include? in key:secret_word. values[secret_word[guesslet]]
=end

