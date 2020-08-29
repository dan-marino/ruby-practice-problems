class PigLatin

  SUFFIX = 'ay'

  def self.translate(str)
    str.split.map do |word|
      if let_stays_infront?(word)
        word << SUFFIX
      elsif three_lets_to_back?(word)
        word[3..-1] << word[0..2] << SUFFIX
      elsif two_lets_to_back?(word)
        word[2..-1] << word[0..1] << SUFFIX
      else
        word[1..-1] << word[0] << SUFFIX
      end
    end.join(' ')
  end

  private

  def self.let_stays_infront?(word)
    word.start_with?(/[aeiou]/) || word =~ (/\Axr/) || word =~ (/\Ayt/)
  end

  def self.three_lets_to_back?(word)
    word =~ (/\A[^aeiou]qu/) || word =~ (/\Athr/) || word =~ (/\Asch/)
  end

  def self.two_lets_to_back?(word)
    word =~ (/\Ach/) || word =~ (/\Aqu/) || word =~ (/\Ath/)
  end
end
