class Palindromes
  attr_accessor :max_factor, :min_factor, :pals

  def initialize(arg)
    @max_factor = arg[:max_factor]
    @min_factor = arg[:min_factor] || 1
    @pals = Hash.new { |hash, key| hash[key] = [] }
  end

  def generate
    (min_factor..max_factor).to_a.repeated_combination(2) do |x, y|
      pals[x * y] << [x,y] if palindrome?(x * y)
    end
  end

  def largest
    largest_val = pals.keys.max
    Struct.new(:value, :factors).new(largest_val, pals[largest_val])
  end

  def smallest
    smallest_val = pals.keys.min
    Struct.new(:value, :factors).new(smallest_val, pals[smallest_val])
  end

  def palindrome?(num)
    num.to_s == num.to_s.reverse
  end
end
