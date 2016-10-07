var colors = ["blue", "yellow", "orange", "purple"]
var names = ["Ed","Seabiscuit","Black Beauty", "Beauty"]

colors.push("gold")
names.push("Simon")

console.log(colors);
console.log(names);

barn = {}

for (var i = 0 ; i < colors.length; i++) {
  barn[names[i]] = colors[i];
}

console.log(barn);


function Car(year,make,color,awd) {
	console.log("Our new car:", this);
	this.year = year;
	this.make = make;
	this.color = color;
	this.awd = awd;
	this.rev = function() {console.log("Vrooooom!");};
	console.log("car initialization complete");
}

var newCar = new Car(1989,"Ford","red",true);
console.log(newCar);
newCar.rev();