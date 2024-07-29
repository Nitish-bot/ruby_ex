# frozen_string_literal: true

# This class defines the game
class Mastermind
  attr_accessor

  ELEMENTS = [1, 2, 3, 4, 5, 6].freeze

  def initialize
    rand_code
    turn = player.chaal
    check_guess(turn)
  end

  def rand_code
    secret_code = []
    4.times do
      secret_code.push(SELEMENTS.sample)
    end
  end

  def analyze(code)
    code.select { |el| secret_code.include(el) }
  end
end
