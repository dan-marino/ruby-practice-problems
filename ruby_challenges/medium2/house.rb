class House
  def recite
    song = []
    (pieces.count - 1).downto(0) do |ind1|
      opening = "This is #{pieces[ind1][0]}"
      last_line?(ind1 - 1) ? song << opening + ".\n" : song << opening

      ind1.upto(pieces.count - 2) do |ind2|
        phrase = pieces[ind2][1] + ' ' + pieces[ind2+1][0]
        last_line?(ind2) ? song << phrase + ".\n" : song << phrase
      end
    end

    song.join("\n")
  end

  def self.recite
    new.recite
  end

  private

  def last_line?(line)
    line + 1 == pieces.size - 1
  end

  def pieces
    [
      ['the horse and the hound and the horn', 'that belonged to'],
      ['the farmer sowing his corn', 'that kept'],
      ['the rooster that crowed in the morn', 'that woke'],
      ['the priest all shaven and shorn', 'that married'],
      ['the man all tattered and torn', 'that kissed'],
      ['the maiden all forlorn', 'that milked'],
      ['the cow with the crumpled horn', 'that tossed'],
      ['the dog', 'that worried'],
      ['the cat', 'that killed'],
      ['the rat', 'that ate'],
      ['the malt', 'that lay in'],
      ['the house that Jack built']
    ]
  end
end
