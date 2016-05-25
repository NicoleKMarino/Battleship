gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require "minitest/pride"
require "pry"
require "../lib/Battleship.rb"

class BattleshipTest < Minitest::Test
  def list
    ::Battleship.new
  end

  def test_menu_play

  end

  def test_menu_instructions
  end

  def test_menu_quit
    
  end

end
