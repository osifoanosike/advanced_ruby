require_relative '../lib/string.rb'

input = "enter a string" #this creates a String object instance

#singleton method
def input.get_vowels
	vowels = []
	self.each_char do |char|
		vowels << char if char.match(/[aeiou]/)
	end
	puts vowels.uniq!
end

input.get_vowels

input = "me" #another instance of String. 
input.get_vowels #invokes method_missing coz it calls a singleton method

puts "String class' singleton methods: #{ String.singleton_methods }"