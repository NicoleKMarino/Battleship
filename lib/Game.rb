
require "/Users/Nicole/Documents/mod1/battleship/lib/Board.rb"

class Game
  attr_reader :first_coordinates
  def initialize(first_coordinates)
  @first_coordinates = first_coordinates
  end


# def computer_play
# end

def user_play
  puts "What do you want to place your ships"
  @first_coordinates = gets.chomp.upcase
  puts first_coordinates
  Board.new
end


end

example=Game.new(["A1,B2"])
example.user_play
