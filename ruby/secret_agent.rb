#method takes a letter as an argument determine whether it is a vowel or constant
# using pre definfed strings of vowels and constants and returns the next letter. method cycles the last letter nd retunrs the first

def char_new(char)
	vowel_char = "aeiou".chars
	constonant_char = "bcdfghjklmnpqrstvwxyz".chars
	
	    if vowel_char.include?(char) && (char != vowel_char.last)
	    	vowel_char.fetch(vowel_char.index(char)+1)
	    elsif constonant_char.include?(char) && (char != constonant_char.last)
	    	constonant_char.fetch(constonant_char.index(char)+1)
	    elsif char == vowel_char.last
	    	vowel_char[0]
	    elsif char == constonant_char.last
	    	constonant_char[0]
	    else
	    	char
	    end
end

#method takes users first and last name. splits them into arrays of individual letters. 
#iterates over each name array encryting each letter using the chars method
# returns joined strings of new name"

def secret_agent (first, last)
	new_first = []
	new_last = []
	first.each do |letter| 
	 new_first << char_new(letter)
	end
	
	last.each do |letter| 
		new_last << char_new(letter)
	end

new_first.join.capitalize + " "+ new_last.join.capitalize
end

puts "Welcom Agent, to get your new top secret name we'll need you to  input your first and last name"
puts "For example: 'John Doe' "
name = gets.chomp.downcase.split
first = name[0]
last = name[1]
first_name = last.chars
last_name = first.chars

# secret_agent(first_name, last_name ).split
puts
puts "============================================================================================================"

puts "Agent #{name[0].capitalize} #{name[1].capitalize}"
puts "Your new alias is #{secret_agent(first_name, last_name )}"
