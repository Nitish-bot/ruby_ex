# frozen_string_literal: true

require_relative 'lib/game'

# This is the main class that calls the game
class PlayGame
  attr_accessor :game

  def initialize
    self.game = Mastermind.new
  end
end

PlayGame.new
