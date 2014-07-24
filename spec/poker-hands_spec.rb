require('rspec')
require('poker-hands')

describe('poker_hands') do
  it('should take a sorted array of cards and check to see if a pair are present') do
    poker_hands(["2C", "5C", "4D", "12S", "4H"]).should(eq("pair"))
  end

  it('should take a sorted array of cards and check to see if a "Royal Flush" is present') do
    poker_hands(["14C", "13C", "12C", "11C", "10C"]).should(eq("Royal Flush"))
end

# describe :roman_numerals do
#   it 'returns roman numeral value for 1, 2 and 3' do
#     expect(roman_numerals(3)).to eq('III')
#   end


