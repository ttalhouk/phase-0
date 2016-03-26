// JavaScript Olympics

// I paired [with Carlos] on this challenge.

// This challenge took me [1] hours.



// Bulk Up

var athlete1 = {
  name: "Sarah Hughes",
  event: "Ladies Singles",
};
var athlete2 = {
  name: "Michel Phelps",
  event: "100 free",
};

var athleteArray = [athlete1, athlete2];
var athlete = 0;

function win(array){
  for (athlete in array){
    athleteArray[athlete].win = athleteArray[athlete].name + " wins the " +     athleteArray[athlete].event;
    console.log(athleteArray[athlete].win);
  };
};

win(athleteArray);

// Jumble your words

//Create a function that accepts a string as an argument and reverses it. Use the built-in JavaScript methods for strings and arrays to accomplish this. See the MDN String (Enlaces a un sitio externo.) and Array (Enlaces a un sitio externo.) docs. HINT: Think about how you would write this in Ruby and translate!

function jumble(string){

  //   string = string.split("");
  //   var reversedString = string.reverse();
  //   reversedString = reversedString.join('');
  //   console.log(reversedString);


  //Refeactored
  string = string.split("").reverse().join("");
  console.log(string);
}

jumble("hello")
// 2,4,6,8

//Create a function that accepts an array of numbers. Return an array with only the even numbers. You can do this manually or use built-in JavaScript Array Methods (Links to an external site.). Are you missing Ruby yet?

// function evenNumbers(array){
//   var evenArray=[];
//   var x = 0;
//   for (x in array){
//     if (array[x]%2 == 0){
//       evenArray.push(array[x]);
//     };
//   };
//   return evenArray
// };
 
// var sampleArray = [1, 2, 3, 4, 5, 6];
// console.log(evenNumbers(sampleArray));


// Refactored using filter

function evenNumbers(value){
  if (value % 2 == 0){
    return value
  }
};
 
var sampleArray = [1, 2, 3, 4, 5, 6].filter(evenNumbers);
console.log(sampleArray);

// "We built this city"


function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// - During this challenge I solidifed my knowledge in iterating through arrays and objects
// also creating constructor functions to make objects that are similar.  I also learns some
// new built in functions to use that seem to be helpful.


// What are constructor functions?
// - Constructor functions are ways to make objects that are similar.  For instance in this 
// challenge we made an object called michaelPhelps, but now that we have a function to create the object,
// we can add multiple other athletes that willhave the similar properties without having to repeat code.

// How are constructors different from Ruby classes (in your research)?
// - Still a bit hazy on the concept, though constructors are similar to classes except they contain properties to make objects.  
// So far we used classes in Ruby to contain methods that define the function of the object we were making thouht in JS objects
// can contain functions as well so I need to work on my understanding of that a bit more.  If whomever is grading this 
// has some feedback regarding this question I'd be interested to find out.