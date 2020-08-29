# featured number is an odd number that is a multiple of 7 and whose digits
# occure exactly once each. so 49 is featured but not 98, 97 is not, and 133 is not
# write a method that takes a single integer as an arguemtn and returns the next featured number that is greater than the arguemtn
# issue error message if there is no next featured number

# input number
# output number

# take our number and divide it by 7
# if number is even, add one
# set starting point to 7 * that number
# make digit an array and the array size will be our index
# if the current elem == the next elem, return invalid

def featured(num)
  return "There is no possible number that fulfills those requirements" if num >= 9_999_999_999
  start = (num / 7) + 1
  start.even? ? feature = 7 * (start + 1) : feature = 7 * start
  
  until feature.digits.uniq == feature.digits
    feature += 14
  end
  feature
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
  
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements