def stock_picker(array)
  # take first number and subtract it from all other numbers and
  # keep taking the highest number again and again
  # storing separately and checking
  best_profit = 0
  for i in 0...array.length
    for j in (i + 1)...array.length
      profit = array[j] - array[i]
      if profit > best_profit
        best_profit = profit
        results = [i, j]
      end
    end
  end
  puts results
end

stock_picker([3, 17, 6, 9, 15, 8, 6, 1, 3])
