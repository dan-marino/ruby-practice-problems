require 'pry'

def find_fibonacci_index_by_length(integer)
  digits = 10 ** (integer - 1)
  fibonacci = [1, 1]
  counter = 1
  until fibonacci.last >= digits
    next_num = fibonacci[counter] + fibonacci[counter - 1]
    fibonacci << next_num
    counter += 1
  end
  fibonacci.count
end

p find_fibonacci_index_by_length(2) == 7     # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12   # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847