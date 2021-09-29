# Parte 4: Basic OOP
# (a) Create a class Dessert with getter and setters for name and calories.
# Define instance methods healthy?, which returns true if a dessert has less than 200 calories,
# and delicious? which returns true for all desserts.

class Dessert
  attr_accessor :name, :calories

  def initialize name, calories
    @name = name
    @calories = calories
  end

  def healthy?
    @calories < 200
  end

  def delicious?
    true
  end
end

# dessert1 = Dessert.new('Cafe', 201)
# puts dessert1.name
# puts dessert1.calories
# puts dessert1.healthy?
# puts dessert1.delicious?



# (b) Create a class JellyBean that extends Dessert, and add a getter and setter for flavor.
# Modify delicious? to return false if the flavor is black licorice(but delicious? should still
# return true for all other flavors and for all non-JellyBean desserts).

class JellyBean < Dessert
  attr_accessor :flavor

  def initialize name, calories, flavor
    super name, calories
    @flavor = flavor
  end  

  def delicious?
    @flavor != 'black licorice'
  end
end

# dessert2 = JellyBean.new('Cafe', 201, 'black licorice')
# puts dessert2.name
# puts dessert2.calories
# puts dessert2.flavor
# puts 'healthy ' "#{dessert2.healthy?}"
# puts "delicious #{dessert2.delicious?}"

# dessert3 = JellyBean.new('Cafezinh', 202, 'black milk')
# puts "delicious #{dessert3.delicious?}"