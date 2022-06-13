require 'pry-byebug'

def caesar_cipher(string, shift_factor = 3)
  shift_factor = shift_factor % 26
  string = string.split('')
  encrypted_string = ""
  string.each do |char|
    new_char = ''
    if ('A'..'Z').include?(char)
      char_index = char.ord + shift_factor
      if (char_index > 90)
        char_index = char_index - 26
      end
      new_char = char_index.chr
    elsif ('a'..'z').include?(char)
      char_index = char.ord + shift_factor
      if (char_index > 122)
        char_index = char_index - 26
      end
      new_char = char_index.chr
    else
      new_char = char
    end
    encrypted_string = encrypted_string + new_char
  end
  puts "#{encrypted_string}"
end

puts "Enter string to encrypt:"
user_string = gets.chomp
puts "Enter shift factor:"
user_shift_factor = gets.chomp.to_i
puts "\n"

#binding.pry

caesar_cipher(user_string, user_shift_factor)