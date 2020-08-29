def reduce(arr, start=0)
  if arr.all? { |elm| elm.class == Array }
    acc = []
  elsif arr.all? { |elm| elm.class == String }
    acc = ''
  elsif start.class == Integer
    acc = start
  end

  for elm in arr
    acc = yield(acc, elm)
  end
  acc
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
# p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass

p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
