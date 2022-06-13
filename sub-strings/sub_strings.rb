dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array = nil)
  hash = array.reduce(Hash.new(0)) do |words, count|
    if string.include?(count)
      words[count] += 1
    end
    words
  end
  puts "#{hash}"
end

puts "Enter a string"
user_string = gets.chomp

substrings(user_string, dictionary)