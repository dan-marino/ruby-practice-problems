# write a method that takes a string and the returns a hash that contains 
# 3 entries: one represents the percentage of characters in the string that are lowercase letters
# one the percentage of characters that are uppercase letters
# and one the percentage of characters that are neither
# you may assume that the string will always contain at least one character

#input string
#output hash with 3 keys

#length of string
#split string by characters
#add directly to hash
#then divide each value by string length with fdiv
#round to first decimal place



def letter_percentages(str)
  hsh = { lowercase: 0, uppercase: 0, neither: 0 }

  str.chars.each do |elem|
    if elem =~ /[a-z]/
      hsh[:lowercase] += 1
    elsif elem =~ /[A-Z]/
      hsh[:uppercase] += 1
    else
      hsh[:neither] += 1
    end
  end
  hsh.transform_values! { |v| format('%.1f', v.fdiv(str.length) * 100).to_f }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }