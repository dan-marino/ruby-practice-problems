# write a method that rotates an array by moving the first element to the end of the array. 
# the original array should not be modified don't use rotate method

# input array
# output new array

# clone, shift, push

def rotate_array(arr)
  rotate = arr.clone
  rotate.push(rotate.shift)
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]  