require 'time'
t = Time.now

puts "What is your age?"
current_age = gets.chomp

puts "What age would you like to retire?"
retirement_age = gets.chomp

current_year = t.year
years_till_retirement = retirement_age.to_i - current_age.to_i
retirement_year = current_age.to_i + current_year

puts <<-MSG
It's #{current_year}. You will retire in #{retirement_year}!
You only have #{years_till_retirement} years of work to go!
MSG
