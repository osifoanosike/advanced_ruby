class DerivedString < String
  def exclude?(string)
    "exclusion: #{!downcase.include?(string.downcase)? "Yes" : "No"}"
  end

  def reverse 
    reverse!
  end

  def method_missing(method_name, *args)
  	puts "The method #{method_name} doesnt exist."
  end
end