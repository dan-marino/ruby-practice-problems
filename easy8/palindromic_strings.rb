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

def palindromes(str)
  substrings(str).select { |sub_a| sub_a if palindrome?(sub_a) }
end

def palindrome?(str)
  str == str.reverse && str.size > 1
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]