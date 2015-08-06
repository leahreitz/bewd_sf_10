require 'pry'
require 'pry-byebug'

def my_reverse(string)
  char = string.downcase.chars #transforming string into an array of chars
  word = "" #creates an empty string
  until char.length == 0 #loops through the array until no elements left
    word << char.pop #pop removes last element, and puts into the new word
  end
  word.capitalize #capitalizes the new word -- not neceesary
end

def is_palindrome?(word) #finds out if the word is a palindrome
  if word.downcase == my_reverse(word).downcase #checks to see if word is palindrome
    "Yay! A Palindrome!"
  else
    "Shucks, Not A Palindrome"
  end
end

#####
puts "Please provide a word \n"
word = gets.strip

puts my_reverse(word)
puts is_palindrome?(word)
