class CashRegister
  attr_accessor :total, :employee_discount, :items, :last_transaction_amount

  def initialize( n = 0 )
    @total = 0
    @employee_discount = n
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @last_transaction_amount = price * quantity
    if quantity > 1
      i = 0
      while i < quantity
        @items << title
        i += 1
      end
    else
      @items << title
    end

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

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction_amount
  end

end
