require "./currency"
#require "./code"
class Converter
  attr_accessor :rate_exchange
  def initialize(rate_exchange)
    @rate_exchange = rate_exchange
  end

  def convert(money, desired_type)
    puts money.inspect
    money = @rate_exchange[money.amount]
    desired_currency = @rate_exchange[desired_currency]/ @rate_exchange[starting_currency.type]* starting_currency.amount
    puts money.inspect
    return (desired_currency)
  end
end
