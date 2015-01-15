require_relative '../lib/derived_string.rb'

puts "enter a string"
string = DerivedString.new(gets.chomp)

puts "enter a string for check for exclusion"
search_arg = DerivedString.new(gets.chomp)

#dynamic method creation
puts "Excluded from string?: #{ string.send(:exclude?, search_arg) }"

puts "Reversed string: #{ string.reverse }"
