def new_char(char)
	vowels = 'aeiou'.chars
	consonant = 'bcdfghjklmnpqrstvwxyz'.chars
		if vowels.include? (char)
			p vowels.index.next
		elsif consonant.include? (char) 
			p consonant.index.next
		end 
end

def secret_name(first, last)
	index = 0	
	new_name = []
	while index < last.length
	new_name << new_char(last.chars[index])
	end
	while index < first.length
	new_name << new_char(first.chars[index])	
	end
	index += 1
	return new_name
end

p secret_name("first" , "last")
