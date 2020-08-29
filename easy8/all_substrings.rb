def substrings(str)
  counter = -str.size
  big_arr = []

  until counter == 0
    str.chars.select.with_index do |_, ind|
      big_arr << str[counter..ind] unless str[counter..ind] == ''
    end
    counter += 1
  end
  big_arr
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]