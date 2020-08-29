def each(arg)
  for num in arg
    yield(num)
  end
  arg
end

p each([1, 2, 3]) { |num| "do nothing" }
p each([1, 2, 3, 4, 7, 8]) { |num| puts num }
p each([1, 2, 3, 4]) { puts "hello" }