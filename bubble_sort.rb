def bubble_sort(arr)
  n = arr.length
  loop do
    swapped = false
    for i in 1..(n - 1)
      if arr[i - 1] > arr[i]
        arr[i], arr[i - 1] = arr[i - 1], arr[i]
        swapped = true
      end
    end
    break if not swapped
  end
  return arr
end
p bubble_sort([4,3,78,2,0,2])
