def double_consonants(str)
  doubled = ''
  str.each_char do |letter|
    if letter =~ /[^aeiou\d]/i && letter =~ /\w/i
      doubled << letter * 2
    else
      doubled << letter
    end
  end
  doubled
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""