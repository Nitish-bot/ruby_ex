def caesar_cipher(str, num)
  strarray = str.split('')
  strarray = strarray.map do |item|
    if item =~ /[A-Za-z]/
      if num.positive?
        newval = item.downcase.ord + num
        item = newval > 'z'.ord ? (item.ord - 26 + num).chr : (item.ord + num).chr
      else
        newval = item.downcase.ord + num
        item = newval < 'a'.ord ? (item.ord + 26 + num).chr : (item.ord + num).chr
      end
    else
      item = item
    end
  end
  puts strarray.join('')
end

caesar_cipher('AbC!!d', -1)
