
class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @total += (price * quantity)
  end
  
  def apply_discount(@discount)
    @total = @total.to_f - (@total.to_f(@discount.to_f / 100.to_f))
  end
  
end

