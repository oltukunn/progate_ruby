require "./menu"

class Food < Menu

  attr_accessor :calorie

  def initialize(name:, price:, calorie:)
    super(name:name, price:price)
    self.calorie = calorie
  end
  
  def info
    return "#{self.name}は#{self.price}円(#{self.calorie}cal)"
  end
  
end
