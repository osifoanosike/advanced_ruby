puts "Press 'Enter' to evaluate or q/Q to quit"

input = gets

if input.match(/^[q|Q]$/)
  abort("Program exiting...")
elsif input == "\n"
  puts "you just hit the enter key"
else
  puts "Wrong value entered"
end