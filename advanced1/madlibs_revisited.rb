NOUNS = %w(house broom apple car).freeze
ADVERB = %w(happily openly rudely greedily).freeze
VERB = %w(leap perch gather fulfill).freeze
ADJECTIVE = %w(annoying sharp troubled overt).freeze

File.open('madlibs_revisited.txt') do |file|
  file.each do |line|
    puts format(line, noun: NOUNS.sample,
                      verb: VERB.sample,
                      adverb: ADVERB.sample,
                      adjective: ADJECTIVE.sample)
  end
end

