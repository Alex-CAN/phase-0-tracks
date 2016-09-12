def add_item(cart, item)
	cart[item] = ""
end

def add_quantity(cart, item, quantity)
	cart[item] = quantity
	cart
end

def remove_item(cart, item)
	cart.delete(item)
	cart
end
cart = {}

list = ["a" , "b" , "c"]


list.each { |item| add_item(cart, item) }

p cart

p add_quantity(cart, "b", 3)

p remove_item(cart, "a")
#interface

def print_cart(cart)
	p cart
end