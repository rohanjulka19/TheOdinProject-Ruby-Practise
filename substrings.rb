def substrings(str, dict)
    substr_freq = Hash.new(0)
    dict.each do |word|
        str.downcase.scan(word.downcase) { |match| substr_freq[word] += 1}
    end
    substr_freq
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
puts substrings("below", dictionary)
