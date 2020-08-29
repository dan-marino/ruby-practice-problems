class Octal
  attr_reader :arr, :str_arr
  def initialize(str)
    @str_arr = str.chars
    @arr = str.to_i.digits
  end
  
  def to_decimal
    return 0 unless valid?(arr)
    arr.map.with_index do |num, ind|
      num * 8**ind
    end.sum
  end

  def valid?(arr)
    str_arr.all? { |elm| elm.match(/[0-7]/)}
  end
end

# # Misunderstood the first time and thought we were suppsoed to go from octal to decimal

# class Octal
#   attr_reader :int
#   def initialize(str)
#     @int = str.to_i
#   end

#   def to_decimal
#     arr = int.digits.reverse
#     n = arr.size - 1
#     new_arr = []
#     remainder = 0

#     arr.map.with_index do |dig, ind|
#       divisor = arr[ind, n].join.to_i * 10
#       if divisor.zero?
#         new_arr << dig * 10 / 8
#       elsif new_arr.empty?
#         new_arr << (divisor) / 8**n
#         remainder = int % 8**n
#       else
#         new_arr << (remainder) / 8**n
#         remainder = (remainder) % 8**n
#       end
#       n -= 1
#     end
#     new_arr.join.to_i
#   end
# end
