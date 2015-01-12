require_relative '../lib/calculator.rb'

puts "Enter the value1, operator, value2 separated by a comma"

input = gets.chomp.gsub(' ', '').split(',')
puts Calculator.calculate(*input)

#Hard-coded testing
puts "division: #{Calculator.calculate(66, :/, 5)}"
