def poker_hands(cards)
  cards = cards.sort
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
  end
end
puts poker_hands(["4C", "7C", "12C", "2C", "10C"])
#split array elements into seperate numbers and letters
#assign these pairs into key/value hashes in an object
#sort the object by key value
#place sorted key/value pairs back into an array
#join numbers and letters again


# 0.upto(3) do |i|
  #   puts cards[i].chop
    # if
    # elsif cards[i].chop == cards[i+1].chop
    #   return "pair"
