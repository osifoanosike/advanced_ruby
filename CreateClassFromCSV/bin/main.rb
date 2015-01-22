require_relative '../lib/objectify.rb'
puts "please specify the file  to read from (NOTE: It should be in your lib folder)"

file_path = gets.chomp

begin
  object = Objectify.new(file_path)
  puts object.create_classes_and_functions

  # without specifying a file
  object = Objectify.new("xvt")
  puts object.create_classes_and_functions
rescue Exception => e
  puts "An error has occurred: #{e.message}\n#{e.backtrace.inspect}"
end
