class Citizen
  attr_reader :first_name, :last_name
  attr_writer :age
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @lewagon_grade = "amazing"
    @age = age
  end

  def full_name
    @first_name.capitalize + " " + @last_name.capitalize
  end

  def can_drink?
    @age >= 18
  end

  # attribute reader
  # def first_name
  #   @first_name
  # end


  # def test_hello
  #   hello_lisa
  # end

  # private

  # def hello_lisa
  #   puts "hello lisa!"
  # end
  # def age=(age)
  #   @age = age
  # end
end

marie = Citizen.new("Marie-Therese", "Gaar", 20)
lucas = Citizen.new("Lucas", "Laurencich", 17)

# p marie.full_name, lucas.full_name
# p marie == lucas
lucas.age = 100

p "#{lucas.first_name} supports AC Milan for today's game"
