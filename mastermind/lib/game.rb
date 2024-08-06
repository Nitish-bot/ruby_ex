# frozen_string_literal: true

# This class defines the game
class Mastermind
  include Checker

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
    puts secret_code
  end

  def play
    guess = take_guess
    result = check(guess, secret_code)
    if result[0] == 1
      self.solved = true
      puts 'Congratulations you have solved this shii'
    else
      puts "You have #{result[1]} elements in the correct place"
      puts "and #{result[2]} elements in the incorrect place\n"
    end
  end

  def take_guess
    puts 'Enter your guess in the following format: <XXXX>'
    puts 'X represents 1 digit ranging from 1-6'
    gets.chomp.split('')
  end
end
