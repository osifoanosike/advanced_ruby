require_relative '../lib/derived_string.rb'

method_call = ""
string = ""
loop do 
	puts "enter a string"
	string = DerivedString.new(gets.chomp)

	puts "Enter a method to call followed by its argument if any\nExisting methods are: exclude?(search_param) and reverse"
	method_call = gets.chomp
	break if method_call.length > 0
end

method_call = method_call.split
method_name = method_call.shift.to_sym
params_length = method_call.length
method_params = method_call.join(',')


if string.respond_to? method_name
	arity = DerivedString.instance_method(method_name.to_sym).arity
	if arity == params_length
		puts string.send(method_name, method_params)
	else
		puts "Wrong nos of parameters supplied to method: #{method_name}, (#{arity} for #{params_length})"
	end
else
	puts "The method specified doesn't exist"
end



