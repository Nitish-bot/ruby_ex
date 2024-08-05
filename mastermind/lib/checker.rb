# frozen_string_literal: true

# This module checks for any guess
module Checker
  def check(guess, secret)
    result = [0, 0, 0]
    chk = secret.dup
    if !chk.eql?(guess)
      result[1] = analyze_eql(chk, guess)
      result[2] = analyze_incl(chk, guess)
    else
      result[0] = 1
    end
    result
  end

  def analyze_eql(chk, code)
    res = 0
    code.each_with_index do |element, index|
      if chk[index] == element
        res += 1
        code[index] = chk[index] = nil
      end
    end
    res
  end
end

def analyze_incl(chk, code)
  res = 0
  code.each do |element|
    next if element.nil?

    if chk.include?(element)
      res += 1
      code[code.index(element)] = chk[chk.index(element)] = nil
    end
  end
  res
end
