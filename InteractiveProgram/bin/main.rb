require_relative '../lib/interactive_program.rb'

code = ""
puts "Enter code (or q to quit, Hit enter to execute)"

irbX = InteractiveProgram.new
binding_obj = irbX.get_binding
loop do
  input = gets
  if input == "\n"  
    puts irbX.execute(code, binding_obj)
    code = ""
  elsif /q/i =~ input 
    break
  else
    code  += input
  end
end

