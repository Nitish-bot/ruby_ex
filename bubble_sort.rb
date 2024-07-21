def bubble_sort(array)
  sorted = false
  while !sorted
    sorted = true
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

bubble_sort([10, 2, 6, 2, 1, 5, 8, 6, 0, 2, 8, 9])