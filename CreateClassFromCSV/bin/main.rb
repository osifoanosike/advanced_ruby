require_relative '../lib/objectify.rb'
puts "please specify a filepath "

file_path = gets.chomp

begin
  object = Objectify.new(file_path)
  # puts object.create_classes_and_functions
rescue Exception => e
  puts "An error has occurred: #{e.message}\n#{e.backtrace.inspect}"
end
