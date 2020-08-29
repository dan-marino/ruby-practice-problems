# Write a class that implements a miniature stack-and-register-based 
# programming language that has the following commands:

#   n Place a value n in the "register". Do not modify the stack.
#   PUSH Push the register value on to the stack. Leave the value in the register.
#   ADD Pops a value from the stack and adds it to the register value, 
#       storing the result in the register.
#   SUB Pops a value from the stack and subtracts it from the register value, 
#       storing the result in the register.
#   MULT Pops a value from the stack and multiplies it by the register value, 
#       storing the result in the register.
#   DIV Pops a value from the stack and divides it into the register value, 
#       storing the integer result in the register.
#   MOD Pops a value from the stack and divides it into the register value, 
#       storing the integer remainder of the division in the register.
#   POP Remove the topmost item from the stack and place in register
#   PRINT Print the register value

# All operations are integer operations (which is only important with DIV and MOD).

# Programs will be supplied to your language method via a string passed in as an argument. 
# Your program should produce an error if an unexpected item is present in the string, 
# or if a required stack value is not on the stack when it should be (the stack is empty). 
# In all error cases, no further processing should be performed on the program.

# You should initialize the register to 0.

require 'pry'

class Minilang

  METHODS = %w(PUSH ADD SUB MULT DIV MOD POP PRINT)

  def initialize(str)
    @str = str.clone
    @register = 0
    @stack = []
  end

  def str_translate
    str.split.each do |elem|
      if elem =~ /\d/
        self.register = elem.to_i
      elsif METHODS.include?(elem)
        method_translate(elem)
      else
        invalid_token(elem)
        return
      end
    end
  end

  def invalid_token(token)
    puts "Invalid token: #{token}"
  end

  def print_register
    puts register.nil? ? "Stack empty!" : register
  end

  def method_translate(word)
    case word
    when 'PUSH' then stack << register
    when 'ADD' then self.register += stack.pop
    when 'SUB' then self.register -= stack.pop
    when 'MULT' then self.register *= stack.pop
    when 'DIV' then self.register /= stack.pop
    when 'MOD' then self.register %= stack.pop
    when 'POP' then self.register = stack.pop
    when 'PRINT' then print_register
    end
  end

  def no_print_command?
    !!(print_error)
  end

  def print_error
    translated_arr = str.split
    if !translated_arr.include?('PRINT')
      puts "(nothing printed; no PRINT commands)"
    end
  end

  def eval
    str_translate
    print_error if no_print_command?
  end

  protected

  attr_reader :stack, :str, :register
  attr_writer :register
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)
