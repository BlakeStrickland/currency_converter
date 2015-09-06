require './Converter'
require './currency'

money = Currency.new(100.0, :USD)
money2 = Currency.new("$89")

#puts money.inspect
#puts money2.inspect


# puts money * money2
#
#puts money + money2
#
# puts money - money2
#
# puts money == money2

bank = Converter.new({USD: 1.00, EUR: 0.89894, YEN: 120.066})
desired_type = :USD
money = bank.convert(money, desired_type)
 puts money * money2
Converter.convert(money2)
