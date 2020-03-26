def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def position_taken?(board, index)
  x = board[index]
  if x == " " || x == "" || x == nil
    return false
  elsif x == "X" || x == "O"
    return true
  end
end

def valid_move?(board, index)
  y = board[index]
  if y >= 0 && y <= 8
    if !(position_taken?(board, index))
      return true
    end
  end
end

def move(board, index, token = "X")
  board[index] = token
  return board
end


  
  
  
  