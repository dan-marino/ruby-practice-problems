def multiply_list(arr1, arr2)
  arr1.map.with_index do |_, ind|
    arr1[ind] * arr2[ind]
  end
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# # FFO

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |sub_a| sub_a.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])