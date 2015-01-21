class String
  def method_missing(method_name)
    puts "The method \'#{method_name}\' doesn't exist."
  end

  #singleton method using class << self
  class << self
    def shout obj
      obj.upcase
    end
  end
end