POKER HANDS
==================================

#Authors:

####Joshua Storey
####Ginger Pearson

##7/24/2014

###Version:
V.1.1.0

###Description:
This program will take an array of cards and return the proper poker hand.

###Directions:
To use this program, Ruby must be installed on your system.  From the command line, install the gem as follows:

```ruby
gem install ./jas_poker-1.1.0.gem
```

Then enter Ruby through `irb` and run the code below, where the information contained in `[ ]` represents the cards in your hand.

Tip for entering card values and suits into the array:  For face cards, enter these numerical values, with a single letter following to indicate their suits `Ace = 14` is entered as `14C` for the Ace of Clubs.  Continue with `King = 13` `Queen = 12` `Jack = 11` with the remaining cards showing their face value.

After the face card value, enter suits right next to the number: `D = Diamond` `H = Hearts` `C = Clubs` and `S = Spades`.

```ruby
require Poker.poker_hands(["13C", "12C", "11C", "10C", "9C"])
```

Hit enter and the program will return your best hand from the cards.

Rembember to enter `quit` to exit `irb` and return to your command line when finished.

If you would like to install the Ruby Gem, use this link: (https://rubygems.org/gems/jas_poker "Ruby Gem")

Enjoy!

Copyright © 2014
