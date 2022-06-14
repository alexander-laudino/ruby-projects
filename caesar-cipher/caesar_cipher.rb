# frozen_string_literal: true

def caesar_cipher(string, shift_factor = 3)
  shift_factor = shift_factor % 26
  string = string.split('')
  encrypted_string = ''
  string.each do |char|
    new_char = ''
    case char
    when 'A'..'Z'
      char_index = char.ord + shift_factor
      char_index -= 26 if char_index > 90
      new_char = char_index.chr
    when 'a'..'z'
      char_index = char.ord + shift_factor
      char_index -= 26 if char_index > 122
      new_char = char_index.chr
    else
      new_char = char
    end
    encrypted_string += new_char
  end
  puts encrypted_string.to_s
end

puts 'Enter string to encrypt:'
user_string = gets.chomp
puts 'Enter shift factor:'
user_shift_factor = gets.chomp.to_i
puts "\n"

caesar_cipher(user_string, user_shift_factor)
