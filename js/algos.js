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
	index = lengthArray.indexOf(longest);
	return string_array[index];

	// Start with index position 1, loop over all the index positions
	

}


function size(obj) {
	var size = 0;
	for (var key in obj) {
 		size += 1;
		}
	return size;
	}	



function pair(obj1, obj2) {
	// Iterate through the first key-value pair in hash1 and hash2
	var keys1 = Object.keys(obj1)
	var keys2 = Object.keys(obj2)
	
	for (i = 0; i < keys1.length; i++) {
		if (obj1[keys1[i]] == obj2[keys2[i]]) {
			//If it finds a match it will break the loop and return true
			return true
		}

	}
	return false
		// if values are = return true
		// if values are != return false
}


function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}


function stringArray(int) {
	alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','y','x','z']
	for (i = 0; i < int; i++) {
		var rand = getRandomInt(0,10);
		for (i = 0; i < rand; i++) {

		}
	}
	// for the number of times given
		//generate random number
		//run loop that number of times
			//generate another random number between 0-25
			// pick that number from alphabet array
			// concatenate that number onto list
}




var obj1 = {name: "Steven", age: 54}
var obj2 = {name: "Tamir", age: 54}


console.log(pair(obj1,obj2))


stringArray(6)









// console.log(longest(['hello', 'bye', 'yolo']))
// console.log(longest(['hello', 'bye', 'yolo', 'hockey', 'how are you']))
// console.log(longest(['hockey', 'football', 'soccer', 'the purple cow']))


