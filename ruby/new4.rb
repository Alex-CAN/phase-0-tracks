def search_array(arr, i)
valid_input = -1
nilvar = true
arr.each do |integer|
 	valid_input +=1 
 if arr[valid_input] == i
 	return valid_input
 	nilvar = false
 else
 end
end
if nilvar 
 return nil
else
end
end

def fib(number) # define method
array1 = [] # creating an empty array
  number.times do |x|  #
 	new_index = x
  array1[new_index] = x 
 end
p array1
  array1.map! do |y|
  if y == 0
  y = 2
  x = -1
  elsif y == 1
  y = 3
  x = -2
  else
  y = y
  x = 0
  end end