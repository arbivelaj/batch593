class MealsController
  def initialize(meal_repository, view)
    @meal_repository = meal_repository
    @view = view
  end

  def list
    meals = @meal_repository.all
    @view.display_meals(meals)
  end

  def create
    name = @view.ask_for("name")
    price = @view.ask_for("price")
    meal = Meal.new(name: name, price: price.to_i)
    @meal_repository.add(meal)
  end
end