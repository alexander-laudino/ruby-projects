require 'pry-byebug'

def caesar_cipher(string, shift_factor = 3)
  shift_factor = shift_factor % 26
  string = string.split('')
  string.each do |char| 
    if ('A'..'Z').include?(char)
      puts "Capital Letter"
    elsif ('a'..'z').include?(char)
      puts "lowercase letter"
    else
      puts char
    end
  end
  puts "#{string} #{shift_factor}"
end

puts "Enter string to encrypt:"
user_string = gets.chomp
puts "Enter shift factor:"
user_shift_factor = gets.chomp.to_i
puts "\n"

#binding.pry

caesar_cipher(user_string, user_shift_factor)