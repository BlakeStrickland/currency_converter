class Currency

  attr_accessor :amount, :type
  def initialize(amount, type)
    @amount = amount
    @type = type
  end

  def ==(equal)
    if @amount.==(equal.amount) && @type.==(equal.type)
   else puts "DifferentCurrencyCodeError"
   end
  end

  def +(add)
    if @type == add.type
      @amount + add.amount
    else puts "DifferentCurrencyCodeError"
    end
  end

  def -(subtract)
    if @type == subtract.type
      @amount - subtract.amount
    else puts "DifferentCurrencyCodeError"
    end
  end

  def *(multiply)
    if @type == multiply.type
      @amount * multiply.amount
    else puts "DifferentCurrencyCodeError"
    end
  end
 # money [1..-1]
 #money = $2500,25
 #money
 #money = money[1..-1]
  #def
end
