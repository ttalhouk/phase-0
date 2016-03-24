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

/*
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

*/

// Refactored Code
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
/*
function pick_move(){
  this.current_move = action[Math.floor(Math.random() * (2 - 0 + 1)) + 0];
  console.log (this.name + " chooses to " + this.current_move);
};
*/

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






// Reflection
//
//
//
//
//
//
//
//