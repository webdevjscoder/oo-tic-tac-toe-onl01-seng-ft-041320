require 'pry'

class TicTacToe
  
  WIN_COMBINATIONS =
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [0,4,8],
  [1,4,7],
  [2,5,8],
  [6,4,2]
  
  def initialize(board = nil)
    # this creates a new empty array with 9 empty strings.
    @board = board || Array.new(9, " ")
  end
  
  def display_board
    # displays tictactoe board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(user_input)
    integer = user_input.to_i - 1
  end
  
  def move(board_index, current_player)
    @board[board_index] = current_player
  end
  
  def position_taken?(location)
    @board[location] != " " # && @board[location] != " "
  end
  
  def valid_move?(board_index)
    board_index.between?(0,8) && !position_taken?(board_index)
  end
  
  def turn
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(index)
      move(index, current_player)
      display_board
    else
      turn
    end
  end
  
  def turn_count
   
  end
  
  def current_player
    
  end
  
  def won?
    
  end
  
  def full?
    
  end
  
  def draw?
    
  end
  
  def over?
    
  end
  
  def winner
    
  end
  
  def play
    
  end
  
end 