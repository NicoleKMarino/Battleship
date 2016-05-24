require "/Users/Nicole/Documents/mod1/battleship/lib/Game.rb"


class Board
  attr_reader :board
  def initialize
  @board = self.init_board
  puts @board
  end


  def init_board
  @board= [
    [0,0,0,0],
    [0,0,0,0],
    [0,0,0,0]
  ]

  puts "
===========
. 1 2 3 4
A
B
C
D
==========="
  end
end
