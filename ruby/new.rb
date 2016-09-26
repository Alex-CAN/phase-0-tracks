def new_char(char)
  abc = "abcdefghijklmnopqrstuvwxyz"
  halfway = abc.length / 2
  is_capitalized = (char.upcase == char)

    if !abc.index(char.downcase)
    'boing'
    else
     char
    end
end

def translate (words)
  words_index = 0
  new_words = ""
  while words_index < words.length
    new_words << new_char(words[words_index])
    words_index += 1
  end
  new_words
end

puts translate("howdy!!!")


# ffedrinks = {starbucks: "Pumpkin Spice",
# petes: "Americano",
# philz: "Mint Coffee",
# sojuus: "Chai",
<<<<<<< HEAD
# coffebar: "vegan juice
=======
# coffebar: "vegan juice"}
>>>>>>> 5.5
