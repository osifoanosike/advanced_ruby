class DerivedString < String
  def exclude?(string)
    string =  string.to_s.downcase
    !to_s.downcase.include?(string)? "Yes" : "No"
  end

  def reverse 
    to_s.reverse!
  end
end