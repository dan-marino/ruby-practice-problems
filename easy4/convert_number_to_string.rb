DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(number)
  str = ''
  loop do
    number, value = number.divmod(10)
    str.insert(0, DIGITS[value])
    break if number <= 0
  end
  str
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
