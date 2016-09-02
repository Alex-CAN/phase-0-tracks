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
