class DerivedString < String
  def exclude?(string)
    string =  string.to_s.downcase
    puts "exclusion: #{!to_s.downcase.include?(string)? "Yes" : "No"}"
  end

  def reverse 
    puts to_s.reverse!
  end

  def method_missing(method_name)
  	puts "The method #{method_name} doesnt exist."
  end
end