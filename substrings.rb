# a method that takes a word (a string) with either a single word or multiple words as the first argument. The second argument is a list of words to search through to find matches for each of the first parameters word/words (a dictionary). The method will return a hash that lists the word, then the number of times the word was "found"(matched).

# array.join converts an array to a string. while string.split converts a string to an array.
# if the dictionary includes a word from the string then put that word in a hash along with how many times that word appeared.
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