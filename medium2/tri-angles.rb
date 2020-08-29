# write a method that takes the 3 angles of a triangle as arguments
# and returns a symbol :right, :acute, :obtuse, :invalid
# you may assume integer valued angles so you don't have to worry about floating point errors
# you may also assume that the arguments are specified in degrees

#input 3 nums
#output symbol

# array
# invalid sum is not 180 or angle >= 180
# if array includes 90 its right
# if array includes num > 90 obtuse
# else its acute

def triangle(ang1, ang2, ang3)
  arr = [ang1, ang2, ang3]
  return :invalid if arr.sum != 180 || arr.include?(0)
  if arr.include?(90)
    :right
  elsif arr.any? { |ang| ang > 90 }
    :obtuse
  else
    :acute
  end 
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid