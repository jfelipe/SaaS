#Assigment1 Fun with strings - Juan Felipe Arango - 

def palindrome?(string)
  str1 = string.gsub(/(\W|\b)+/, "").downcase
  str1 == str1.reverse
end

def count_words(string)
  words = string.downcase.split(/\b\W*/)
  words.inject(Hash.new(0)) { |res, word| res[word] += 1; res }
end
