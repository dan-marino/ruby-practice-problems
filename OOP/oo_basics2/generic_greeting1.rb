#Modify the following code so that Hello! I'm a cat! is printed when Cat.generic_greeting is invoked.

class Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
end

Cat.generic_greeting

# # FFO

class Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
end

kitty = Cat.new
# kitty.generic_greeting # => undefined method `generic_greeting' for #<Cat:0x007fbdd3875e40> (NoMethodError)

# the reason the kitty_generic_greeting throws an error is because you are calling a Class method on an object
kitty.class.generic_greeting
# the reason this doesn't throw an error is because the class method calls the class of kitty which is Cat
# since the methods are chained, then generic_greeting is uses the class Cat as the caller
