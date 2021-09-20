# Define a new instance method on the Array class called second, which returns the second item in an array (similar to the way 
# .first and .last work in Ruby).

# If there is no element with index 1 in the array, return nil.

# Examples
# [3, 4, 5].second  #  => 4 
# [].second         #  => nil

## RUBY USA OPEN CLASS
## RUBY USA SELF nas class padrões
## RUBY USA SIZE no array

class Array
  def second
    size > 1 ? self[1] : nil
  end
end

#*****
class Array
  def second
    self[1]
  end
end