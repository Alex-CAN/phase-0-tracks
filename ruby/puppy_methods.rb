class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	num.times { |num| p "Woof"}
  end

  def roll_over
  	p "Roll Over!"
  end

  def dog_years(age)
  	dog = age * 7
  	p dog
  	dog
  end

  def beg(food)
  	p "Gimmie some of that #{food}"
  end

  def initialize
  	p "Initializing new puppy instance ..."
  end


end

chai = Puppy.new

chai.fetch("ball")

chai.speak(3)

chai.roll_over

chai.dog_years(23)

chai.beg("chicken")



class Piartes
	def initialize
  	p ".........................................................................................................."
  end

	def arg
		p "Arrrrrg Matey!"
	end

	def walk_the_plank (name)
		p "Walk the plank #{name}"
	end
end

pirate_ship = []

 50.times { pirate_ship << Piartes.new }

 pirate_ship.each { |pirate| 
 	pirate.arg
 	pirate.walk_the_plank("Jack") }

