require_relative 'cart_item.rb'

class ShoppingList  
  def initialize
    #holding the items as key-value pairs
    @items = Hash.new(0) 
  end

  #takes in a block to use in creating cart items
  def items(&block) 
    if  block_given?
      instance_eval(&block) 
    else
      @items
    end     
  end

  def add(item_name, item_quantity)
    item = CartItem.new(item_name, item_quantity)
    @items[item.name] += item.quantity
  end
end