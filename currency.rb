require './differentcurrencycodeerror'
require './Converter'
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

   def convert(money)
     if @type.!=(money.type)
       money.type = Converter.new(money.type)
       @type = money.type

       puts "trying to convert"

     end

   end
  # elsif @type != equal.type
  # @type = Converter.new(equal)
  # else
  #@amount.==(equal.amount) &&

  def ==(equal)
    if  @type == equal.type
      true
    else
      false
   end
  end

  def +(add)
    if @type == add.type
      @amount = @amount + add.amount
    else
      raise DifferentCurrencyCodeError
    end
  end

  def -(subtract)
    if @type == subtract.type
      @amount = @amount - subtract.amount
    else
      raise DifferentCurrencyCodeError
    end
  end

  def *(multiply)
    if @type == multiply.type
    @amount =  @amount * multiply.amount
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
