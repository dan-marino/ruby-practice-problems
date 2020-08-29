def short_long_short(str1, str2)
  case str1.length <=> str2.length
  when -1 then str1 + str2 + str1
  when 1 then str2 + str1 + str2
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
