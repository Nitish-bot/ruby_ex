def bubble_sort(array)
  sorted = false
  while !sorted
    for i in 0...(array.length - 1)
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
  end
  puts array
  return true
end


bubble_sort([4,3,78,2,0,2])