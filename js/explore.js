// For each letter in the string, starting at the last letter,
// and moving towards the first letter by iterating backwards
// 		add that letter to a holder variable 


function reverse(string) {
  var newString = ''
  for (var i = string.length-1; i > -1; i = i - 1) {
    newString += string[i];
    }
  return newString
}



console.log(reverse('daniel'));

