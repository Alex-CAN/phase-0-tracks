class Guessing
	attr_reader :guess_count


	def initialize(answer)
		@right_answer = answer
		@guess_count = answer.length
		@guesser_word = Array.new(@guess_count, "-")
		p "Lets play!"
	end

	def your_word(guess)
		@right_answer.each_index {|index|
			if @right_answer[index] == guess
			@guesser_word[index] = guess
			@guesser_word
		end
		}
		@guesser_word.join
	end

	def guess_check(guess)
		check = []
		guess.each_index { |index| 
			if @right_answer[index] == guess[index]
				check <<  guess[index]
			end
		}
		p check
		# if check.include?(@right_answer.join)
		#  	"WINNER!""SORRY YOU LOSE!"
		# else
		# 	"SORRY YOU LOSE!"
		# end
	end
end

final = []
p "Player one input word"
answer = gets.chomp.chars

game = Guessing.new(answer)
# game.your_word
p answer

while final.length != answer.length
p "Player two make a guess"
guess = gets.chomp
p game.your_word(guess)
# p answer
final << guess	
break if game.your_word(guess) == answer.join
break if final.length == answer.length
end

# p answer
 game.guess_check(final)










