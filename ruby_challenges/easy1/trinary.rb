require 'pry'

class Trinary
  attr_reader :int
  
  def initialize(str)
    @int = str.to_i.digits
  end

  def to_decimal
    int.map.with_index { |dig, ind| dig * 3**ind }.sum
  end
end
