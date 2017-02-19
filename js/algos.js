// Longest string function

// iterate through each item in the list
	// Store the length value in a new array in the same index position as the string that was anlayzed. 

	// loop through the array of lengths
		// Take the first index value
			// If char is > than next char move to next char
			// If char is < than next char swap the characsublter being compared to the next



function longest(string_array) {
	var lengthArray = []
	// COunt the length of each string
	for (var i = 0; i < string_array.length; i++) {
		lengthArray.push(string_array[i].length);
	}
	// Store the index position of the longest word
	var longest = Math.max.apply(null, lengthArray);
	index = lengthArray.indexOf(longest)
	return string_array[index]

	// Start with index position 1, loop over all the index positions
	

}


console.log(longest(['hello', 'bye', 'yolo']))
console.log(longest(['hello', 'bye', 'yolo', 'hockey', 'how are you']))
console.log(longest(['hockey', 'football', 'soccer', 'the purple cow']))



// for (var key in mazda) {
//  if (mazda.hasOwnProperty(key)) {
//    console.log(key + " -> " + mazda[key]);
//  }
// }

// for (var key in mazda) {
//    console.log(key + " -> " + mazda[key]);
//  }
 
// for (var key in mazda) {
//    console.log(this.key + " -> " + this.mazda[key]);
//  }