require_relative '../lib/calculator.rb'
include Calculator

puts "Enter the value1, operator, value2 separated by a comma"

input = gets.chomp.gsub(' ', '').split(',')
puts calculate(*input)

#Hard-coded testing
puts "division: #{calculate(66, :/, 5)}"
