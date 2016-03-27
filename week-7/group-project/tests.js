// Add the finished solution here when you receive it.

/*
USER STORIES
As a user I would like...
To take a group of numbers THAT ARE IN NUMERICAL ORDER of any number of inputs and do the following:
-Add them all together when i ask to "sum" the group
-Calulate the average when I ask for the "mean" of the group
-Organize them in order and pick the middle value when I ask for the "median" of the group.
For instance  4, 8, 9 should give 8 as a result
Note: If there are an even number of values given, average the two in the middle.
For instance 4, 8, 9, 20 should give 8 as a result 8.5
*/

// sum array
// var oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
// var evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]
// var scrambleArray = [6, 6, 5, 4, 4, 5, 7, 6]

function sum(array){
var total = 0;
for(var counter =0; counter < array.length; counter++){
  total+=array[counter];
  }
  console.log(total);
  return total;
}
// sum(oddLengthArray)
// sum(evenLengthArray)

// User story: As a user I want to take any set of numbers and add them all together.
// Refactored solution

function sum(array) {
  var total = 0;
  for (var i = 0; i < array.length; i++) {
    total += array[i];
  }
console.log(total);
return total;
};




// mean array
function mean(array){
  var total = 0;
  for(var counter = 0; counter < array.length; counter++){
    total += array[counter];
    }
  var average = total/array.length;
  console.log(average);
  return average;
}
// mean(oddLengthArray)
// mean(evenLengthArray)

// User story: As a user I want to find the average value of a set of numbers and get the result.
// Refactored solution


function mean (array) {
  var total = 0;
  for (var i = 0; i < array.length; i++) {
    total += array[i];
  }
  console.log (total / array.length);
  return (total / array.length);
}


// median array
function median(array){
  var sorted_array=[];
  sorted_array = array.sort(function(a, b){return a-b});
  if (sorted_array.length%2 != 0) {
    var index = Math.floor(sorted_array.length/2);
    var middle_number = sorted_array[index];
  } else {
    var index1 = sorted_array.length/2;
    var index2 = index1 - 1;
    var number1 = sorted_array[index1];
    var number2 = sorted_array[index2];
    var middle_number = (number1 + number2)/2;
  }
  console.log(middle_number);
  return middle_number;
}
// median(oddLengthArray)
// median(evenLengthArray)
// median(scrambleArray)

// User story: As a user I want to find sort a set of numbers from smallest to largest
//and find the middle value.


// Refactored solution

function median(array) {
 array.sort();

  var middle_number = Math.floor((array.length - 1)/2);
  if (array.length % 2 === 0) {
    return (array[middle_number] + array[middle_number+1]) / 2 ;
  } else {
    return array[middle_number];
  }
}
console.log(median([1,2,3,4,5]))
console.log(median([1,2,3,4,5,6]))


// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)