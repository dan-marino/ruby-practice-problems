# write a method that takes an integer as arguemtn and returns the maximum rotation of that argument

def rotate_array(arr)
  rotate = arr.clone
  rotate.push(rotate.shift)
end

def rotate_rightmost_digits(num, place)
  num_arr = num.digits.reverse
  rotate_arr = num_arr.pop(place)
  (num_arr + rotate_array(rotate_arr)).join.to_i
end

def max_rotation(num)
  place = num.digits.size
  place.times do 
    num = rotate_rightmost_digits(num, place)
    place -= 1
  end
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845