require_relative '../lib/derived_string.rb'

args = ""
puts "enter a string"
string = DerivedString.new(gets.chomp)

puts "enter a method to call:\nExisting methods are: exclude?(search_param) and reverse"
method_name = gets.chomp.downcase


if method_name.match(/^exclude\?$/)
  puts "enter the string to search for exclusion"
  arg = gets.chomp
  string.send("#{method_name}", arg)
else
  string.send("#{method_name}")
end
