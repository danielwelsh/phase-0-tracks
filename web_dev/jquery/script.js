console.log("The script is running properly")


function makePicBig(event) {
	event.target.style.border = "width: 80%;";
}


var photo = document.getElementById("fernie");
photo.addEventListener('click', makePicBig);