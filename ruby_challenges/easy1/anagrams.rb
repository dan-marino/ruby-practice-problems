class Anagram
  attr_reader :str
  def initialize(str)
    @str = str
  end

  def match(arr)
    arr.select do |word|
      word.downcase != str.downcase && 
      letters(word) == letters(str)
    end
  end

  def letters(str)
    str.downcase.chars.sort
  end
end