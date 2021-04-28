require "csv"
require_relative "base_repository"

class MealRepository < BaseRepository
  
  def build_row(csv_row)
    csv_row[:id] = csv_row[:id].to_i
    csv_row[:price] = csv_row[:price].to_i
    # create an instance of meal
    Meal.new(csv_row)
  end
  
end