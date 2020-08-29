# Using the Card class from the previous exercise, create a Deck class 
# that contains all of the standard 52 playing cards. 
# Use the following code to start your work:
# The Deck class should provide a #draw method to draw one card at random. 
# If the deck runs out of cards, the deck should reset itself by generating a new set of 52 cards.


class Card
  include Comparable
  attr_reader :rank, :suit, :value

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def value
    case rank
    when 'Jack' then 11
    when 'Queen' then 12
    when 'King' then 13
    when 'Ace' then 14
    else rank
    end
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def <=>(other_card)
    value <=> other_card.value
  end
end

class Deck
  attr_reader :deck

  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    reset
  end

  def count
    deck.count
  end

  def draw
    reset if deck.empty?
    deck.shuffle!.pop
  end

  private

  def reset
    @deck = RANKS.flat_map do |rank|
      SUITS.map do |suit|
        Card.new(rank, suit)
      end
    end
  end
end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }

puts drawn.count { |card| card.rank == 5 } == 4
puts drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
puts drawn != drawn2 # Almost always.
