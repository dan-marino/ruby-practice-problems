puts "What's your name"
name = gets.chomp

if name =~ /\!$/
  puts "HELLO #{name.upcase.gsub('!', '.')} WHY ARE WE SCREAMING?"
else
  puts "Hello, #{name.capitalize}."
end