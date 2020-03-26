def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def input_to_index(user_input)
  user_index = user_input.to_i - 1
  return user_index
end

def position_taken?(array, token_index)
  x = array[token_index]
  if x == " " || x == "" || x == nil
    return false
  elsif x == "X" || x == "O"
    return true
  end
end

def valid_move?(array, user_input)
  y = user_input
  if y >= 0 && y <= 8
    if !(position_taken?(array, y))
      return true
    end
  end
end

def move(board, index, token = "X")
  board[index] = token
  return board
end

def turn(array)
  puts "Please enter 1-9:"
end

  
  
  
  