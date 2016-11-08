class Human
  attr_accessor :name

  def ira
    @name
  end

  def volodya
    @name
  end

  def invite(name)
    "Ira"
  end



end

class Drink
  attr_accessor :name

  def coffee
    @name
  end

end

coffee = Drink.new
coffee.name = 'Latte'
ira = Human.new
ira.name = 'Ira'
volodya = Human.new
volodya.name = 'volodya'
