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