var horse_colors = ["ombre", "burgundy","lilac", "orange"];
var horse_names = ["ed", "al", "jimmy", "frank"];

horse_names.push("Maple");
horse_colors.push("lavendar");

console.log(horse_colors);
console.log(horse_names);

var horse_house = this;

for (var i = 0; i < horse_names.length; i++) {
<<<<<<< HEAD
        horse_house[horse_names[i]] = horse_colors[i];
=======
		horse_house[horse_names[i]] = horse_colors[i];
>>>>>>> 6.6
}

console.log(horse_house);

function Car(year, make, model) {
<<<<<<< HEAD
    console.log("NEW CAR!", this);
    this.year = year;
    this.make = make;
    this.model = model;

    this.rev = function () {console.log("Vroom Vroom!"); };
=======
	console.log("NEW CAR!", this);
	this.year = year;
	this.make = make;
	this.model = model;

	this.rev = function () {console.log("Vroom Vroom!"); };
>>>>>>> 6.6
}

var chevy = new Car(1999, "Chevy", "Cruz");
console.log(chevy)
chevy.rev();