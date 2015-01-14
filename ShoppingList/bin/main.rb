require_relative "../lib/shopping_list.rb"

shoplist = ShoppingList.new

shoplist.items do 
	add("Toothpaste",2) 
	add("Computer",1)
end