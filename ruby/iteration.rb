letters = ["a", "b", "c", "d", "e","f","g","h","i","j","k","l","m","n","o","p"]
new_letters = []

puts ":::Original data:::"
p letters
p new_letters

# iterate through the array with .each
letters.each do |letter| 
  new_letters << letter.next
end

puts "After .each call:"
p letters
p new_letters

letters.map do |letter| 
  new_letters << letter.next
end

puts "After .map call:"
p letters
p new_letters
#################

numbers = {1 => 'one', 2 => 'two', 3 => 'three'}

# iterate through the hash with .each

numbers.each do |digit, word|
  puts "#{digit} is spelled out as #{word}"
end

letter_hash = {}

letters.each_index do |index|
letter_hash[letters[index]] = (index + 1)
end

letter_hash.each {|x,y| puts "#{x} : #{y}"}


letter_hash.delete_if {|let, num| num > 5}
p letter_hash

letter_hash.each {|x,y| puts "#{x} : #{y}"}



























			


