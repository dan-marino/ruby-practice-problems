require 'pry'

class SumOfMultiples
  attr_reader :arr

  def initialize(*arr)
    @arr = arr
  end
  
  def to(limit)
    mults = []
    arr.each do |num|
      (num...limit).step(num) { |elm| mults << elm }
    end

    mults.uniq.sum
  end

  def self.to(limit)
    mults = []
    [3, 5].each do |num|
      (num...limit).step(num) { |elm| mults << elm }
    end

    mults.uniq.sum
  end

  # def self.to(limit)                      # => not sure if this is allowed?
  #   self.new(3, 5).to(limit)
  # end
end
