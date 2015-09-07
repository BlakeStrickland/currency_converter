require './Converter'
require './currency'

money = Currency.new("€89")
money2 = Currency.new(100, :USD)

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
money2 = bank.convert(money2, desired_type)
puts money + money2
