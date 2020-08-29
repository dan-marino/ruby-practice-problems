require 'pry'

def halvsies(arr)
  half = (arr.size / 2.0).ceil
  first_half = arr[0..(half - 1)]
  second_half = arr[(half)..-1]
  [first_half, second_half]

end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]