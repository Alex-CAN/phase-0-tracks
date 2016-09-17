def char_new(char)
  vowel_char = "aeiou".chars
  constonant_char  "bcdfghjklmnpqrstvwxyz".chars

    if vowel_char.include(char)
      p vowel_char.index(char)
    elsif constonant_char.include(char)
      p constonant_char.index(char)
    else
      p char
    end
  end
      

def secret_name(name)
  agent_alias = ""
  words_index = 0
  while words_index < secret_name.length
  agent_alias << new_char(name[words_index])
  words_index += 1
  end
  agent_alias
end

p secret_name('sally')
