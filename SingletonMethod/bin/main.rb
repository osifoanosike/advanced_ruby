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

input2 = "Osifo lives in Nigeria" #another instance of String. 
input2.get_vowels #invokes method_missing coz it calls a singleton method
p String.shout input2 #shout is a singleton method defined on input(an pbject of string)