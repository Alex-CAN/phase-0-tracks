# method take two arguments integer and array
#iterate through each
# arr = [23, 4, 17, 9]

# def search(integer, array)
# 	index = 0
# # use length of array to loop the array
# 	while index < array.length
# 		if array[index] == integer
# 		output = index
# 		else
# 		output = nil
# 		end
# 	index += 1
# 	end
# 	output
	
# end
# p search(4, arr)





def fibonacci(n)
	#index starts at 0, iterate through until the value of n is reached 
	index = 2 
	array = [0,1]
	until index == n
		array << (array[-2] + array[-1])
		index += 1
	end

	array
end
puts fibonacci(100).last



#array of numbers
#method takes argument array
#iterate with index if the item less then then swap it

#release 2

#sort the array from largest to smallest 
#define method with one parameter (an array of integers)
#iterate through each (loop do) index number of array
#if number is less than the value of following index, swap
# repeat until number is less than or equal to value of the following index

def bubble_sort(array)
    loop do 
        swapped = false
        number = array.length-1
        number.times do |i|
            if array[i] < array[i+1]
                    array[i], array[i+1] = array[i+1], array[i]
                swapped = true
            end
        end
        break if not swapped
    end
    array
end

puts bubble_sort([45,17,9,12,30])