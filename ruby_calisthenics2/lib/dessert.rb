class Dessert
  # add code for setters and getters
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  
  #getter and setter for name
  def name=(name)
  @name = name
  end
  def name
    @name
  end
  
  #getter and setter for calories 
  def calories=(calories)
  @calories = calories
  end
  def calories
    @calories
  end
  
  def healthy?
    # your code here
  end
  def delicious?
    # your code here
  end
end

class JellyBean < Dessert
  # add code for setters and getters
  def initialize(flavor)
    # your code here
  end
end
