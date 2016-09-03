coffeeshops = ["Starbucks", "Petes", "Philz", "Sojuus", "Coffee Bar"]


    coffeeshops.each {|x| puts "#{x} is the best coffeshop!"}
   p coffeeshops

coffeeshops = coffeeshops.map {|x| x = "N"}
p coffeeshops

coffeeshops.map! {|x| puts "#{x} is the best coffeshop!"}
p coffeeshops