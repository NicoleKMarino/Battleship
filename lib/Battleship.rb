require "/Users/Nicole/Documents/mod1/battleship/lib/Game.rb"
#would like to require this but it keeps creating a new game
class Battleship
  def initialize
    @menu=self.menu
  end

  def menu
    puts "Welcome to BATTLESHIP. Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    userInput= gets.chomp.upcase
    case userInput
    when "P"
      Game.new
    when "I"
      puts "instructions coming soon"
      menu
    when "Q" then abort("That's too bad, goodbye")
    else
      puts "That's not an option."
      menu
    end
  end
end

play=Battleship.new
