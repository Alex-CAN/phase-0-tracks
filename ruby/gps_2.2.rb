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

def print_cart(cart)
	p "/" * 80
	p "Your shopping list includes..."
	cart.each {|item, quantity| p "#{item}: #{quantity}"}
	p "/" * 80
end
cart = {}


	

#User Interface

p "WELCOME SHOPPER!"
p "Whats on your list?"
list = gets.chomp.split(",")

list.each { |item| add_item(cart, item) }

p cart
cart.each_key do |item| 
	p "please specify a quantity for Item: #{item}"
	quantity =gets.chomp.to_i
	add_quantity(cart, item, quantity)
end

	p "would you like to 'add' an item, 'remove' an item, or 'change' an item's quantity?(add/remove/change)"
		action = gets.chomp
	case  
		when action == "remove"
		p "which item would you like to remove?"
		removed_item =gets.chomp
		remove_item(cart, removed_item)
		p cart
		p "would you like to 'add' an item, 'remove' an item, or 'change' an item's quantity?(add/remove/change)"
		remove = gets.chomp
		when action == "add"
		p "Whats your new item?"
		new_item = gets.chomp
		add_item(cart, new_item)
		p "please specify a quantity for Item: #{new_item}"
		quantity =gets.chomp.to_i
		add_quantity(cart, new_item, quantity)
		p cart
		p "would you like to 'add' an item, 'remove' an item, or 'change' an item's quantity?(add/remove/change)"
		action = gets.chomp
		when action == "change"
		p "which item would you item would you like to change? #{cart}"
		quantity_change_item = gets.chomp
		p "what is the new amount?"
		new_quantity = gets.chomp.to_i
		add_quantity(cart, quantity_change_item, new_quantity)
		p cart
		p "would you like to 'add' an item, 'remove' an item, or 'change' an item's quantity?(add/remove/change)"
		action = gets.chomp
		else
			cart
	end

print_cart(cart)