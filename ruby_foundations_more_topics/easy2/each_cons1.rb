# Write a method called each_cons that behaves similarly for Arrays, 
# taking the elements 2 at a time. The method should take an Array as an argument, 
# and a block. It should yield each consecutive pair of elements to the block, and return nil.

def each_cons(arr)
  counter = arr.size - 1
  new_arr = []

  until counter <= 0
    new_arr << [arr[-counter - 1], arr[-counter]]
    counter -= 1 
  end

  new_arr.each { |subarr| yield(subarr.first, subarr.last)}
  nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil
