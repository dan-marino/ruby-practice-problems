# Write a method called drop_while that behaves similarly for Arrays. 
# It should take an Array as an argument, and a block. It should return all the elements of the Array, 
# except those elements at the beginning of the Array that produce a truthy value when passed to the block.

def drop_while(arr)
  drop = false
  arr.select do |elm|
    if drop
      elm
    else
      yield(elm) ? nil : drop = true
    end
  end
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []
