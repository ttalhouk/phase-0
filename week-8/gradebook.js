/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with: John C]
This challenge took me [1] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// var gradebook = {};
// gradebook[students[0]]={};
// gradebook[students[1]]={};
// gradebook[students[2]]={};
// gradebook[students[3]]={};

// var index = 0;
// for (var name in gradebook){
//   gradebook[name].testScores =[];
//   gradebook[name].testScores = scores[index];
//   index++;
// }


// gradebook.addScore = function(name, scorearguments){
//   gradebook[name].testScores.push(scorearguments);
// };

// gradebook.getAverage = function(name){
//   return average(gradebook[name].testScores);
// };

// function average(array){
//   var sum = 0;
//   array.forEach(function(element){
//     sum +=element;
//   });
//   return (sum/array.length);
// }


// __________________________________________
// Refactored Solution
var gradebook = {};
// gradebook[students[0]]={};
// gradebook[students[1]]={};
// gradebook[students[2]]={};
// gradebook[students[3]]={};
 
students.forEach(function(name){
  gradebook[name]={};
});

var index = 0;
for (var name in gradebook){
  gradebook[name].testScores =[];
  gradebook[name].testScores = scores[index];
  index++;
}

gradebook.addScore = function(name, scorearguments){
  gradebook[name].testScores.push(scorearguments);
};

gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
};

function average(array){
  var sum = 0;
  array.forEach(function(element){
    sum += element;
  });
  return (sum/array.length);
}

console.log(gradebook);







// __________________________________________
// Reflect

// What did you learn about adding functions to objects?

// - I had used functions in my objects for the game I made last week, but this was a good
// example of how to do it with arguments being passed.

// How did you iterate over nested arrays in JavaScript?
// -I did not really need to itterate in nested arrays for this challenge as the input was 
// only one level deep.  However, one could do this by calling a .forEach on every array within an array if needed.


// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// Using for... in... was helpful in initializing the gradebook testScores.  It was useful for iterating through
// an object.  

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)