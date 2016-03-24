 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Win a magic duel
// Overall mission: 
// Goals: Survive the battle
// Characters: Player, Opponent
// Objects: health, action
// Functions: attack, defend, cast a spell

// Pseudocode
// Create a player and opponent
// Player selects an action.  (do this at random for now)
// Opponent selects and action randomly.
// Compare the actions to see who will win
// Mark damage on losing player
// If player or opponent reachs 0 game is over and winner is declared.

// Initial Code

var player = {
  name: "Player",
  health: 2,
  current_move: null,
  pick_move: function(){
    this.current_move = action[Math.floor(Math.random() * (2 - 0 + 1)) + 0];
    console.log (this.name + " chooses to " + this.current_move);
  },
};

var opponent = {
  name: "computer",
  health: 2,
  current_move: null,
  pick_move: function(){
    this.current_move = action[Math.floor(Math.random() * (2 - 0 + 1)) + 0];
    console.log (this.name + " chooses to " + this.current_move);
  },
};


var game_over = false;

var action = ["Attack","Defend","Cast a Spell"]


function check_status(){
  if (player.current_move == action[0] && opponent.current_move == action[1]){
    console.log("Your attack was defended you lose one life");
    player.health -= 1;
  } else if (player.current_move == action[1] && opponent.current_move == action[2]){
    console.log("You can't block a fireball you lose one life");
    player.health -= 1;
  } else if (player.current_move == action[2] && opponent.current_move == action[0]){
    console.log("While casting a spell you get pummeled you lose one life");
    player.health -= 1;
  } else if (player.current_move == action[1] && opponent.current_move == action[0]){
    console.log("You successuflly block and counter attack opponent and they lose one life");
    opponent.health -= 1;
  } else if (player.current_move == action[2] && opponent.current_move == action[1]){
    console.log("Your opponent is chared by lightining they lose one life");
    opponent.health -= 1;
  } else if (player.current_move == action[0] && opponent.current_move == action[2]){
    console.log("You find an opening to attack your opponent they lose one life");
    opponent.health -= 1;
  } else {
    console.log("You stare at your opponent");
  } if (player.health == 0) {
    console.log("You lose the duel!");
    game_over = true;
  } else if (opponent.health == 0) {
    console.log("You win!")
    game_over = true;
  };

};

while (game_over == false){
  player.pick_move();
  opponent.pick_move();
  check_status();
};



// Refactored Code

// Tried to remove the pick_move function out of the objects but couldn't get it to work.  I think I need
// to figure out what the JS version of classes are to do what this properly.




// Reflection


// What was the most difficult part of this challenge?
// - Coming up with the concept was a little tricky since we are restricted by our current understanding of the language.
// Because JavaScript can't get input from the commandline it makes it difficult to make an interactive game.  



// What did you learn about creating objects and functions that interact with one another?
// - I learned that you can put functions inside objects and then call them.  Also functions can make changes to var or objects
// outside of the function itself, as if all are instance variables in Ruby.


// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// - I couldn't really find any that could work out.  I think if when I learn more (JS's version of Classes perhaps) I can then simplify the 
// object creators to make new objects that are very similar.

// How can you access and manipulate properties of objects?
// - They can be accessed using dot notation but they can be manipulated throughout the program in funtions, or directly set.
