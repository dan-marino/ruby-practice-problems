puts "What is the bill?"
bill = gets.chomp

puts "What is the tip percentage?"
tip = gets.chomp

tip_total = (tip.to_f * 0.01 * bill.to_f).round(2)
total = (tip_total.to_f + bill.to_f).to_s

puts "The tip is $#{format('%.2f', tip_total)}"
puts "The total is $#{format('%.2f', total)}"