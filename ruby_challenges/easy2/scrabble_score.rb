class Scrabble
  SCORER = [[], ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
            ['D', 'G'], ['B', 'C', 'M,', 'P'], 
            ['F', 'H', 'V', 'W', 'Y'], ['K'], [],[],['J', 'X'], [], ['Q', 'Z']]

  attr_reader :str
  def initialize(str)
    str.nil? ? @str = '' : @str = str
  end

  def score
    counter = 0
    str.chars.map(&:upcase).map do |char|
      SCORER.each_with_index do |lines, ind|
        counter += ind if lines.include?(char)
      end
    end
    counter
  end

  def self.score(arg)
    new(arg).score
  end
end
