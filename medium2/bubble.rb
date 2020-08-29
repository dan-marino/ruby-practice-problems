# write a bubble sort method. on each pass each pair of consecutive elements is compared
# if the first of the two elements is greater than the second, then the two elements
# are swapped. This process is repeated until a complete pass is made without performing any swaps

# set swaps to -1
# until swaps.zero?
#   set swaps to 0
#   set ind to 0
#   
#   loop through comparing current element to next elem
# => if larger swap
# add one to swap counter
# end

def bubble_sort!(arr)
  swaps = -1

  until swaps.zero?
    swaps = 0
    ind = 0

    until ind == arr.size - 1
      if arr[ind] > arr[ind + 1]
        arr[ind], arr[ind + 1] = arr[ind + 1], arr[ind]
        swaps += 1
      end
      ind += 1
    end
  end
  arr
end



array = [5, 3]
p bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)