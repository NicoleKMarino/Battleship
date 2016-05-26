
require "/Users/Nicole/Documents/mod1/battleship/lib/Board.rb"
require "/Users/Nicole/Documents/mod1/battleship/lib/Ship.rb"


class Game
  attr_reader :board
  def initialize
    @board = Board.new
    @player1
    @player2
    @computer1
    @computer2
  end

  def user_input_first
    puts "Where do you want to place your first ship. Remember, this one is 2 coordniates long and they need to connect with each other"
    user_input1=gets.upcase.split(" ")
    if user_input1.size > 2
      puts "Thats too big!"
      user_input_first
    elsif user_input1.size < 2
      puts "Thats not long enough"
      user_input_first
    else
      translated_input = translate_spaces(user_input1)
      @player1 = Ship.new(2,translated_input)
    end
  end

  def user_input_second
    puts "Where do you want to place your second ship. Remember, this one is 3 coordniates long and they need to connect with each other"
    user_input2=gets.upcase.split(" ")
    if user_input2.size > 3
      puts "Thats too big!"
      user_input_second
    elsif user_input2.size < 3
      puts "Thats not long enough"
      user_input_second
    else
      translated_input = translate_spaces(user_input2)
      @player2 = Ship.new(3,translated_input)
    end
  end



  def translate_spaces(user_input)
    user_input.map do |space|
      translate_string(space)
    end
  end

  def translate_string(space)
    new_space = []
    characters = space.scan /\w/
    case characters[0]
    when "A"
      new_space.push(0)
    when "B"
      new_space.push(1)
    when "C"
      new_space.push(2)
    else
      new_space.push(3)
    end

    case characters[1]
    when "1"
      new_space.push(0)
    when "2"
      new_space.push(1)
    when "3"
      new_space.push(2)
    else
      new_space.push(3)
    end
    return new_space
  end


  def computer_input_first
    numbers = [0,1,2,3]
    sample1 = numbers.sample(2)
    h_or_v=[1,2]
    orientation = h_or_v.sample(1)
    if orientation == 1
      if sample1[0] + 1 <= 3
        sample2=[sample1[0] + 1, sample[1]]
      else
        sample2=[sample1[0] - 1, sample[1]]
      end
    else
      if sample1[1] + 1 <= 3
        sample2=[sample1[0], sample1[1] + 1]
      else
        sample2=[sample1[0], sample1[1] - 1]
      end
    end
    @computer1 = Ship.new(2,[sample1, sample2])
  end

  def computer_input_second
    numbers = [0,1,2,3]
    sample1 = numbers.sample(2)
    h_or_v=[1,2]
    orientation = h_or_v.sample(1)
    if orientation == 1
      if sample1[0] + 2 <= 3
        sample2=[sample1[0] + 1, sample[1]]
        sample3=[sample1[0] + 2, sample[1]]
      else
        sample2=[sample1[0] - 1, sample[1]]
        sample3=[sample1[0] - 2, sample[1]]
      end
    else
      if sample1[1] + 2 <= 3
        sample2=[sample1[0], sample1[1] + 1]
        sample3=[sample1[0], sample1[1] + 2]
      else
        sample2=[sample1[0], sample1[1] - 1]
        sample3=[sample1[0], sample1[1] - 2]
      end
    end
    @computer2 = Ship.new(3,[sample1, sample2, sample3])
  end

  def user_guess
    puts "Now, guess where you think their ships are hiding"
    user_guess = gets.upcase
    translated_guess = translate_string(user_guess)
    if @computer1.location.include? translated_guess
      puts "It's a hit!"
      @computer1 = computer1.health.to_i
      @computer1 - 1
    elsif @computer2.location.include? translated_guess
      puts "It's a hit!"
      @computer2 = computer1.health.to_i
      @computer2 - 1
    else
      puts "It's a miss"
    end
  end

  def computer_guess
    numbers = [0,1,2,3]
    guess = numbers.sample(2)
    if @player1.location.include? guess
      puts "It's a hit!"
      @player1.health = player1.health.to_i
      @player1.health - 1
    elsif @player2.location.include? guess
      puts "It's a hit!"
      @player2.health = player1.health.to_i
      @player2.health - 1
    else
      puts "It's a miss"
    end
  end


  def update

  end

end

# example.user_play
