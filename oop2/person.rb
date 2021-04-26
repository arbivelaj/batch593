class Person
  attr_reader :city
  def initialize(name, city)
    @name = name
    @city = city
  end

  def self.filter_by_city(people, city)
    milan = []
    people.each do |person|
      milan << person if person.city == city
    end
    milan
  end
end

p1 = Person.new("ashdj", "milan")
p2 = Person.new("adasfdgshdj", "milan")
p3 = Person.new("adasfdgshdj", "rome")

people = [p1, p2, p3]

milan_people = Person.filter_by_city(people, "milan")
p milan_people