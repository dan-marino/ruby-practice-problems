def print_in_box(str)
  width = ("+" + ("-" * (str.length + 2)) + "+")
  empty_side = "|" + ( " " * (str.length + 2)) + "|"
  text_side = "| #{str} |"
  puts width
  puts empty_side
  puts text_side
  puts empty_side
  puts width
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('Short text')
