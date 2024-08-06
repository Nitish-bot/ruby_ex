# frozen_string_literal: true

# This class defines logic for computer to guess
class Computer
  include Checker

  attr_accessor :started, :set, :result

  def initialize(secret_c)
    self.secret = secret_c
    self.started = false
    set = (1..6).to_a.repeated_permutation(4).to_a
  end

  def playc
    if !started
      self.result = check(%w[1 1 2 2])
    else
      remove
    end
  end

  def remove
    self.set = set.select { |guess| check(guess) == result }
  end
end
