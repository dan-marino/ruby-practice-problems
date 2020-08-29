cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck
player_sum = 0
sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  player_sum = remaining_cards.map do |card|
    score(card)
  end.sum

  sum += player_sum
end

total =  4 * [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11].sum
puts(sum == total - player_sum) #=> false

# I'm still getting different numbers, it still returns false