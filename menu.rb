require "date"

class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name: , price:)
    self.name = name 
    self.price = price
  end

  def info
    return "#{self.name}は#{self.price}円です"
  end

  def get_total_count(count)
    total_count = self.price * count
    if count > 3
      total_count -= 100 
    end
    return  total_count
    
    if count > 1 && Menu.is_discount_day?
      return total_count *= 0.8
    end

  end

  def Menu.is_discount_day?
    today = Date.today
    return  today.sunday?
  end
  
end
