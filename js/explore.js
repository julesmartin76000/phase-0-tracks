// Create a function like .reverse in ruby

// ====> First attempt for pseudocoding, but it's wrong
// create a function that take a string as input
// change this string into an array ( like .split(''))
// str.each_with_index do |letter, index|
	// if index = 0 then str.index[letter] == -1
	// else str.index[letter] == -index - 1

function reverse() {
	var word = prompt("Enter the word you want to reverse");
	if (word.length < 10)
	{ for (var i = word.length; i >= 0 ; i--) {
	console.log(word[i]); } }
	else {console.log("Your word is too long to reverse!");
}

}

reverse()

// problem ==> Undifined 