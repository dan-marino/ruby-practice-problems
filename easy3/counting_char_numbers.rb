puts "Please write a word or phrase:"
message = gets.chomp

chars_count = message.split.join.size

puts "There are #{chars_count} characters in '#{message}'."
