<<<<<<< HEAD
#method takes a letter as an argument determine whether it is a vowel or constant
# using pre definfed strings of vowels and constants and returns the next letter. method cycles the last letter nd retunrs the first

def char_new(char)
	vowel_char = "aeiou".chars
	constonant_char = "bcdfghjklmnpqrstvwxyz".chars
	
	    if vowel_char.include?(char) && (char != vowel_char.last)
	    	vowel_char.fetch(vowel_char.index(char)+1)
	    elsif constonant_char.include?(char) && (char != constonant_char.last)
	    	constonant_char.fetch(constonant_char.index(char)+1)
=======
 class AliasMaker
	def new_name(first, last)
		first_name = first
		last_name = last
		new_agent_first = ""
		new_agent_last = ""
		first_name.each { |x| new_agent_first << char_new(x) } 
		puts
		last_name.each { |x|  new_agent_last << char_new(x)}
		puts "Your new secret agent name is #{new_agent_first.capitalize},#{new_agent_last.capitalize}"
		new_agent_first + new_agent_last
	end
	
	def char_new(char)
	  vowel_char = "aeiou".chars
	  constonant_char = "bcdfghjklmnpqrstvwxyz".chars
	
	    if vowel_char.include?(char) && (char != vowel_char.last)
	      vowel_char.fetch(vowel_char.index(char)+1)
	    elsif constonant_char.include?(char) && (char != constonant_char.last)
	      constonant_char.fetch(constonant_char.index(char)+1)
>>>>>>> 5.5
	    elsif char == vowel_char.last
	    	vowel_char[0]
	    elsif char == constonant_char.last
	    	constonant_char[0]
	    else
<<<<<<< HEAD
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
=======
	      char
	    end
	  end
	  

end

      

# def secret_name(first,last)
#   agent_alias = []
#   words_index = 0
#   while words_index < secret_name.length
#   agent_alias << new_char(last.chars[words_index])
#   agent_alias << new_char(first.chars[words_index])
#   words_index += 1
#   end
#   agent_alias
# end

# p secret_name('sally', 'sod')

p "What's your first name?"
two = gets.chomp.chars
p "whats your last name?"
one = gets.chomp.chars

name = AliasMaker.new

p name.new_name(one,two)
>>>>>>> 5.5
