// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var number = 4;
number = number * 2;


// var fav = prompt("What's your favorite food");
// alert (fav + "! !hat's mine too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var triangle = "#";
while (triangle.length <= 7) {
  console.log (triangle);
  triangle += "#";
};


// Functions

// Complete the `minimum` exercise.

function minimum(num1, num2){
  if (num1 < num2)
    return num1;
  else
    return num2;
};


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Talal",
  age: 37,
  favFood: ["tabouli", "spaghetti", "pizza"],
  quirk: "Loves spicy food... Really spicy!",
};

