def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

string = "hello world"
p spin_me(string) # "olleh dlrow"
p string

# => it will not be mutated and return as a different object
# => it is being turned into an array with the split function
# => thus making it a different object