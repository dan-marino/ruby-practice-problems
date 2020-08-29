class OddWords
  attr_reader :str
  def initialize(str)
    @str = str
  end
  
  def make_odd
    odd_arr = []
    odd = false
    arr = str.split

    arr.each.with_index do |word, indw|
      punctuation = nil
      word.each_char.with_index do |char, indc|
        if indw.odd?
          if word[-(indc + 1)].match(/[,.]/)
            punctuation = word[-(indc + 1)]
          else
          odd_arr << word[-(indc + 1)] 
          end
        else
          odd_arr << char
        end

      odd_arr << punctuation if (word.size == indc + 1) && punctuation
      odd_arr << ' ' if (word.size == indc + 1) && (arr.length != indw + 1)
      end
    end

    odd_arr.push('.') unless odd_arr.last == '.'
    odd_arr.join
  end

end
