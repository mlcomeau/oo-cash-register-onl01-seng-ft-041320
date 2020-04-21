class CashRegister
  attr_accessor :total, :employee_discount

  def initialize( n = 0 )
    @total = 0
    @employee_discount = n
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    if @employee_discount == 0
      "There is no discount to apply."
    else
      discount = @employee_discount/100.to_f
      @total = @total - (@total * discount)
      "After the discount, the total comes to $#{@total.to_i}"
    end
  end




end
