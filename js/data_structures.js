var colours = ["Blue", "Red", "Yellow", "Green"];
var names = ["Buster", "Princess Fluffypaws", "Minxy", "Ed"];
var ranch = {}

colours.push("purple");
names.push("Freddy"); 

// console.log(names, colours);

for (var i = 0; i < names.length; i++) {
	ranch[names[i]] = colours[i]; 
}

console.log(ranch)