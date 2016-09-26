<<<<<<< HEAD
def secret_agent (first, last)
	agent_alias = last.chars + "," + first.chars
	return agent_alias
end

p secret_agent('sally', 'sod')
=======
def new_char(char)
	name_vowel = "aeiou"
	name_consonant = "bcdfghjklmnpqrstvwxyz"
	if name_vowel.include? char 
		char.gsub(/[aeiou]/, 'a'=>'e', 'e'=>'i', 'i'=>'o', 'o'=>'u', 'u'=>'o')
	elsif name_consonant.include? char
		char.gsub(/[bcdfghjklmnpqrstvwxyz]/, 'b'=>'c', 'c'=>'d', 'd'=>'f', 'f'=>'g', 'g'=>'h', 'h'=>'j', 'j'=>'k', 'k'=>'l', 'l'=>'m', 'm'=>'n', 'n'=>'p', 'p'=>'q', 'q'=>'r', 'r'=>'s', 's'=>'t', 't'=>'v', 'v'=>'w', 'w'=>'x', 'x'=>'y', 'y'=>'z', 'z'=>'b')
	else
		" "
	end
end


def secret_agent(name)
	name_index = 0
	agent_alias = ""
	while name_index < name.length
		agent_alias << new_char(name[name_index])
		name_index += 1
	end
	agent_alias
end

 puts secret_agent('sally sod')
>>>>>>> 5.5
