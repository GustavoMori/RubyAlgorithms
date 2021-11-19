# https://www.slideshare.net/shelton88/hw1-rubycalisthenics
# 1) b)
#problemas,
#1 - tamanho do hash é dinamico (talvez resolva com .merge)
#2 - numero de palavras é dinamico, e repetições também

def count_words(str)
  array_of_words = str.downcase.split(" ")
  result = {}
  array_of_words.each do |word|
    number = array_of_words.select { |word1| word1 == word }
    result[word] = number.count
  end
  result
end

def count_words(str)
  array_of_words = str.downcase.split(" ")
  result = Hash.new(0)
  array_of_words.each do |word|
    result[word] += 1
  end
  result
end
