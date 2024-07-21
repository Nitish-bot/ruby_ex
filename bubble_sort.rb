def bubble_sort(array)
  for i in 0...(2 ** array.length)
    sorted = true
    for i in 0...(array.length - 1)
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
    if sorted 
      puts array
      return true
    end
  end
end

bubble_sort([4,3,78,2,0,2])