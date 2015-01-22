class DerivedString < String
  def exclude?(string)
    puts "exclusion: #{!to_s.downcase.include?(string.to_s.downcase)? "Yes" : "No"}"
  end

  def reverse 
    puts to_s.reverse!
  end

  def method_missing(method_name)
  	puts "The method #{method_name} doesnt exist."
  end
end