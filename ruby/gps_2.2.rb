def add_item(cart, item)
	cart[item] = []
end
cart = {}

list = ["a" , "b" , "c"]

list.each { |item| add_item(cart, item) }

p cart
