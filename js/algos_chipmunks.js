
function sameThing(a,b) {
	for (var i = 0; i < a.length; i++){
		if (a[i] == b[i]) {
			return true;
		} else {
			return false;
		}
}

var person1 = {name: "Steven", age: 54}
var person2 = {name: "Tamir", age: 54}

sameThing(person1, person2)

