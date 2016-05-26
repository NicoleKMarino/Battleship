require_relative "Game"
require_relative "Ship"

class Board
  attr_reader :spaces

  def initialize
    @spaces = self.make_spaces
  end

  def make_spaces
    spaces = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
  end

  def update_board(location,result)
    @spaces[location[0].to_i][location[1].to_i] = result
    display
  end


  def display
    puts "==========="
    puts ". A B C D"
    puts "1 " + spaces[0].join(" ").gsub("0", " ")
    puts "2 " + spaces[1].join(" ").gsub("0", " ")
    puts "3 " + spaces[2].join(" ").gsub("0", " ")
    puts "4 " + spaces[3].join(" ").gsub("0", " ")
    puts "==========="
  end

end
