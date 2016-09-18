# coffeeshops = ["Starbucks", "Petes", "Philz", "Sojuus", "Coffee Bar"]

#     coffeeshops.each {|x| puts "#{x} is the best coffeshop!"}
#    p coffeeshops

# coffeeshops = coffeeshops.map {|x| 
# 	while coffeeshops[x]
# 	}
# p coffeeshops

# coffeeshops.map! {|x| puts "#{x} is the best coffeshop!"}
# p coffeeshops


# def sort_stuff(arr)
# 	index_sort = 0
# 	arr.each_index  do |x|
# 		if arr[x] > arr[x+1]
# 			array[x]= array[x+1]
# 		end
# end

# a =[ 45, 3, 28, 19]

# p sort_stuff (a)

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

def sort_stuff(arr)
	arr.each_index do |x|
		if arr[x] > arr[x+1]
			sorted = true
		end
		if sorted
			arr[x] == arr[x+1]
		end
	end
end

a =[ 45, 3, 28, 19]

p sort_stuff (a)

# Write a method that takes an array of integers and an integer to search for.
#The method should return the index of the item, or nil if the integer is not present in the array. 
#Don't use built-in array methods like .index. You are allowed to use .length and .each.

# Here's an example of how we might use your method (assuming you call it search_array):

# arr = [42, 89, 23, 1]
# p search_array(arr, 1)
# => 3
# p search_array(arr, 24)
# => nil
