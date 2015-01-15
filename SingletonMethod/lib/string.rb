class String
	def method_missing(method_name)
		puts "The method \'#{method_name}\' doesn't exist."
	end
end