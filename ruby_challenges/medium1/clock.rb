class Clock
  attr_accessor :hour, :min

  def initialize(hour, min)
    @hour = hour
    @min = min
    adjust_time
  end

  def self.at(hour, min=0)
    new(hour, min)
  end

  def to_s
    format('%02d:%02d', hour, min)
  end

  def +(add_mins)
    self.class.new(hour, min + add_mins)
  end

  def -(sub_mins)
    self.class.new(hour, min - sub_mins)
  end 

  def ==(other)
    self.to_s == other.to_s
  end

  private

  def adjust_time
    self.hour += min / 60
    self.hour %= 24
    (min < 0) || (min > 60) ? self.min %= 60 : min
  end
end
