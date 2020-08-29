def century(number)
  if number % 100 == 0
    century = number / 100 
  else
    century = number / 100 + 1
  end
  suffix = add_suffix(century)
  century.to_s + suffix
end

def add_suffix(century)
  ending = century % 100
  return 'th' if [11, 12, 13].include?(ending)
  return 'st' if ending.to_s =~ /1$/
  return 'nd' if ending.to_s =~ /2$/
  return 'rd' if ending.to_s =~ /3$/
  return 'th'
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
