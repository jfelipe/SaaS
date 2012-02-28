#Assigment1 Fun with strings - Juan Felipe Arango - 

def palindrome?(string)
  str1 = string.gsub(/(\W|\b)+/, "").downcase
  str2 = str1.reverse
  str1 == str2
end

def count_words(string)
  words = string.downcase.split(/\b\W*/)
  hash = Hash.new(0)
  words.each do |word|
    hash[word] += 1
  end
  hash
end
