class ShoppingList  
  attr_accessor :items

  def initialize
    @items = Hash.new(0) #holding the items as key-value pairs
  end

  def items(&block) #takes in a block to use in creating cart items
    if  block_given?
      instance_eval(&block) #this causes the block content to be executed as tho it were a code in the class body 
    else
      @items
    end     
  end

  def add(item_name, item_quantity)
    item = CartItem.new(item_name, item_quantity)
    @items[item.name] += item.quantity
  end

end

class CartItem
  attr_accessor :name, :quantity

  def initialize(name, quantity)
    @name, @quantity = name, quantity
  end 
end



