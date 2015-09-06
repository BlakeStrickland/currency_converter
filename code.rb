require './Converter'
require './currency'

money = Currency.new(100.0, :USD)
money2 = Currency.new("€89")

#puts money.inspect
#puts money2.inspect


# puts money * money2
#
#puts money + money2
#
# puts money - money2
#
# puts money == money2

rate_exchange = Converter.new(rate_exchange = {USD: 1.00, EUR: 0.89894, YEN: 120.066})
money = money.convert(money.type)
money2 = money.convert(money.type)
 puts money + money2
