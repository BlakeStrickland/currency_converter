#require './Converter.rb'
require './currency.rb'

money = Currency.new(100.0, :USD)
money2 = Currency.new("€100")

puts money.inspect
puts money2.inspect


# puts money * money2
#
 puts money + money2
#
# puts money - money2
#
# puts money == money2

rate_exchange=Hash.new
rate_exchange{
  :USD => 1.00,
  :EUR => 0.89894,
  :YIN =>120.066
}
