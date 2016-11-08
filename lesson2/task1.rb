class SuperHero

  include Comparable

  attr_reader :name, :strength, :agility, :intelligence, :avarage

  def initialize(option)
    @name = option[:name]
    @strength = option[:strength].to_i
    @agility = option[:agility].to_i
    @intelligence = option[:intelligence].to_i
    @avarage = (@strength + @agility + @intelligence)/3
  end

  def <=>(other)
    avarage <=> other.avarage
  end

  spiderman = SuperHero.new(agility: '35', name: 'Siderman', strength: '50', intelligence: '40')
  batman = SuperHero.new(agility: '25', name: 'Batman', strength: '40', intelligence: '70')

  p [spiderman, batman].sort.reverse

end


#[spiderman, batman].sort_by{|sh| [sh.name, sh.strength, sh.agility, sh.intelligence] }
#[spiderman, batman].sort_by{|sh| sh.intelligence }.reverse
