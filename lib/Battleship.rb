class Battleship

  def menu
    puts "Welcome to BATTLESHIP. Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    userInput= gets.chomp.upcase
    case userInput
    when "P" then play_time
    when "I"
      puts "instructions coming soon"
      menu
    when "Q" then abort("That's too bad, goodbye")
    else
      puts "That's not an option."
      menu
    end
  end
play=Battleship.new
play.menu
end
