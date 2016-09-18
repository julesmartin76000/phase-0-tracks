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

// Release 2

function Car(color, seats, options) {
	this.color = color;
	this.seats = seats;
	this.options = options; 
	
	this.honk = function() { console.log("Beep Beep"); };
}


console.log("Let's build a car ...");

var newCar = new Car("red", 4, true);
console.log(newCar);
console.log("Our can beep:");
newCar.honk();
console.log("----");

var anotherCar = new Car("blue", 5, false);
console.log(anotherCar);
anotherCar.honk();