require_relative '../lib/interactive_program.rb'

code = ""

puts "Enter code (q to quit, Hit enter to execute)"


loop do
	input = gets
	if input == "\n"
		puts InteractiveProgram.new.execute(code)
	elsif /q/i =~ input 
		break
	else
		code  += input
	end
end
