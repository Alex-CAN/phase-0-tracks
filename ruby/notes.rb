
index = 0
while index < abc.length
puts abc[index - 1]
index += 1
end
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>...
def decrypt(*letter)
	secret_password = []
	
	p "first letter"
		letter = gets.chomp
	if letter.length != 1
		p "not a valid single letter entry entry, try again"
		letter = gets.chomp
	elsif letter == "done"
		p secret_password
	else 
		secret_password << letter
		p "next letter? or type done"
		letter = gets.chomp
		secret_password << letter
	end
	p secret_password
end

decrypt
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>.

#ask user if they'd like to decrypt or encrypt

#Encryption:
#ask user for "secret_password"
#string are zero indexed
index = 0
#takes the "secret_password" string and returns a string with each letter changed next letter in the alaphabet.
def (secret_password)
	while index < secret_password.length
  	p secret_password[index].next
 	index += 1
 	end
end

#Decryption:
#create an empty array for secret_password
secret_password = []
#ask user to input secret_password one letter at a time and type done when theyre done.
p "first letter"
	letter = gets.chomp
if letter.length > 0
	until letter.length == 0
#push letters to empty secret_password array.
	secret_password << letter
end
else
p "next letter"
letter = gets.chomp
end

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>...
def decrypt(*letter)
	secret_password = []
	
	puts "Please input chapter names."

while gets.chomp != ""
  letter = gets.chomp
  break if gets.chomp.empty?
  
end
p secret_password
end
decrypt


