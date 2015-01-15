class DerivedString < String
	def exclude?(string)
		string =  string.to_s.downcase
		!self.to_s.downcase.include?(string)? "Yes" : "No"
	end

	def reverse 
		self.to_s.reverse!
	end
end