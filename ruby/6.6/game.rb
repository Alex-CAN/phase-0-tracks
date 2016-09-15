class Guessing
	attr_reader :guess_count


	def initialize(answer)
		@right_answer = answer
		@guess_count = answer.length
		p "Lets play!"
	end

	def your_word
		p "_" * @guess_count
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
answer = gets.chomp.split

game = Guessing.new(answer)
game.your_word

until final.length == answer.length
p "Player two make a guess"
guess = gets.chomp
final << guess	
p "_"* (game.guess_count - final.length)
end

game.guess_check(final)










	