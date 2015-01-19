require_relative '../lib/objectify.rb'

begin
  object = Objectify.new
  puts object.create_classes_and_functions
rescue Exception => e
  puts "An error has occurred: #{e.message}\n#{e.backtrace.inspect}"
end
