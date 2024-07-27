# frozen_string_literal: true

# This class defines the game
class Mastermind


  ELEMENTS = [1, 2, 3, 4, 5, 6]
  
  def initialize
    rand_code
    turn = player.chaal
    check_guess(turn)
  end

  def rand_code
    secret_code = []
    4.times do
      secret_code.push(ELEMENTS.sample)
    end
  end

  def analyze(code)
    code.select {|el| if secret_code.include(el)}
  end
end
