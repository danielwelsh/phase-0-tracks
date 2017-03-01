// To show the document was linked to the HTML
console.log("The script is running!")

var head = document.getElementById("header");
head.style.border = "5px solid black";
head.style.border = "2px solid red"



//Function that can be called when the event happens
function placeBlackBorder(event) {
	event.target.style.border = "3px solid black";
}


//Event Listener
var head = document.getElementById("header");
head.addEventListener("click", placeBlackBorder);

var body = document.getElementsByTagName('body');
console.log(body.firstChild);