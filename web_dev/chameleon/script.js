console.log("The script is running!");

function addPinkBorder(event) {
  event.target.style.border = "2px solid pink";
}

function addBlackBorder(event) {
	event.target.style.border = "1px solid black"
}


function addThicKBlackBorder(event) {
	event.target.style.border = "3px solid black"
}






var els = document.getElementById("em");
console.log(els);
var photo = document.getElementById("lizard-photo");

// el.style.border = "2px solid black";

els.addEventListener("click", addBlackBorder);
photo.addEventListener("click", addPinkBorder);
els.addEventListener('dblclick', addThicKBlackBorder)