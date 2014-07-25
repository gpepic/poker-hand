class Poker
  def self.poker_hands(cards)
    cards = cards.sort.map(&:upcase)
    numbers = cards.map { |card| card.chop.to_i }.sort
    suits = []
    cards.each { |card| suits << card[-1] }
    if suits.all? { |suit| suit == suits[0]} && numbers.each_cons(2).all? { |x,y| y == x+1 } && numbers[-1] == 14
      "Royal Flush"
    elsif suits.all? { |suit| suit == suits[0]} && numbers.each_cons(2).all? { |x,y| y == x+1 }
      "Straight Flush"
    elsif numbers[0] == numbers[3] || numbers[1] == numbers[4]
      "Four of a Kind"
    elsif numbers[0] == numbers[2] && numbers[3] == numbers[4] || numbers[0] == numbers[1] && numbers[2] == numbers[4]
      "Full House"
    elsif suits.all? { |suit| suit == suits[0]}
      "Flush"
    elsif numbers.each_cons(4).all? { |x,y| y == x+1 }
      "Straight"
    elsif numbers[0] == numbers[2] || numbers[2] == numbers[4]
      "Three of a Kind"
    elsif numbers[1] == numbers[2] && numbers[3] == numbers[4] || numbers[0] == numbers[1] && numbers[2] == numbers[3]
      "Two Pair"
    elsif numbers[0] == numbers[1] || numbers[1] == numbers[2] || numbers[2] == numbers[3] || numbers[3] == numbers[4]
      "One Pair"
    else
      "High Card"
    end
  end
end
