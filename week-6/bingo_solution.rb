# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2] hours on this challenge.

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
  IF the number is an 'x' or < 10 add an extra space 
    and then put " | " in between each element
2) Add a line return at the end of all columns.

=end
# Initial Solution
=begin

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_title = ['B','I','N','G','O']
  end
  
  attr_accessor :bingo_board
  attr_writer :bingo_title

  def bingo_call
    @spot=[rand(0..4),rand(1..99)]
    puts @bingo_title[@spot[0]]+@spot[1].to_s
    board_check
  end

  def board_check
    position=0
    @bingo_board[@spot[0]].each do |number|
      if number == @spot[1]
        @bingo_board[@spot[0]][position] = "X"
      end
      position += 1
    end
    print_board
  end
  
  def print_board
    @bingo_title.each do |let|
      print "|  "+let+" |"
    end
    puts
    row = 0
    while row <= 4 do
      @bingo_board.each do |col|
        print "| "
        if col[row].is_a?(String)
          print " "
        elsif col[row] < 10
          print " "
        end
        
        print col[row].to_s + " |"
      end
      puts
      row += 1
    end
  end
      
end
=end
# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_title = ['B','I','N','G','O']
  end
  
  attr_accessor :bingo_board
  attr_writer :bingo_title

  def bingo_call
    @spot=[rand(0..4),rand(1..99)]
    puts @bingo_title[@spot[0]]+@spot[1].to_s
    board_check
  end

  def board_check
    @bingo_board.each_index do |index|
      if @bingo_board[index][@spot[0]] == @spot[1]
        @bingo_board[index][@spot[0]] = "X"
      end
    end
    print_board
  end
  
  def print_board
    @bingo_title.each do |let|
      print "|  "+let+" |"
    end
    puts
    @bingo_board.each do |row|
      if row.is_a?(Array)
        row.each do |col|
          print "| "
          if col.is_a?(String) || col < 10
            print " "
          end
          print col.to_s + " |"
        end
        puts
      end
    end
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.bingo_call
new_game.bingo_call
new_game.bingo_call
new_game.bingo_call
new_game.bingo_call


#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
-The psudocoding was a bit difficult for this challenge.  There are a lot of interacting parts
to making this work so they need to go back an forth a bit and can get a bit jumbled.

What are the benefits of using a class for this challenge?
-By using a class the board can be saved as an instance of the board and can share the board
across all the methods inside the BingoBoard class.  This way you don't have to keep adding
the board as an argument on every method call.

How can you access coordinates in a nested array?
-These can be access by row and column.  You can do this by checking if the element you are
looking at is an array then iterate it.

What methods did you use to access and modify the array?
-I used each_index to keep track of what position we are in then changed it directly.

Give an example of a new method you learned while reviewing the Ruby docs. 
Based on what you see in the docs, what purpose does it serve, and how is it called?
-each_index: it can hold the index value of the each loop which helps call the position in the
arrays whithin the block.

How did you determine what should be an instance variable versus a local variable?
-The board and title were instance variables since they are needed for checking and printing
anything only needed within the method it was being used in was a local variable such as
(counters, indexes, placeholders, etc)


What do you feel is most improved in your refactored solution?
-The iteration method was improved also I realized I was doing the columns and rows
incorrectly before, as I thought the first element in the container array was "B"
I fixed that in the refactored solution.


=end
