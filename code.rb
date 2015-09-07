require './Converter'
require './currency'

money = Currency.new("€89.89")
money2 = Currency.new(10000, :USD)


bank = Converter.new({USD: 1.00, EUR: 0.89894, YEN: 120.066})
desired_type = :USD
#money + money2
money = bank.convert(money, desired_type)
puts money.inspect
money2 = bank.convert(money2, desired_type)
money3 = money.amount + money2.amount
money4 = money.amount * money2.amount

money2.inspect
puts money3
puts money4
#puts bank.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)
