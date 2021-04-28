require "csv"

class EmployeeRepository
  def initialize(csv_file)
    @csv = csv_file
    @employees = []
    load_csv if File.exist?(@csv)
  end

  def find_by_username(username)
    @employees.find {|e| e.username == username} 
  end

  def all
    @employees
  end

  def find(id)
    @employees.find {|e| e.id == id}
  end

  private

  def load_csv
    csv_options = {headers: :first_row, header_converters: :symbol}
    CSV.foreach(@csv, csv_options) do |csv_row|
      csv_row[:id] = csv_row[:id].to_i
      employee = Employee.new(csv_row)
      @employees << employee
    end
  end
end