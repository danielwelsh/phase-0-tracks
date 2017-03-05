console.log("The script connected to the document")


function makePicBig(event) {
	event.target.style.border = "2px solid black";
}




var photo = document.getElementById("fernie");
photo.addEventListener('click', makePicBig);



//Adds a red border when the page is opened.
$("p").css("border","9px solid red")



//Changes the image to centered when the screen is resized. 
$(window).resize(function() {
	$("#fernie").css("margin", "auto");
	$("#fernie").css("display", "block");
});


//Changes the border to green and dotted when the window is resized
$(window).resize(function() {
	$("p").css("border", "2px dotted green")
});



//When a paragraph is clicked it will be made boldeed.
$("p").click(function() {
	$("p").css("font-weight", "bold");
});



	
