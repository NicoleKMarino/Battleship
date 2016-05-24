class Board
  attr_reader :board
  def initialize
  @board = self.init_board
  puts @board
  end


  def init_board
    return [
    [0,0,0,0],
    [0,0,0,0],
    [0,0,0,0],
    [0,0,0,0]
  ]
  end


end 
