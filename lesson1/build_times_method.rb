def times(numbr)
  range = (0...numbr).to_a
  for num in range
    yield(num)
  end
  numbr
end

p times(5) { |num| puts num }
p times(5) { |num| puts "hello" }
