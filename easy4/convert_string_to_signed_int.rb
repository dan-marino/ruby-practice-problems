DIGITS = {'1' => 1 ,'2' => 2 ,'3' => 3 ,'4' => 4 ,'5' => 5 ,
          '6' => 6 ,'7' => 7 ,'8' => 8 ,'9' => 9 ,'0' => 0}

def string_to_integer(string)
  int = 0
  string.chars do |num|
    int += DIGITS[num]
    int *= 10
  end
  int / 10
end

def string_to_signed_integer(str)
  return string_to_integer(str) if str =~ /\A[0-9]/
  str.slice!(0) == '+' ? string_to_integer(str) : -string_to_integer(str)
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100