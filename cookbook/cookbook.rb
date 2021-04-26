require "csv"

class Cookbook
  def initialize(csv_file)
    @csv = csv_file
    @recipes = []
    load_csv if File.exist?(@csv)
  end

  def all
    @recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
    write_csv
  end

  def remove_recipe(index)
    @recipes.delete_at(index)
    write_csv
  end

  private

  def write_csv
    CSV.open(@csv, "wb") do |csv_row|
      @recipes.each do |recipe|
        csv_row << [recipe.name, recipe.description]
      end      
    end
  end

  def load_csv
    CSV.foreach(@csv) do |csv_row|
      recipe = Recipe.new(csv_row[0], csv_row[1])
      @recipes << recipe
    end
  end
end

c = Cookbook.new("recipes.csv")
p c