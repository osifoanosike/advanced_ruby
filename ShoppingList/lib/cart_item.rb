class CartItem
  attr_reader :name, :quantity

  def initialize(name, quantity)
    @name, @quantity = name, quantity
  end 
end