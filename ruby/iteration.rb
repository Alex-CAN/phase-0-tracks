
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
		if arr[x] > arr[x].next
			arr[x] = arr[x+1]
		end
	end
end

a =[ 45, 3, 28, 19]

p sort_stuff (a)