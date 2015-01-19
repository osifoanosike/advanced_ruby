class CartItem
  attr_accessor :name, :quantity

  def initialize(name, quantity)
    @name, @quantity = name, quantity
  end 
end