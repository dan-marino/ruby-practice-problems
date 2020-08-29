# Write a class that will display:

# ABC
# xyz

class Transform
  attr_accessor :info
  def initialize(info)
    @info = info
  end

  def uppercase
    info.upcase
  end

  def self.lowercase(input)
    input.downcase
  end
end


my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')