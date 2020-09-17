# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

def blackjack_score(hand)

  if (hand - VALID_CARDS).size > 0
    raise ArgumentError.new("Invalid card(s): #{(hand - VALID_CARDS).join(', ')}")
  end

  initial_score = 0
  hand.each do |card|
    case
    when card == 'Ace'
      initial_score += 1
    when ['Jack', 'Queen', 'King'].include?(card)
      initial_score += 10
    else
      initial_score += card
    end
  end

  raise ArgumentError.new("Hand exceeds 21") if initial_score > 21

  # adjusted_score =

  return initial_score

end

# hand = ['fish', -2, 'jack', 'boo']
# hand = %w(King Queen Jack)
hand = ['Ace', 5, 3]

p blackjack_score(hand)