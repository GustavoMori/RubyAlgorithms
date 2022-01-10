# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.

# Implement the function which takes an array containing the names of people that like an item. It must return the display text as shown in the examples:

def likes(names)
  return "no one likes this" if names.length == 0
  return "#{names.first} likes this" if names.length == 1
  return "#{names.first} and #{names.last} like this" if names.length == 2
  return "#{names.first}, #{names[1]} and #{names.last} like this" if names.length == 3
  return "#{names.first}, #{names[1]} and #{names.length-2} others like this"
end
