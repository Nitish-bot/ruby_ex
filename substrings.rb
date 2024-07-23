def substrings(words, dict)
  word_array = words.downcase.split(' ')
  # we got an array of words
  # now we check for the full word in dict
  # next we check for substrings of the word in dict
  result = Hash.new(0)
  word_array.each do |word|
    for j in 0...word.length
      for i in 1..word.length
        curword = word[j, i]
        result[curword] += 1 if dict.include?(curword)
      end
    end
  end
  puts result
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings("Howdy partner, sit down! How's it going?", dictionary)
