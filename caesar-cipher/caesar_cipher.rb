require 'pry-byebug'

def caesar_cipher(string, shift_factor = 3)
  puts "#{string} #{shift_factor}"
end

puts "Enter string to encrypt:"
user_string = gets.chomp
puts "Enter shift factor:"
user_shift_factor = gets.chomp.to_i

#binding.pry

caesar_cipher(user_string, user_shift_factor)