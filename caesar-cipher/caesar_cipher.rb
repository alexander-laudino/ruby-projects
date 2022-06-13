require 'pry-byebug'

puts "Enter string to encrypt:"
user_string = gets.chomp
puts "Enter shift factor:"
user_shift_factor = gets.chomp.to_i

binding.pry