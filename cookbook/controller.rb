require "open-uri"
require "nokogiri"
require_relative "scraper"

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
    rating = @view.ask_for("rating")
    recipe = Recipe.new(name, description, rating)
    @cookbook.add_recipe(recipe)
  end

  def delete
    display
    index = @view.ask_for_index
    @cookbook.remove_recipe(index)
  end

  def import
    # ask the user for an ingredient
    ingredient = @view.ask_for("ingredient")
    scraped_recipes = Scraper.new.call(ingredient)
    @view.display_recipes(scraped_recipes)
    @view.choose
    # the user chooses a recipe, by index
    index = @view.ask_for_index
    # we store that in the cookbook -> also in csv
    new_recipe = scraped_recipes[index]
    @cookbook.add_recipe(new_recipe)
  end

  private

  def display
    recipes = @cookbook.all
    @view.display_recipes(recipes)
  end

end