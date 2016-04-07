# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode

# Checking for horizontal Bingo
# 1) take board in as input
# 2) Check each element in the board array to see if 5 'X' in a row
# 3) IF test is true for any row bingo_win is true
# 4) ELSE bingo_win is false

# Checking for vertical Bingo
# 1) take board in as input
# 2) Check each element in the board array to see if there is an 'x' and add one to a verical total array
# 3) IF vertical total array element contains a 5 then bingo_win is true
# 4) ELSE bingo_win is false

# Checking for left to right diagonal Bingo
# 1) take board in as input
# 2) Check the the first row and first column position for an "x" then every other row and column of the same index number
# 3) IF total x count equals a 5 then bingo_win is true
# 4) ELSE bingo_win is false

# Checking for right to left diagonal Bingo
# 1) take board in as input
# 2) Check the the first row and fifth column position for an "x" then every other row and the column position of the last minus the row number
# 3) IF total x count equals a 5 then bingo_win is true
# 4) ELSE bingo_win is false

# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                  [22, 'x', 75, 65, 73],
                  [83, 85, 'x', 89, 57],
                  [25, 31, 96, 'x', 51],
                  [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]




# Initial Solution
# class BingoScorer
#   def horz_check?(board)
#     board.each do |row|
#       count = 0
#       row.each do |col|
#         count += 1 if col == 'x'
#         return true if count == 5
#       end
#     end
#     return false
#   end
  
#   def vert_check?(board)
#     vert=[0,0,0,0,0]
#     board.each do |row|
#       row.each_with_index do |col, i|
#         if col == 'x'
#           vert[i] += 1
#         end
#       end
#     end
#     return vert.include?(5)
#   end

#   def r2l_check?(board)
#     check = 0
#     board.each_index do |i|
#       if board[i][i] == 'x'
#         check += 1
#       end
#     end
#     if check == 5
#       return true
#     else
#       return false
#     end
#   end
  
#   def l2r_check?(board)
#     check = 0
#     board.each_index do |i|
#       if board[i][4-i] == 'x'
#         check += 1
#       end
#     end
#     if check == 5
#       return true
#     else
#       return false
#     end
#   end
  
  
# end




# Refactored Solution

class BingoScorer
  def horz_check?(board)
    board.each do |row|
      count = 0
      row.each do |col|
        count += 1 if col == 'x'
        return true if count == 5
      end
    end
    return false
  end
  
  def vert_check?(board)
    vert=[0,0,0,0,0]
    board.each do |row|
      row.each_with_index do |col, i|
        if col == 'x'
          vert[i] += 1
        end
      end
    end
    return vert.include?(5)
  end

  def r2l_check?(board)
    check = 0
    board.each_index do |i|
      if board[i][i] == 'x'
        check += 1
      end
    end
    return check == 5
  end
  
  def l2r_check?(board)
    check = 0
    board.each_index do |i|
      if board[i][4-i] == 'x'
        check += 1
      end
    end
    return check == 5
  end
end




# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:
checker = BingoScorer.new

puts checker.horz_check?(horizontal)
puts checker.horz_check?(vertical)
puts checker.vert_check?(vertical)
puts checker.vert_check?(horizontal)
puts checker.r2l_check?(right_to_left)
puts checker.r2l_check?(left_to_right)
puts checker.l2r_check?(left_to_right)
puts checker.l2r_check?(right_to_left)

# Reflection