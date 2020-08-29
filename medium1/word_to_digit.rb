DIGITS = %w(zero one two three four five six seven eight nine)

def word_to_digit(str)
  pattern = /\b#{Regexp.union(DIGITS)}\b/
  str.gsub(pattern) { |match| DIGITS.index(match).to_s }
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
