require 'pry'

class CashRegister

  attr_accessor :total
  attr_reader :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def items
    @items
  end

  def add_item(title, price, quantity=1)
    @title = title
    @price = price
    @total += (price*quantity)
    @quantity = quantity
    # find a way to shufle in items depending on the quantity

    self.items.fill("#{title}", self.items.size, quantity)
  end

  def apply_discount
    if @discount != 0
      @total = @total - ((@discount / 100.0) * @total).to_i
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @price
  end
end
