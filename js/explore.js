// For each letter in the string, starting at the last letter,
// and moving towards the first letter by iterating backwards
// 		add that letter to a holder variable 


// reverse function
// iterate through each character in the string starting at the last character and moving to the first character


function reverse(string) {
  var newString = ''
  for (var i = string.length-1; i > -1; i = i - 1) {
    newString += string[i];
    }
  return newString
}


var name = reverse('daniel');

if ( 1 == 1 ) {
	console.log(name);
} else {
	console.log("Nothing");
}




