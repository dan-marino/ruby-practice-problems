# Write a method called count that behaves similarly 
# for an arbitrarily long list of arguments. 
# It should take 0 or more arguments and a block, 
# and then return the total number of arguments for which the block returns true.

def count(*arr)
  counter = 0
  arr.each { |elm| counter += 1 if yield(elm) }
  counter
end

count(1, 3, 6) { |value| value.odd? } == 2
count(1, 3, 6) { |value| value.even? } == 1
count(1, 3, 6) { |value| value > 6 } == 0
count(1, 3, 6) { |value| true } == 3
count() { |value| true } == 0
count(1, 3, 6) { |value| value - 6 } == 3