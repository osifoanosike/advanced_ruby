require_relative '../lib/interactive_program.rb'

code = ""
puts "Enter code (or q to quit, Hit enter to execute)"

loop do
  input = gets
  if input == "\n"  
    irbX = InteractiveProgram.new
    bindingX = irbX.get_binding
    irbX.execute(code, bindingX)
    code = ""
  elsif /q/i =~ input 
    break
  else
    code  += input
  end
end
