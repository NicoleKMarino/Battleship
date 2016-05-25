
require "/Users/Nicole/Documents/mod1/battleship/lib/Board.rb"
require "/Users/Nicole/Documents/mod1/battleship/lib/Ship.rb"


class Game
  attr_reader :board
  def initialize
  @board = Board.new
  end

def user_input_first
  puts "Where do you want to place your first ship. Remember, this one is 2 coordniates long and they need to connect with each other"
  user_input1=gets.upcase.scan /\w/
  puts user_input1
  if user_input1.size > 4
    puts "Thats too big!"
    user_input_first
  elsif user_input1.size < 4
    puts "Thats not long enough"
    user_input_first
  else
    ship1 = Ship.new(user_input1.size, user_input1)
  end
  user_guess(ship1.location)
end

def user_input_second
  puts "Where do you want to place your second ship. Remember, this one is 3 coordniates long and they need to connect with eachother. "
user_input2=gets.upcase.scan /\w/
  if user_input2.size > 6
    puts "That's too big"
    user_input_second
  elsif user_input2.size < 6
    puts "Thats not long enough"
    user_input_second
  else
    ship2 = Ship.new(user_input2.size,user_input2)
  end
end


def computer_input
  spaces = {"A"=>[1,2,3,4],"B"=>[1,2,3,4],"C"=>[1,2,3,4],"D"=>[1,2,3,4]}
  random_key = spaces.keys.sample(2)
  random_value = spaces.values.sample(2)
  puts random_key
  puts random_value

end

def user_guess(location)
  puts "Now, guess where you think their ships are hiding"
  user_guess = gets.upcase.split(" ")
  puts user_guess
  puts location
end



def check_position(location)

end

def update

end

end

# example.user_play
