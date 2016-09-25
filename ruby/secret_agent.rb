
def secret_name 
  first = 'sally'
  last = 'sod'
  yield
end

p secret_name { |first, last|  p last.chars  first.chars}

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
	end
	
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

puts name.new_name(one,two)

