# frozen_string_literal: true

# This class defines logic for computer to guess
class Computer
  attr_accessor :started, :set

  def initialize
    self.started = false
    set = (1..6).to_a.repeated_permutation(4).to_a
  end

  def play
    if !started
      return ['1', '1', '2', '2']
    else

    end
  end
end
