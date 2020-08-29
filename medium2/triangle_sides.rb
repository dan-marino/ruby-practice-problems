# write a method that takes the lengths of the 3 sides of a triangle as arguments
# and returns a symbol :equilateral, :isosceles, :scalene or :invalid depending
# on triangle type

#input 3 numbers
#output a symbol

# set array to 3 numbers
# sort array

# if num1 == num2 && num2 == num3
#   :equiladeral
# elsif arr[1] == arr[2]
#   :isosceles
# elsif arr.first.zero? || arr[0] == arr[1]\
# else scalene

def triangle(num1, num2, num3)
  arr = [num1, num2, num3].sort

  if num1 == num2 && num2 == num3
    :equilateral
  elsif arr.first.zero? || arr[0] == arr[1]
    :invalid
  elsif arr[1] == arr[2]
    :isosceles
  else 
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
p triangle(0, 2, 3) == :invalid