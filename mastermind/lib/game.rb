# frozen_string_literal: true

# This class defines the game
class Mastermind
  attr_accessor :secret_code, :solved

  ELEMENTS = %w[1 2 3 4 5 6].freeze

  def initialize
    rand_code
    self.solved = false
    play until solved
  end

  def rand_code
    self.secret_code = []
    4.times do
      secret_code.push(ELEMENTS.sample)
    end
  end

  def play
    guess = take_guess
    result = check(guess)
    if result[0] == 1
      self.solved = true
      puts 'Congratulations you have solved this shii'
    else
      puts "You have #{result[1]} elements in the correct place"
      puts "and #{result[2]} elements in the incorrect place\n"
    end
  end

  def check(guess)
    result = [0, 0, 0]
    chk = secret_code.dup
    if !chk.eql?(guess)
      analyze(chk, guess, result)
    else
      result[0] = 1
    end
    result
  end

  def analyze(chk, code, result)
    code.each_with_index do |element, index|
      if chk[index] == element
        result[1] += 1
        code[index] = chk[index] = nil
      elsif chk.include?(element)
        result[2] += 1
        code[code.index(element)] = chk[chk.index(element)] = nil
      end
    end
  end

  def take_guess
    puts 'Enter your guess in the following format: <XXXX>'
    puts 'X represents 1 digit ranging from 1-6'
    gets.chomp.split('')
  end
end

# 1224
# 2335
