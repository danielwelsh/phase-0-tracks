// Create data structures and variables to read in info
// Create loops to read the info into other data structures
// Create JS instances of each house

// There are no hashes in JS but there are object which act in a similar nature
// Object in JS behave somewhat likes clases tho they do not ahve the complexity and features of classes in Ruby
// Objects can be produced from a blueprint or prototype, loosly similar to the way instances are made in ruby



// function to calculate average house valie
// function to calculate year over year appriciation





// Creating Constructer Functions
//		Contructer functions have capialized names
//		this. refers to the present object being manipulated
//		Using this. can be used to do the same thing as @name = name 
//		This is done like this.name = name



// Create a constructor function that creates homes

function House(year1, year2, sq_feet) {
	console.log("This is testing that nothing is contained");
	this.year1 = year1;
	this.year2 = year2;
	this.sq_feet = sq_feet;
	console.log(this);
}


