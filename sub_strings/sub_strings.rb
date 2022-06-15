# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, array = nil)
  hash = array.each_with_object(Hash.new(0)) do |count, words|
    words[count] += 1 if string.include?(count)
  end
  puts hash.to_s
end

puts 'Enter a string'
user_string = gets.chomp

substrings(user_string, dictionary)
