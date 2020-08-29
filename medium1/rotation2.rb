# write a method that can rotate the last n digits of a number

# digit into an array
# pop off the number of places in array
# send that return to rotate arr
# append that num, put it back to int

def rotate_array(arr)
  rotate = arr.clone
  rotate.push(rotate.shift)
end

def rotate_rightmost_digits(num, place)
  num_arr = num.digits.reverse
  rotate_arr = num_arr.pop(place)
  (num_arr + rotate_array(rotate_arr)).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
