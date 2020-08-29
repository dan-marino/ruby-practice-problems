# write a method that takes an array as an argument. 
# The method should yield the contents of the array to a block, 
# which should assign your block variables in such a way that it ignores the first two elements, 
# and groups all remaining elements as a raptors array.

birds = %w(raven finch hawk eagle)

def create_raptors(arr)
  yield(arr)
end

create_raptors(birds) { |_, _, *raptors| puts raptors }
