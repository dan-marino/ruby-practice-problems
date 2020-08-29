class Crypto
  attr_accessor :arr
  def initialize(str)
    @arr = normalize(str)
  end

  def normalize(input)
    input.downcase.chars.reject { |char| char =~ /[^a-z0-9]/ }
  end

  def normalize_plaintext
    arr.join
  end

  def size
    Math.sqrt(arr.size).ceil
  end

  def plaintext_segments
    arr.each_slice(size).map(&:join)
  end

  def ciphertext
    encode.join
  end

  def normalize_ciphertext
    encode.join(' ')
  end

  def encode
    padded = plaintext_segments.map do |str|
      right_pad(str, size)
    end
    padded.map(&:chars).transpose.map(&:join).map(&:strip)
  end

  def right_pad(str, size_limit)
    return str if str.size == size_limit
    str += ' ' * (size_limit - str.size)
  end
end
