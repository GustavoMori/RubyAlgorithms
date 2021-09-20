#Write a function that checks if a given string (case insensitive) is a palindrome.

def is_palindrome str
  str.downcase.reverse.split("") == str.downcase.split("")
end

#*****
def is_palindrome str
  str.downcase.reverse == str.downcase
end