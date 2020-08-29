# Now that we have a Walkable module, we are given a new challenge. 
# Apparently some of our users are nobility, 
# and the regular way of walking simply isn't good enough. Nobility need to strut.

# We need a new class Noble that shows the title and name when walk is called:
#We must have access to both name and title because 
#they are needed for other purposes that we aren't showing here.

module Walkable
  def walk
    puts "#{self} #{gait} forward"
  end
end

class Creature
  attr_reader :name

  include Walkable

  def initialize(name)
    @name = name
  end

  def to_s; name end
end

class Person < Creature
  private

  def gait; "strolls" end
end

class Cat < Creature
  private

  def gait; "saunters" end
end

class Cheetah < Creature
  private

  def gait; "runs" end
end

class Noble < Creature
  attr_reader :title

  def initialize(name, title)
    super(name)
    @title = title
  end

  def to_s; "#{title} #{name}" end

  private

  def gait; "struts" end
end


mike = Person.new("Mike")
mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
flash.walk
# => "Flash runs forward"

byron = Noble.new("Byron", "Lord")
byron.walk
# => "Lord Byron struts forward"

p byron.name
# => "Byron"
p byron.title
# => "Lord"