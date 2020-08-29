# # Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc
# puts my_proc.class
# my_proc.call
# my_proc.call('cat')

# Procs are objects that point to a block.
# Procs don't complain when too few or too many arguments get passed into the block.
# This argument behavior is similar to that of a block.
# Procs are part of the Proc class

# # Group 2
# my_lambda = lambda { |thing| puts "This is a #{thing}." }
# my_second_lambda = -> (thing) { puts "This is a #{thing}." }
# puts my_lambda
# puts my_second_lambda
# puts my_lambda.class
# my_lambda.call('dog')
# my_lambda.call
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

# Lambdas are part of the Proc class
# There's a variety of syntax for instantiating a lambda
# you can instantiate one with a normal Proc syntax or use = ->, wrap the
# parameter in parentheses, and have the block come after.
# Lamdas complain if the correct number of arguments don't get passed in.
# You can't create a lambda with Lambda.new since it is not a class

# # Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal')

# LocalJumpMethod when you don't give a block to a method expecting a block
# you can avoid this error by calling block_given? method inside the method definition.

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

# Blocks don't complain about having the correct amount of arguments being passed in
# However, the block does need at least one parameter if the yield method is passing in an argument
  