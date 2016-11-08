module CustomEnumeator

  def custom_maxmin
    a = @teams.first
    b = @teams.first
    @teams.map do |str|
      b = str if str > b
      a = str if str < a
    end
    [b, a]
  end

  def custom_select(params)
    a = []
    @teams.each do |str|
      a.push(str) if str == params
    end
    p a
  end
end

class SuperHeroTeam

  include CustomEnumeator

  attr_reader :teams

  def initialize(members)
    @teams = members
  end

end
