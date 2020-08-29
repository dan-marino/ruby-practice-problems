require 'pry'

def fibonacci(number)
  return 1 if number <= 1
  fib = [1, 1]
  counter = 1

  until fib.size == number
    fib << fib[counter] + fib[counter - 1]
    counter += 1
  end
  fib.last
end

# def fibonacci(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end

#   last
# end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501