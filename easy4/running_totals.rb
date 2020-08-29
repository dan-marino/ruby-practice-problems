def running_total(array)
  runnings = []
  until array.empty?
    runnings << array.sum
    array.pop
  end
  runnings.reverse
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []