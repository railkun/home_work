class SuperHero
  include Comparable

  attr_reader :name, :strength, :agility, :intelligence, :avarage

  def initialize(option)
    @name = option[:name]
    @strength = option[:strength].to_i
    @agility = option[:agility].to_i
    @intelligence = option[:intelligence].to_i
  end

  def avarage
    @avarage = (@strength + @agility + @intelligence) / 3
  end

  def <=>(other)
    avarage <=> other.avarage
  end
end
