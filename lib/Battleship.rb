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
      game = Game.new
      game.user_input_first
      game.user_input_second
      game.computer_input_first
      game.computer_input_second
      play_game
    when "I"
      puts "Seriosly, you don't know how to play battleship? Everyone knows how to play battleship"
      menu
    when "Q" then abort("That's too bad, goodbye")
    else
      puts "That's not an option."
      menu
    end
  end

  def play_game
    continue = true
    while(continue)
      game.user_guess
      if @computer1.health == 0 && @computer2.health == 0
        continue = false
        abort("YOU WON!")
      else
        #update board
        game.computer_guess
        if @player1.health == 0 && @player2.health == 0
          continue = false
          abort("YOU LOST....BOO")
        else
          update board
        end
      end

      play=Battleship.new
