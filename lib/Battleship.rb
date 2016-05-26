require_relative "Game"
class Battleship
  def initialize
    @menu=self.menu
  end

  def menu
    puts "Welcome to BATTLESHIP. Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    userInput= gets.chomp.upcase
    case userInput
    when "P"
      puts "Let's goooo!"
      game = Game.new
      game.user_input_first
      game.user_input_second
      game.computer_input_first
      game.computer_input_second
      play_game(game)
    when "I"
      puts "Seriosly, you don't know how to play battleship? Everyone knows how to play battleship"
      menu
    when "Q" then abort("That's too bad, goodbye")
    else
      puts "That's not an option."
      menu
    end
  end

  def play_game(game)
    continue = true
    while(continue)
      game.user_guess
      if game.computer1.health == 0 && game.computer2.health == 0
        continue = false
        abort("YOU WON!")
      else
        game.computer_guess
        if game.player1.health == 0 && game.player2.health == 0
          continue = false
          abort("YOU LOST....BOO")
        end
      end
    end
  end

end
play=Battleship.new
