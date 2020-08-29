class DNA
  attr_reader :str1
  def initialize(str1)
    @str1 = str1
  end

  def hamming_distance(str2)
    short, long = [str1, str2].sort_by(&:size)

    short.chars.reject.with_index do |elm, ind|
      short[ind] == long[ind]
    end.count
  end
end
