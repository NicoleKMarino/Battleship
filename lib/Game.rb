
require "/Users/Nicole/Documents/mod1/battleship/lib/Board.rb"


class Game
  attr_reader :first_coordinates , :second_coordinates
  def initialize
  @first_coordinates = self.user_play
  @second_coordinates = second_coordinates
  end

def user_play
  puts "Where do you want to place your first ship"
  userInput1=gets.upcase.split(" ")
  @first_coordinates = userInput1
  puts first_coordinates
  puts "Where do you want to place your second ship"
  userInput2 = gets.upcase.split(" ")
  @second_coordinates = userInput2
  puts @second_coordinates
  new_game
end

def computer_play
options=["A1","A2","A3"]
end

def new_game
  puts @first_coordinates
  puts @second_coordinates
 Board.new
 puts @board
 # @board.unshift(@second_coordinates)
 # @board.shift(@first_coordinates)
 # puts @board
end

end

# example.user_play
