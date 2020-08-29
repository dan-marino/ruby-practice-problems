# Write a method called max_by that behaves similarly for Arrays. 
# It should take an Array and a block, and return the element that contains the largest value.

require 'pry'

def max_by(arr)
  high_value = nil
  high_elm = nil

  arr.each do |elm|
    if high_value.nil? || yield(elm) > high_value
      high_value, high_elm = yield(elm), elm
    end
  end
  
  high_elm
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil
