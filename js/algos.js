// Longest string function

// iterate through each item in the list
	// Store the length value in a new array in the same index position as the string that was anlayzed. 

	// loop through the array of lengths
		// Find the longest value in the array of lengths
		// Take the longest item and store the index position
		// Use index to return the corresponding string 


function longest(string_array) {
	var lengthArray = []
	// COunt the length of each string
	for (var i = 0; i < string_array.length; i++) {
		lengthArray.push(string_array[i].length);
	}
	// Store the index position of the longest word and then apply that index to find the corresponding string
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
	
	// Iterate through the array of keys, then access the values by using index number position
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
	

	//Create an amount of strings that is determined by the number that is passed as a parameter
	var array_strings = []
	for (i = 0; i < int; i++) {
		array_strings.push(randomString());
	}
	return array_strings;
}



function randomString() {
	var alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','y','x','z']
	var rand = getRandomInt(0,10);
	var string = '';

	// For a random amount of characters generate a number and then use index position to assign a letter, 
	for (x = 0; x < rand; x++) {
		var index = getRandomInt(0,26);
		string += alphabet[index];
	}
	return string;
}



// Driver code to determine if a pair or not
var obj1 = {name: "Steven", age: 54}
var obj2 = {name: "Tamir", age: 54}
console.log(pair(obj1,obj2))



// Driver code to get the longest word of 10 lists
for (a = 0; a < 10; a++) {
	console.log(stringArray(3))
	console.log(longest(stringArray(3)));
}







