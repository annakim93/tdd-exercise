# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

def blackjack_score(hand)

  if (hand - VALID_CARDS).size > 0
    raise ArgumentError.new("Invalid card(s): #{(hand - VALID_CARDS).join(', ')}")
  end

  score = 0
  hand.each do |card|
    case
    when card == 'Ace'
      score += 1
    when ['Jack', 'Queen', 'King'].include?(card)
      score += 10
    else
      score += card
    end
  end

  raise ArgumentError.new("Hand exceeds 21") if score > 21

  score += 10 if score + 10 < 22 && hand.include?('Ace')

  return score

end
