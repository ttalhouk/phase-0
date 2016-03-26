var sparky = {
  name: "Sparky",
  species: "Dog",
  color: "brown",
  tricks: ["fetch","roll-over","shake"],
  fetch: function(item){
    if (item == "newspaper")
    newspapers +=1;
  },
};

var newspapers = 0;

// tell Sparky to fetch the newspaper
sparky.fetch("newspaper");
console.log("You have "+ newspapers + " newspaper(s)");