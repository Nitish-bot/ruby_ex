# frozen_string_literal: true

require_relative 'lib/checker'
require_relative 'lib/game'
require_relative 'lib/computer'

# This is the main class that calls the game
class PlayGame
  attr_accessor :game

  def initialize
    Computer.new()
    self.game = Mastermind.new
  end
end

PlayGame.new
