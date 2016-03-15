# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

=begin
# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

1) Initiate an array with the letters BINGO as individual elements
2) create an array that is made up from element randomly chosen from the BINGO array 
and random nubmer between 1 and 100
  

# Check the called column for the number called.
  #fill in the outline here
1) Define a method that pulls the current colum number and the number to check for
2) Check that array element (an array) for the number.
3) IF the number is found record the position of that element

# If the number is in the column, replace with an 'x'
  #fill in the outline here
1) Set the element that relates to the column and the element position (row) to 'X'

# Display a column to the console
  #fill in the outline here
1) Itterate through a column and print to the screen with a return

# Display the board to the console (prettily)
  #fill in the outline here
1) Itterate through the board printing the same position of each column 
IF the number is < 10 add an extra space and then put " | " in between each element
2) Add a line return at the end of all columns.

=end
# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_title = ['B','I','N','G','O']
  end
  
  attr_reader :bingo_board
  attr_writer :bingo_title

  def bingo_call
    @spot=[rand(0..4),rand(0..100)]
    puts @bingo_title[@spot[0]]+@spot[1].to_s
  end

  def board_check
    position=0
    @bingo_board[spot[0]].each do |number|
      if number == @spot[1]
        @bingo_board[position] = " X"
      end
      position += 1
    end
        
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection