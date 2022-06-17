def substrings(string, dictionary)
  string = string.split
  result = string + dictionary
  result.group_by{|i| i}.map{|k,v| [k, v.count] }
  Hash.new([*result.flatten])
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
test = "go"
substrings(test, dictionary)