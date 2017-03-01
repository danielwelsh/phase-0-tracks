// Create data structures and variables to read in info
// Create loops to read the info into other data structures
// Create JS instances of each house

// There are no hashes in JS but there are object which act in a similar nature
// Object in JS behave somewhat likes clases tho they do not ahve the complexity and features of classes in Ruby
// Objects can be produced from a blueprint or prototype, loosly similar to the way instances are made in ruby





// Creating Constructer Functions
//		Contructer functions have capialized names
//		this. refers to the present object being manipulated
//		Using this. can be used to do the same thing as @name = name 
//		This is done like this.name = name



// Create a constructor function that creates homes

function House(year1, year2, sq_feet) {
	this.year1 = year1;
	this.year2 = year2;
	this.sq_feet = sq_feet;
}





function appriciation(houseArray, currentYear, baseYear) {
	//Declare value variables
	var base_year = sumArray(houseArray, baseYear)
	var current_year = sumArray(houseArray, currentYear)

	//Find the percent increase from year to year
	var percent = (current_year - base_year) / base_year
	percent = Math.round(percent * 100) 
	//Return statement that declares what the percent increase in the market was
	return "The housing prices changed by " + percent + "% last year."
}




function pricePerFoot(houseArray, currentYear) {
	var sq_feet = sumArray(houseArray, 'sq_feet')
	var current_year = sumArray(houseArray, currentYear)
	var price = current_year / sq_feet
	price = Math.round(price)
	return "The price per foot in " + currentYear + " is $" + price + "."
}




function sumArray(houseArray, dataSummed) {
	var total = 0
	//Sum the total value of homes in year 1 and 2
	for (var i = 0; i < houseArray.length; i++) {
		total += houseArray[i][dataSummed];
	}
	return total
}





var house = new House(199, 200, 20000)



//Data that is used by the loop to populate the housing information. 
var year1Array = [400000, 454000, 450000, 650000, 700000, 800000]
var year2Array = [475000, 600000, 560000, 567000, 820000, 870000]
var sq_feetArray = [2500, 1500, 800, 500, 2000, 2100]
var houseArray = []


// Create a loop that generates many different houses and stores them in houseArray
for (var x = 0; x < 100; x++) {
	houseArray.push(house[x] = new House(year1Array[Math.floor(Math.random() * year1Array.length)], year2Array[Math.floor(Math.random() * year2Array.length)], sq_feetArray[Math.floor(Math.random() * sq_feetArray.length)]))
}


console.log(appriciation(houseArray, 'year2', 'year1'))
console.log(pricePerFoot(houseArray, 'year2'))
console.log(pricePerFoot(houseArray, 'year1'))