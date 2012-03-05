#Assigment1 basic_oop - Juan Felipe Arango - 
class Dessert
  attr_accessor :name, :calories
  
  def initialize(name, calories)
    self.name = name
    self.calories = calories  
  end

  def healthy?
    calories < 200
  end

  def delicious?
    true
  end

end

class JellyBean < Dessert
  attr_accessor :flavor
  
  def initialize(name, calories, flavor)
    self.flavor = flavor
    super name, calories
  end

  def delicious?
    return false if flavor == "black licorice"
    true
  end

end