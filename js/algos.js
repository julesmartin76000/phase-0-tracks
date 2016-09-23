// Release 0

// Have an array of input
// call a function with one parameter of array
// make a loop to take the length of each string into the array
// compare the two array : if the array's item length of the array 
// is longer than the next array item, it's deleting the shorter array
// ====> Finally I did something else because it didn't work : rather than deleting, I backed up my result into a variable

function longestWord(array) {
	var longest = 0;
	var result = array[0];
	for (var i = 0; i < array.length; i++) {
	if (result.length < array[i].length) {
            longest = array[i].length;
            result = array[i];
            console.log("The longest word is " + array[i] + " with " + longest + " characters ") }
            
}
return result;

}

var array = ["long phrase","longest phrase","longer phrase"];

console.log(longestWord(array));

//	Release 1

// Have two hashes as inputs 
// 
// loop through the hashes (loop through the key values)
// Conditionnal statement : if one of the key are the sames, the return is true


// what is keys ==> I have to define this ////////////////////////////////////////
// can't use length 
// How to iterate through the keys of an object ///////////////////////////////////

var hash_first = {name: 'Spot', 'age': 3, isGoodDog: true};
var hash_second = {name: 'john', 'age': 3, isGoodDog: false};

function coincidence(hash_1, hash_2) {
for (var i = 0; i < hash_1.length; i++) {
	if (hash_1[keys[i]] == hash_2[keys[i]])
{	console.log(hash_1); }
	else false ;
}
}

coincidence(hash_first, hash_second);

// Release 2

// create a function that take an integer as input
// The input gives the length of the array
// loop through each item of the array
// pick a letter randomly ten times 


function random(integer) {
	var array = [];
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	//array = integer.length;
	for (var i = 0; i < array.length; i++) {
		array[i].length = Math.floor((Math.random() * 10) + 1);
		array[i] << alphabet.charAt(Math.floor(Math.random() * alphabet.length));
	}
	return array
}

random(3)



