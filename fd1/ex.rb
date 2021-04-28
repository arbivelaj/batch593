class Team
  def initialize(attr = {})
    @name = attr[:name]
    @id = attr[:id]
  end
end

class Player
  def initialize(attr = {})
    @id = attr[:id]
    @team = attr[:team]
  end
end

ac = Team.new(name: "Milan", id: 6)
ac = TeamRepository.new.find(6)
arbi = Player.new(id: 2, team: ac) 
p arbi