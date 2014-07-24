require('rspec')
require('poker-hands')

describe('poker_hands') do
  # it('should take a sorted array of cards and check to see if a pair are present') do
  #   poker_hands(["2C", "5C", "4D", "12S", "4H"]).should(eq("pair"))
  # end

  it('should take a sorted array of cards and check to see if a "Royal Flush" is present') do
    poker_hands(["14C", "13C", "12C", "11C", "10C"]).should(eq("Royal Flush"))
  end

   it('should take a sorted array of cards and check to see if a "Straight Flush" is present') do
    poker_hands(["13C", "12C", "11C", "10C", "9C"]).should(eq("Straight Flush"))
  end

    it('should take an array of cards and check for "4 of a Kind"') do
    poker_hands(["6C", "6D", "6H", "6S", "14C"]).should(eq("Four of a Kind"))
  end

    it('should take an array of cards and check for "4 of a Kind"') do
    poker_hands(["3C", "6D", "6H", "6S", "6C"]).should(eq("Four of a Kind"))
  end
end



# describe :roman_numerals do
#   it 'returns roman numeral value for 1, 2 and 3' do
#     expect(roman_numerals(3)).to eq('III')
#   end


