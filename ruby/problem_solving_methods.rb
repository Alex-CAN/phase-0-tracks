#create method that takes one argument. an array
#iterate over the array 
#begin from index 0 
#compare to adjacent value(left to right)
#if value on the left is larger than the right swap index position.
# a = [ 5, 9, 3]
#  p a.sort


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

# def sort_stuff(arr)
# 	arr.each_index do |x|
# 		if arr[x] > arr[x][x+1]
# 			arr[x] = arr[x+1]
# 		end
# 	end
# end

# a =[ 45, 3, 28, 19]

# p sort_stuff (a)

def sort_stuff(arr)
	arr.each_index do |x|
		if arr[x] > arr[x][x+1]
			arr[x] = arr[x+1]
		end
	end
end

a =[ 45, 3, 28, 19]

p sort_stuff (a)