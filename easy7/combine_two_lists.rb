def interleave(arr1, arr2)
  int_arr = []
  iterations = arr1.size * 2
  counter = 0

  until int_arr.size == iterations
    int_arr << arr1[counter]
    int_arr << arr2[counter]
    counter += 1
  end
  int_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# # FFO

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']