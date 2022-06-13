require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array = nil)
  hash = array.reduce(Hash.new(0)) do |words, count|
    #binding.pry
    if string.include?(count)
      words[count] += 1
    end
    words
  end
  puts "#{hash}"
end

substrings("Howdy partner, sit down! How's it going?", dictionary)