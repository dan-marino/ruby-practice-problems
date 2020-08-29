array = []

def prompt(message, array) 
  puts "Please enter the #{message} number"
  array << gets.chomp.to_i
end

prompt('1st', array)
prompt('2nd', array)
prompt('3rd', array)
prompt('4th', array)
prompt('5th', array)
prompt('6th', array)

last_num = array.pop
if array.include?(last_num)
  puts "The number #{last_num} appears in #{array}."
else
  puts "The number #{last_num} does not appear in #{array}." 
end
