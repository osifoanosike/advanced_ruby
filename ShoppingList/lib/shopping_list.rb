class ShoppingList  
  attr_accessor :items


  def initialize
    @items = []
  end

  def items(&block) #takes in a block to use in creating cart items
    if  block_given?
      CartItem.new(&block) #this causes the block content to be executed as tho it were a code in the class body 
    else
      raise "Error: You need to pass a block of code for execution!"
    end     
  end

  def display

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
    # ShoppingList.class_eval do 
    #   @items << "Name :#{@name}, Quantity: #{@quantity}"
    # end
    puts binding #instance_variables_get(@items)
  end
end



