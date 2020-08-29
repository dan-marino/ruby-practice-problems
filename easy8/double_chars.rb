def repeater(str)
  doubled = ''
  str.each_char do |letter|
    doubled << letter * 2
  end
  doubled
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''