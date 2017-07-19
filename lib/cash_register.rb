class CashRegister

  attr_accessor :discount, :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    transaction = price * quantity
    quantity.times do
      @items << title
      @transactions << transaction
    end
  end

  def apply_discount
    if @discount > 0
      @total -= @total * (@discount/100.to_f)
      "After the discount, the total comes to $800."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @transactions.pop()
  end


end
