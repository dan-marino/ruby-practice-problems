# input two arrays
# output 1 sorted array

# set big_arr to combined arrays
# set saved_num to big_arr.shift
# add num to sorted_arr if all numbers greater or equal to saved_num
# else add saved num to the back of big_arr
# end


def merge(arr1, arr2)
  big_arr = arr1 + arr2
  sorted_arr = []

  until big_arr.empty?
    saved_num = big_arr.shift
    if big_arr.all? { |num| num >= saved_num }
      sorted_arr << saved_num
    else
      big_arr.push(saved_num)
    end
  end
  sorted_arr
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

