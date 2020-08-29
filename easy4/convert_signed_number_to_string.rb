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

def signed_integer_to_string(number)
  if number > 0
    '+' + integer_to_string(number)
  elsif number < 0
    '-' + integer_to_string(-number)
  else
    DIGITS[0] if number == 0
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'