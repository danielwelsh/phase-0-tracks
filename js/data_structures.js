var colors = ["red", "blue", "yellow", "green"];
var names = ["Ed", "John", "Bob", "Frank"];

console.log(colors);
console.log(names);

colors.push("purple");
console.log(colors);

names.push("Shawn");
console.log(names);

var horses = {}
for (var i = 0; i<names.length; i++){
 horses[names[i]] = colors[i] ;
}
console.log(horses);


function Car(color, make, type) {
this.color = color;
this.make = make;
this.type = type;
this.start = function() {
 console.log("Broom!")
}
console.log("Our new car is", this.color);
}

var mazda = new Car("blue","mazda","SUV");
mazda.start()
var subaru = new Car("red", "Subaru", "AllWheel");
console.log(subaru.type);
subaru.start();

for (var key in mazda) {
 if (mazda.hasOwnProperty(key)) {
   console.log(key + " -> " + mazda[key]);
 }
}

for (var key in mazda) {
   console.log(key + " -> " + mazda[key]);
 }
 
for (var key in mazda) {
   console.log(this.key + " -> " + this.mazda[key]);
 }