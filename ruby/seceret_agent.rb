#ask user if they'd like to decrypt or encrypt

#Encryption:
#ask user for "secret_password"
#string are zero indexed
#takes the "secret_password" string and returns a string with each letter changed next letter in the alaphabet.
def encrypt(secret_password)
	index = 0
	while index < secret_password.length
  	p secret_password[index].next
 	index += 1
 	end
end

#Decryption:
#create an empty array for secret_password
secret_password = []
#ask user to input secret_password one letter at a time and type nothing when done
p "first letter"
	letter = gets.chomp

while letter.length > 0
#push letters to empty secret_password array.
	secret_password << letter
	p "next letter"
	letter = gets.chomp
break if letter.length == 0
end
p encrypt(secret_password)





# secret_password.each {|letter|
# }