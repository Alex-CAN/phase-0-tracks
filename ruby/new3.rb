def fib(num)
  fib_array=[0,1]
 #add n[-2]+ n[-1] 
 #until n.lenght == input
until fib_array.length == num
 fib_array<< (fib_array[-1]+fib_array[-2])
  end
  return fib_array
end
p fib(100)