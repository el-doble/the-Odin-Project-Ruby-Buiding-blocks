def substrings(word, substrings)
  search_results = {}
  substrings.each do |substring|
    if word.downcase.match(substring)
      search_results[substring] = word.downcase.scan(substring).count
    end
  end
  return search_results
end

dictionary = ["below", "down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
