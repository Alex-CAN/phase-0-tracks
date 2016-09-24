//function takes on argument; an array
// for each string in the array get its length
// compare array of lengths
// print largest number

//  var strings = ["abc", "blah", "ad"];

//  // strings.sort(function(a, b) {
//  // 	return a - b;
//  // });

//  // console.log(strings)

// function sort(x) {for (var i= 0; i < x.length; i++) {
// 	if (x[i].length < x[i + 1].length) {
// 	console.log("lose");
// }
// else {
// 	console.log(x[i]);
// }
// }
// }
 
// console.log(sort(strings));

// ///so far i can acess the strings in the array by index. I set i to 0 and increment it to compare string[0] to the next string.
// ///but i run into problems with the last string since there is no next index
// ///i thought to solve this by starting with -1 and add up but for some reason it wont even access that -1

// var dog_0 = {name: 'Bear', age: 13, isGoodDog: false};
// var dog_1 = {name: 'Chai', age: 13, isGoodDog: true};
var dog_house = this;

function Dog(name, age, isGoodDog) {
    console.log("NEW Doggy", this);
    this.name = name;
    this.age = age;
    this.isGoodDog = isGoodDog;

    // this.rev = function () {console.log("Vroom Vroom!"); };
}

var dog_0 = new Dog("Bear", 13, false);
var dog_1 = new Dog("Chai", 13, true);

console.log(dog_0)
console.log(dog_1)




