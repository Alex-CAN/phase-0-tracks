class Guessing
	attr_reader :guess_count
	attr_reader :game_on

	def initialize(answer)
		@right_answer = answer
		@game_on = true
		@guess_count = answer.length
		p "Lets play!"
	end

	def your_word
		p "-" * @guess_count
	end

	def guess_check(guess)
		@guess_count -=1
		if @right_answer.include?(guess)
			@game_on
		else
			return false
		end
	end

	def final_check(final_answer)
			p "Your Answer"
			final_answer.join
			p "Right Answer"
			right_answer.join
	end
end


final =[]

p "Player one input word"
answer = gets.chomp.split

game = Guessing.new(answer)
game.your_word

p "Player two make a guess."
guess = gets.chomp


case 
when game.guess_check(guess) == true
	p "Nice guess"
	final << guess
	p "Player two make a guess."
	guess = gets.chomp
when game.guess_check(guess) == false
	p "Bad guess"
	final << guess
	p "Player two make a guess."
	guess = gets.chomp
when final.length == answer.length
	game.final_check(final)
end






# while !
# game.game_on
# 	p "Player two make a guess"
# 	guess = gets.chomp
#   if game.guess_check(guess) == true
#   	final << guess
#   	p "Player two make a guess"
# 	guess = gets.chomp
#   end
# end

# puts "You won"
