require "/Users/Nicole/Documents/mod1/battleship/lib/Game.rb"
require "/Users/Nicole/Documents/mod1/battleship/lib/Ship.rb"


class Board
  attr_reader :spaces

  def initialize
    @spaces = self.make_spaces
  end

  def make_spaces
    spaces = {"A"=>[0,0,0,0],"B"=>[0,0,0,0],"C"=>[0,0,0,0],"D"=>[0,0,0,0]}
  
  end



  def place_ship
    puts ship1.location
    puts ship2.location
  end

  def display
    puts "==========="
    puts ". A B C D"
    puts "1 " + spaces["A"].join(" ").gsub("0", " ")
    puts "2 " + spaces["B"].join(" ").gsub("0", " ")
    puts "3 " + spaces["C"].join(" ").gsub("0", " ")
    puts "4 " + spaces["D"].join(" ").gsub("0", " ")
    puts "==========="
  end



end
