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
      puts "There is no discount to apply."
    else



end
