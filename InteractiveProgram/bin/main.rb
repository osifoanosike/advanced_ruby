require_relative '../lib/interactive_program.rb'

puts "Enter method name"
method_name = gets.chomp

puts "Enter code to be executed"
code = gets.chomp

InteractiveProgram.class_eval("def #{method_name}; #{code}; end")
interactive = InteractiveProgram.new
interactive.send(method_name)
