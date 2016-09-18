<<<<<<< HEAD
#5.6

#Release 0
# Write a method that takes an array of integers and an integer to search for.
#The method should return the index of the item, or nil if the integer is not present in the array. 
#Don't use built-in array methods like .index. You are allowed to use .length and .each.

# Here's an example of how we might use your method (assuming you call it search_array):

# arr = [42, 89, 23, 1]
# p search_array(arr, 1)
# => 3
# p search_array(arr, 24)
# => nil

def sort_stuff(arr, num) # method takes two arguments. The array of integers and the integer to search.
	arr.each_index { |x|  #iterate over the index of each integer
		if arr[x] ==num   # compares each integer with variable num 
			p x        # prints integer if equal to variable num
		else
			nil			# returns nil if variable num not equal to any of array integers
		end
		}
end

a = [42, 89, 23, 1]

p sort_stuff(a, 1)

# Release 1
#The concept of Fibonacci numbers is pretty simple: you start off with a 0 and a 1, 
#and keep adding numbers onto the list by adding the previous two. 
#With that in mind, an array of the first six Fibonacci terms would be [0,1,1,2,3,5]. 
#Each number in the array is the sum of the previous two numbers, except for the 0 and the 1, which we started out with.


def fibonacci_numbers(num) #method takes one argument. The amount of fibonacci numbers you wish to generate.
	fib_arr = [0,1] #the fibonacci sequence begins with integers 0 and 1
	(num-2).times {fib_arr << fib_arr[-1] + fib_arr[-2]}  #because the first two numbers are given we subtract 2 from the number of times we want to push numbers into our fib_arr.
#we add the last two numbers in the sequence togther and push that to the fib_arr
	return fib_arr #return array with new numbers
end

p fibonacci_numbers(10)

#Release 2
  
# def mergesort(array)
#  def merge(left_sorted, right_sorted)
#    res = []
#    l = 0
#    r = 0

#    loop do
#      break if r >= right_sorted.length and l >= left_sorted.length

#      if r >= right_sorted.length or (l < left_sorted.length and left_sorted[l] < right_sorted[r])
#        res << left_sorted[l]
#        l += 1
#      else
#        res << right_sorted[r]
#        r += 1
#      end
#    end

#    return res
#  end

#  def mergesort_iter(array_sliced)
#    return array_sliced if array_sliced.length <= 1

#    mid = array_sliced.length/2 - 1
#    left_sorted = mergesort_iter(array_sliced[0..mid])
#    right_sorted = mergesort_iter(array_sliced[mid+1..-1])
#    return merge(left_sorted, right_sorted)
#  end

#  mergesort_iter(array)
# end



#The Algorithm
# The Euclidean Algorithm for finding GCD(A,B) is as follows:
# If A = 0 then GCD(A,B)=B, since the GCD(0,B)=B, and we can stop.  
# If B = 0 then GCD(A,B)=A, since the GCD(A,0)=A, and we can stop.  
# Write A in quotient remainder form (A = B⋅Q + R)
# Find GCD(B,R) using the Euclidean Algorithm since GCD(A,B) = GCD(B,R)
# Example:
# Find the GCD of 270 and 192
# A=270, B=192
# A ≠0
# B ≠0
# Use long division to find that 270/192 = 1 with a remainder of 78. We can write this as: 270 = 192 * 1 +78
# Find GCD(192,78), since GCD(270,192)=GCD(192,78)
#     A=192, B=78

# A ≠0
# B ≠0
# Use long division to find that 192/78 = 2 with a remainder of 36. We can write this as:
# 192 = 78 * 2 + 36
# Find GCD(78,36), since GCD(192,78)=GCD(78,36)
#     A=78, B=36

# A ≠0
# B ≠0
# Use long division to find that 78/36 = 2 with a remainder of 6. We can write this as:
# 78 = 36 * 2 + 6
# Find GCD(36,6), since GCD(78,36)=GCD(36,6)
#     A=36, B=6

# A ≠0
# B ≠0
# Use long division to find that 36/6 = 6 with a remainder of 0. We can write this as:
# 36 = 6 * 6 + 0
# Find GCD(6,0), since GCD(36,6)=GCD(6,0)
# A=6, B=0

# A ≠0
# B =0, GCD(6,0)=6
# So we have shown:

# GCD(270,192) = GCD(192,78) = GCD(78,36) = GCD(36,6) = GCD(6,0) = 6

# GCD(270,192) = 6

def euclidean_algorithm(x, y)
	div_test = []
	next_num = x/y
	next_div = x - (y*next_num)
	if next_div != 0
		div_test << next_div
end 

p euclidean_algorithm(270,192)





















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
=======
def search_array(arr, value) # create method passing it two arguments
	index = 0 # arrays are zero indexed begin loop from beginning of array.
	while index < arr.length # loop through the entire array(length always 1 more than last index)
		if arr[index] == value #compare each char in array to value
			p index #print our index value
		else
			return nil #return nil if char not in array
		end
	index += 1 #increment index 
	end
end

a = [42, 89, 23, 1] #define array

p search_array(a,3) # call method passing it two arguments
>>>>>>> 5947d7211f2e2f7fa98b373676e2edf55ef86164
