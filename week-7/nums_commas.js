// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Patrick DeWitte

// Pseudocode
/*
Inuputs: An integer of unknown length, with no commas
Outputs: A string of the input integer, separated by commas after every third number

Steps:
-Change the integer into a string
-Reverse the string (permanantly)
-Create a loop to find every 4th number in the string to insert a comma
-Reverse the order
-Combine the elements with commas

*/


// Initial Solution
/*
function separateComma(number){
  var commaValue = [];
  if (number < 1000){
    return number.toString();
  };
  var loops = 0;
  var remainder = number;
  while (remainder >= 1000){ 
    loops++; 
    remainder = Math.floor(number / Math.pow(1000,loops));
  };
  var i = 0;
  var value = 0;
  while (i <= loops){
    value = Math.floor(number / Math.pow(1000,(loops-i)));
    if (i != 0 && value < 10)
      commaValue[i] = "00" + value.toString();
    else if (i != 0 && value < 100)
      commaValue[i] = "0" + value.toString();
    else 
      commaValue[i] = value.toString();
  
    number = number - (value * Math.pow(1000,(loops - i)));
    i++;
  };
  return commaValue.join(",");
};
*/


// Refactored Solution
function separateComma(number){

  var stringValue = number.toString();
  var stringArray = stringValue.split("");
  stringArray = stringArray.reverse();
  
  for (var i = 1; i<=stringArray.length+1; i++){
    if ( i% 3 == 0 && i != stringArray.length){
      stringArray[i-1] = "," + stringArray[i-1];
    }
    else if (number < 1000)
      return number.toString();
  }
  
  return stringArray.reverse().join("");
  

}



// Your Own Tests (OPTIONAL)

console.log(separateComma(1569743));
// should equal "1,569,743"
console.log(separateComma(1000000));
// should equal "1,000,000"
console.log(separateComma(23));
// should equal "23"
console.log(separateComma(456008));
// should equal "456,008"




// Reflection

/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
- Well with our limited knowledge of the language at this point we were limited to what we could do to start with so we
tried to math it out which works but is complicated because we needed to look up methods for doing exponenets and need
to keep in mind that javascript doesn't do integer math the same so we need to add Math.floor to remove the decimals.

What did you learn about iterating over arrays in JavaScript?
- iterating in JavaScript is very similar to Ruby.  Arrays start at 0 and have many similar methods.

What was different about solving this problem in JavaScript?
- As stated above JS handles math differently so we end up having to add extra functions to  make it work out.
The syntax also is a bit trickier and a little harder to read so keeping the spacing right is critical.
Figuring out where to put the ";" was also tricky

What built-in methods did you find to incorporate in your refactored solution?
- We used Math.pow to do exponents
split to convert the string to an array
reverse works the same as before
join requeires ("") to join without ,


*/
