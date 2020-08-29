def valid_num(num)
  num =~ /\A\d+\Z/
end

num = ''
loop do
  puts "Please enter an integer greater than zero."
  num = gets.chomp
  break if valid_num(num)
  puts "Invalid integer."
end

puts "Enter 's' to compute the sum, 'p' to computer the product."
operation = gets.chomp

if operation == 's'
  sum = (1..num.to_i).inject(:+).to_s
  puts "The sum of the integers between 1 and #{num} is #{sum}"
elsif operation == 'p'
  product = (1..num.to_i).inject(:*).to_s
  puts "The product of the integers between 1 and #{num} is #{product}"
else
  puts "Invalid input."
end
