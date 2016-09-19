class Guessing
	attr_reader :guess_count


	def initialize(answer)
		@right_answer = answer
		@guess_count = answer.length
		@guesser_word = Array.new(@guess_count, "-")
		p "Lets play!"
	end

	def your_word(guess)
		# @right_answer.map.with_index { |letter, index| 
		# 	if letter = guess
		# 	end
		#  }
		#  p @guesser_word
		# @right_answer.index(guess)
		# if @right_answer.include?(guess)
		# @guesser_word[index] = guess
		# end
		# p @guesser_word.join
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
		guess.each { |letter| 
			if !@right_answer.include?(letter)
				check <<  "x"
			else
				check << "o"
			end
		}
		if check.include?("x")
		 	"SORRY YOU LOSE!"
		else
			"WINNER!"
		end
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
end

p answer
p game.guess_check(final)










	