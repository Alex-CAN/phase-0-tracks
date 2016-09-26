def calculator(x, y, z)
	if y == "+"
		num = x + z
	elsif y == "-"
		num = x - z
	elsif y == "*"
		num = x*z
	elsif y == "/"
		num = x/z
	end
	" #{x} #{y} #{z} equates to #{num} "
end





calculation_history = []

puts "Would you like to make a calculation?"
calc = gets.chomp

	until calc.downcase == "done"
		puts "enter your calculation (ex. 1 + 1)!"
			equation = gets.chomp.split
			calculation_history << calculator(equation[0].to_i, equation[1], equation[2].to_i)
		puts "Would you like to make a calculation?"
			calc = gets.chomp
	end
puts "CALCULATION HISTORY:"
calculation_history.each_index {|ind| puts"Calculation##{ind + 1} : #{calculation_history[ind]}"}

		