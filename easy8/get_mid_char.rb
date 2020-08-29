def center_of(str)
  halfway = (str.size / 2.0)

  if halfway % 1.0 == 0
    str[halfway -1] + str[halfway]
  else
    str[halfway]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'