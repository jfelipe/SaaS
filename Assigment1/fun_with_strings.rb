#Assigment1 Fun with strings - Juan Felipe Arango - 

def palindrome?(string)
  str1 = string.gsub(/(\W|\b)+/, "").downcase
  str2 = str1.reverse
  return true ? str1 == str2 : false
end

def count_words(string)
  words = string.gsub((/\b\W*/), " ").downcase.split(" ")
  hash = Hash.new(0)
  words.each do |word|
    hash[word] += 1
  end
  hash
end
