require "./currency"
#require "./code"
class Converter
  attr_accessor :rate_exchange
  def initialize(rate_exchange)
    @rate_exchange = rate_exchange
  end

  def convert(money, desired_type)
    #puts money.inspect
    start_amount = money.amount
    conversion_rate = @rate_exchange[desired_type]/ @rate_exchange[money.type]
    new_amount = start_amount.to_f * conversion_rate
    return (Currency.new(new_amount, desired_type))
  end
end
