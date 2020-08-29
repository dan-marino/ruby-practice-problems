require 'pry'

module RunLengthEncoding

  def self.encode(input)
    compress = []
    count = 1

    arr = input.chars
    arr.each_with_index do |char, ind|
      if char == arr[ind + 1]
        count += 1
      else
        count == 1 ? compress << char : compress << count.to_s + char
        count = 1
      end
    end
    compress.join
  end

  def self.decode(input)
    input.scan(/(\d*\D|\D)/).map do |elm|
      letter = elm.join.slice(-1)
      elm.join.to_i.zero? ? elm : letter * elm.join.to_i
    end.join
  end
end
