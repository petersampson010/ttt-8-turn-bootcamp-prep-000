def position_taken?(board, index_number)
  if board[index_number] == "X" || board[index_number] == "O"
    return true 
  else
    return false
  end
end

def valid_move?(board, index_number)
  if index_number.between?(0, 8) == true && position_taken?(board, index_number) == false 
    return true 
  else
    return false
  end 
end 

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(users_input)
  users_input.to_i - 1
end



def turn(board)
  puts "Please enter 1-9:"
  answer = gets.strip
  answer = input_to_index(answer)
  if valid_move?(board, answer)
    move()
  else 
    move(board, index_number, character = "X")
  end 
end 

def move(board, index_number, character = "X")
  return board[index_number] = character
end