class Guessing
	attr_reader :guess_count


	def initialize(answer)
		@right_answer = answer
		@guess_count = answer.length
		@guesser_word = Array.new(@guess_count, "-")
		p "Lets play!"
	end

	def your_word(guess)
		index = @right_answer.index(guess)
		@guesser_word[index] = guess
		p @guesser_word
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
			puts "SORRY YOU LOSE!"
		else
			puts "WINNER!"
		end
	end
end

final = []
win_word = []
p "Player one input word"
answer = gets.chomp.chars

game = Guessing.new(answer)
# game.your_word
p answer

until final.length == answer.length
p "Player two make a guess"
guess = gets.chomp
puts game.your_word(guess)
p answer
final << guess	
end

p answer
game.guess_check(final)










	