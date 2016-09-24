# <<<<<<< las

# def sort_stuff(arr)
# 	index = 0
# 	while arr[index] < arr.length
# 		if arr[x] < arr[x+1]
# 			arr[x]= arr[x+1]
# 		end
# 	index += 1
# 	end
# 	return arr
# end

# a =[ 45, 3, 28, 19]

# p sort_stuff (a)

# def sort_stuff(arr)
# 	arr.each_index do |x|
# 		if arr[x] > arr[x].next
# 			arr[x] = arr[x+1]
# =======
# coffeeshops = ["Starbucks", "Petes", "Philz", "Sojuus", "Coffee Bar"]

# def coffeeyum (a)
#     a.each {|x| puts "#{x} is the best coffeshop!"}
# end

# coffeeyum(coffeeshops)


# def himethod(a)
# a.map! do |c|
# c.upcase
# end
# end

# himethod(coffeeshops)

# new_coffeeshop = coffeeshops.map  do |d| d + "!" end

# p new_coffeeshop


# coffeedrinks = {starbucks: "Pumpkin Spice",
# petes: "Americano",
# philz: "Mint Coffee",
# sojuus: "Chai",
# coffebar: "vegan juice"}

# coffeedrinks.each do |coffeeplace, drinkz| puts "#{coffeeplace} is the best coffeeshop and the #{drinkz} is the best drink ever!" end

# def delete_me(arr)
# 	arr.each do |x| 
# 		if x < 3
# 			arr.delete(x)
# 		end
# 	end
# end

# a = [1, 2, 3, 4]

# p delete_me(a)

def delete_me(arr, value)
	arr.each do |x|
		if x < value
			arr.delete(x)
>>>>>>> 5947d7211f2e2f7fa98b373676e2edf55ef86164
		end
	end
end

<<<<<<< HEAD
a =[ 45, 3, 28, 19]

p sort_stuff (a)
=======
a = [1, 2, 3, 4]
p delete_me(a, 3)

# numbers = [1,2,3,4,5,6,7,8,9,10]

# even_numbers = []

# numbers.each do |num|
# 	if num % 2 == 0
# 		puts num
# 		even_numbers.push(num)
# 	end
# end

# def remove_stuff (arr)
# 	arr.each do |x|
# 		if x % 2 == 0
# 			arr.delete(x)
# 		end
# 	end
# end

# numbers = [1,2,3,4,5,6,7,8,9,10]

# p remove_stuff (numbers)