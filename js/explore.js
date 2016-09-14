//declare a var of a string
//for the length of the string we want to print each of the the indices in descending order


// str = ("hello")

function reverse(x) {for (var i = x.length; i > -1; i -= 1) {
	console.log(x[i]);
}
}

if (1 == 9) {
	console.log("lose");
}
else {
console.log(reverse("hello"));
}
