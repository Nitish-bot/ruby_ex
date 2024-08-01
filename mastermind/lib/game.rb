# frozen_string_literal: true

# This class defines the game
class Mastermind
  attr_accessor :secret_code

  ELEMENTS = %w[1 2 3 4 5 6].freeze

  def initialize
    rand_code
    turn = take_guess
    analyze(turn)
  end

  def rand_code
    self.secret_code = []
    4.times do
      secret_code.push(ELEMENTS.sample)
    end
    p secret_code
  end

  def analyze(code)
    chk = secret_code.dup
    result = [0, 0]
    code.each_with_index do |element, index|
      p chk, code
      if chk[index] == element
        result[0] += 1
        code[index] = chk[index] = nil
      elsif chk.include?(element)
        result[1] += 1
        code[code.index(element)] = chk[chk.index(element)] = nil
      end
    end
    p result
  end

  def take_guess
    puts 'Enter your guess in the following format: <XXXX>'
    puts 'X represents 1 digit ranging from 1-6'
    gets.chomp.split('')
  end
end

# 1224
# 2335
