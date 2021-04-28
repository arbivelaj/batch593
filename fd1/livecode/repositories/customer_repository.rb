require "csv"
require_relative "base_repository"

class CustomerRepository < BaseRepository

  def build_row(csv_row)
    csv_row[:id] = csv_row[:id].to_i
    # create an instance of meal
    Customer.new(csv_row)
  end

end