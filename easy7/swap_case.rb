def swapcase(str)
  str.split('').map do |letter|
    if letter =~ /[A-Z]/
      letter.downcase!
    elsif letter =~ /[a-z]/
      letter.upcase!
    else
      letter
    end
  end.join('')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'