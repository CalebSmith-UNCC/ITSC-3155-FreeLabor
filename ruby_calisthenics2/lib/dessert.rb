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
    @calories < 200
  end
  def delicious?
    # your code here
    if(@flavor == "licorice" || @flavor == "licorice jelly bean")
      return false
    else
      return true
    end
  end
end

class JellyBean < Dessert
  # add code for setters and getters
  def initialize(flavor)
    # your code here
    @flavor = flavor
    @name = flavor + " jelly bean" 
    @calories = 5
  end
   #getter and setter for flavor
  def flavor=(flavor)
  @flavor = flavor
  end
  def flavor
    @flavor
  end
  
end
