def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

# # FFO

def middle_word(str)
  halfway = (str.split.size / 2.0)
  if halfway % 1.0 == 0.0
    str.split[halfway - 1] + ' ' + str.split[halfway]
  else
    halfway -= 0.5
    str.split[halfway]
  end
end

p middle_word('last word') == 'last word'
p middle_word('Launch School is great!') == 'Launch School is great!'
p middle_word('The worse is over now.') == 'is'
