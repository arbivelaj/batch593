class Controller
  def initialize(cookbook, view)
    @cookbook = cookbook
    @view = view
  end

  def list
    display
  end

  def create
    name = @view.ask_for("name")
    description = @view.ask_for("description")
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end

  def delete
    display
    index = @view.ask_for_index
    @cookbook.remove_recipe(index)
  end

  private

  def display
    recipes = @cookbook.all
    @view.display_recipes(recipes)
  end


end