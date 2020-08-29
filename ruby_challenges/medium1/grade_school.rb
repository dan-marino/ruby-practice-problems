class School
  attr_reader :roll_call

  def initialize
    @roll_call = Hash.new
  end

  def to_h
    @roll_call.each { |k, v| v.sort! }
    @roll_call.sort_by {|k, v| k }.to_h
  end

  def add(name, num)
    if @roll_call.has_key?(num)
      @roll_call[num] << name
    else
      @roll_call[num] = [name]
    end
  end

  def grade(num)
    @roll_call.has_key?(num) ? @roll_call[num] : []
  end  
end
