require './differentcurrencycodeerror.rb'
class Currency

  attr_accessor :amount, :type
  def initialize(amount, type = nil)
    hash=Hash.new{}
    hash= {
      "$" => :USD,
      "€" => :EUR,
      "¥" => :YEN
    }

    if type
      @amount = amount
      @type = type.to_sym
    else
      @amount = amount[1..-1].to_f
      @type = hash[amount[0]]


    end
  end

  def ==(equal)
    if @amount.==(equal.amount) && @type.==(equal.type)
   else
     raise DifferentCurrencyCodeError
   end
  end

  def +(add)
    if @type == add.type
      @amount + add.amount
    else
      raise DifferentCurrencyCodeError
    end
  end

  def -(subtract)
    if @type == subtract.type
      @amount - subtract.amount
    else
      raise DifferentCurrencyCodeError
    end
  end

  def *(multiply)
    if @type == multiply.type
      @amount * multiply.amount
    else
      raise DifferentCurrencyCodeError
    end
  end
 # money [1..-1]
 #money = $2500,25
 #money
 #money = money[1..-1]
  #def
end
