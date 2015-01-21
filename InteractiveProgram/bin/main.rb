require_relative '../lib/interactive_program.rb'

code = ""
puts "Enter code (or q to quit, Hit enter to execute)"

loop do
	input = gets
	if input == "\n"
		InteractiveProgram.new.execute(code, binding)
		code = ""
	elsif /q/i =~ input 
		break
	else
		code  += input
	end
end
