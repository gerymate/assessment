require_relative 'numerals'

puts 'Enter positive integers to say, empty line to quit!'
until (input = gets.chomp).empty?
  puts Numerals.say(input.to_i)
end