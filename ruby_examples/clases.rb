class Pokemon
  attr_accessor :name, :hp, :attack

  def initialize(name: nil, hp: 100, attack: 10)
    @hp = hp
    @name = name
    @attack = attack
  end

  def  attack(pokemon)
    pokemon.hp -= @attack
  end

  def talk
    @name
  end
end

class Air < Pokemon

  def fly
    "I scaped"
  end

end

class Psychique < Pokemon

  attr_accessor :heal_factor

  def initialize(name: nil, hp: 100, attack: 10, heal_factor: 10)
    super(name: name, hp: hp, attack: attack)
    @heal_factor = heal_factor
  end

  def heal
    @hp = (@hp + heal_factor) > 100 ? 100 : @hp + heal_factor
  end

end
