arr = []

puts "Enter the first number:"
arr << gets.chomp.to_i

puts "Enter the second number:"
arr << gets.chomp.to_i

puts "#{arr[0]} + #{arr[1]} = #{arr.inject(:+)}"
puts "#{arr[0]} - #{arr[1]} = #{arr.inject(:-)}"
puts "#{arr[0]} * #{arr[1]} = #{arr.inject(:*)}"
puts "#{arr[0]} / #{arr[1]} = #{arr.inject(:/)}"
puts "#{arr[0]} ** #{arr[1]} = #{arr.inject(:**)}"
