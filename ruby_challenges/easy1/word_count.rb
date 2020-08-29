class Phrase
  attr_reader :str

  SPLITTERS = /[ ,:.]/

  def initialize(str)
    @str = str
  end
  
  def word_count
    hsh = Hash.new(0)
    str.split(SPLITTERS).each do |word|
      conformed = conform(word).downcase

      next if conformed == ''

      hsh[conformed] += 1 
    end
    hsh
  end

  def conform(elm)
    elm.match(/['"].+?['"]/) ? elm[1..-2] : elm.gsub(/[^a-zA-Z0-9'"]/, '')
  end
end