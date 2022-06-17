
def substrings(string, dictionary)
  string = string.downcase.split
  hash = Hash.new(0)
    string.each do |word|
      dictionary.each do |entry| 
        if word.include?(entry) 
          hash[entry] += 1
        end
      end
    end
  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "part"]
test = "howdy partner keep going down"
substrings(test, dictionary)