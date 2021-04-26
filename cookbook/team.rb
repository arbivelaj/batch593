class Team
  def initialize(attributes = {})
    @name = attributes[:name]
    @captain = attributes[:captain]
  end
end

ac_milan = Team.new({captain: "Gigio Donnarumma", name: "AC milan"})
spiombo = Team.new(name: "Arbi Velaj")
bayern = Team.new(captain: "Manuel Neuer", stadium: "Allianz Arena")
