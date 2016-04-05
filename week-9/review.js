// Release 9.2.1

//User Stories

// As a user I want to be able to create grocery list with the following functionality.
// -Add an item with a quantity to the list
// -Remove an item from the list
// -Update quantities for items in your list
// -Print the list (Consider how to make it look nice!)

// Psudocode

// 1) Define a list object that can accept an item and quantity to the list
// 2) Give the object the ability to add an item and quantity to the existing list
// 3) Give the object the ability to seach the existing list and remove it if it matches the criteria
// 4) Give the object the ability to seach the existing list for an item then update the quantity if it matches
// 5) Print out the list in key value pairs such as "Banana(s) qty 2"


// Initial solution

function GroceryList(listObj) {
  this.list = listObj;
}

GroceryList.prototype.addItem = function(item, qty){
  this.list[item] = qty;
};

GroceryList.prototype.deleteItem = function(item){
  delete this.list[item];
};
GroceryList.prototype.updateQty = function(item, qty){
  if (this.list[item] != null){
    this.list[item] = qty;
  }
};
GroceryList.prototype.printList = function(){
  for (var item in this.list){
    console.log ("You want " + this.list[item] + " " + item + "(s)");
  }
};
    
// Driver Code

var myList = new GroceryList({"apple": 2, "banana": 4, "pear":6});
myList.addItem("grape", 3);
myList.printList();
myList.deleteItem("banana");
myList.updateQty("apple", 4);
myList.printList();

// Reflection

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// -There was a liitle bit of struggling to get this to work initially as I was trying to use a constructor 
// to make this universal.  Figureing out when I could use `this` and where I couldn't took a while.  Ultimatly it
// began to make sense.

// What was the most difficult part of this challenge?
// -Figuring out how to call the key or the value was a challenge and making the constructor.  It was
// worth learning as I can see it will be important.


// Did an array or object make more sense to use and why?
// Object made more sense as the item is the key and the quantity is the value.  I would need 2 arrays 
// if I wanted to go that route but it makes little sense to do it that way.










// Release 9.2.2

//Selected Validate Credit Card

//Psudocode

// Input: a credit card number
// Output: Validation check true or false

// Steps
// 1) Create and object for the credit card.
// 2) Call a check funciton on the card
// 3) Check function will check the length of the number for 16 digits, IF not return validation is false.
// 4) Pass to function to check card number.
// 5) Split the number and double every other number counting backwards.  IF those numbers exceed 9 split them and record their sum.
// 6) Add all the numbers together.  IF it is a mulitple of 10 then set validation to true ELSE false.

// Solution

function CreditCard(number){
  this.number = number;
  this.checkCard();
}

CreditCard.prototype.checkCard = function(){
  if (this.number.toString().split("").length != 16){
    this.valid = false;
  } else {
  this.checkNumber();
  }
};
  
CreditCard.prototype.checkNumber = function(){
  var checkArray=this.number.toString().split("").reverse();
  for (var i = 0; i < checkArray.length; i++){
    if (i % 2 != 0){
      checkArray[i] = Number(checkArray[i]) * 2;
      if (checkArray[i] > 9){
        var splitArray = checkArray[i].toString().split("");
        checkArray[i] = Number(splitArray[0]) + Number(splitArray[1]);
      }
    } else {
      checkArray[i] = Number(checkArray[i]);
    }
  }
  this.sumArray(checkArray);
};
  
CreditCard.prototype.sumArray = function(array){
  var sum = 0;
  for (var i = 0; i < array.length; i++){
    sum += array[i];
  }  
  if (sum % 10 == 0){
    this.valid = true;
  } else {
    this.valid = false;
  }
};

// Driver Code
var card1 = new CreditCard(4408041234567901);
console.log("Is card number " + card1.number +" valid? " + card1.valid);
var card2 = new CreditCard(4408041234567906);
console.log("Is card number " + card2.number +" valid? " + card2.valid);

// Reflection

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// - I used constructors again and passed arguments from one function to the next.  This felt pretty smooth.  Also worked on
// converting numbers to strings, back to numbers.

// What was the most difficult part of this challenge?
// -Passing the right arguments and converting from nubmers to strings to get the right ones to double and split.


// Did you solve the problem in a new way this time?
// -Slightly diffent this time.  Tried to combine some steps if I could.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
// -The function of the code was the same, though I couldn't find a way to flatten out an array and iterating through
// multi dimensional arrays is more difficult in JS so I tried keeping the array as a single level.