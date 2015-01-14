class ShoppingList  

  def items(&block) #takes in a block to use in creating cart items
    if  block_given?
      CartItem.new(&block) #this causes the block content to be executed as tho it were a code in the class body 
    else
      raise "Error: You need to pass a block of code for execution!"
    end     
  end
end


class CartItem
  attr_accessor :name, :quantity

  def initialize(&block)
    #default attr values
    @name = "test item"
    @qunatity = 0

    instance_eval(&block) #this causes the block content to be executed as tho it were a code in the class body 
  end

  def add(name, quantity)
    @name, @quantity = name, quantity
    puts "\nItem added to cart:\n#{@name}, Quantity: #{@quantity}"
  end
end



