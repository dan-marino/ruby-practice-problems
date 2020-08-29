#Using the code from the previous exercise, 
#move the greeting from the #initialize method to an instance method 
#named #greet that prints a greeting when invoked.

class Cat
  attr_accessor :name
  
  def initialize(nm)
    self.name = nm
    greet
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')