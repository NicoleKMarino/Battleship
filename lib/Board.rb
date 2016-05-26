require "/Users/Nicole/Documents/mod1/battleship/lib/Game.rb"
require "/Users/Nicole/Documents/mod1/battleship/lib/Ship.rb"


class Board
  attr_reader :spaces

  def initialize
    @spaces = self.make_spaces
  end

  def make_spaces
    spaces = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
  end


  def place_ship
    puts ship1.location
    puts ship2.location
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
