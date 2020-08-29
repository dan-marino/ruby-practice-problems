# def fibonacci_last(num)
#   first, last = [1, 1]
#   3.upto(num) do
#     first, last = [last, first + last]
#   end

#   last.to_s[-1].to_i
# end

# def fibonacci_last(nth)
#   last_2 = [1, 1]
#   3.upto(nth) do
#     last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
#   end

#   last_2.last
# end

def fibonacci(nth)
  return 1 if nth <= 2
  last_two = [1, 1]
  3.upto(nth) { last_two << (last_two[-1] + last_two[-2])} 
  last_two.last
end

def fibonacci_last(nth)
  return fibonacci(60).digits.first if nth == 60

  fibonacci(nth % 60).digits.first
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4