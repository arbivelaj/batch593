require "csv"
class OrderRepository
  def initialize(csv_file, meal_repository, employee_repository, customer_repository)
    @csv = csv_file
    @meal_repository = meal_repository
    @employee_repository = employee_repository
    @customer_repository = customer_repository
    @orders = []
    load_csv if File.exist?(@csv)
    @next_id = @orders.empty? ? 1 : @orders.last.id + 1    
  end

  def all
    @orders
  end

  def undelivered
    @orders.reject {|o| o.delivered?}
  end

  def my_undelivered(employee)
    undelivered_orders = undelivered.select {|o| o.employee == employee} 
  end

  def add(order)
    order.id = @next_id
    @next_id += 1
    @orders << order
    save_csv  
  end

  private

  def save_csv
    CSV.open(@csv, "wb") do |csv|
      csv << %w(id delivered meal_id employee_id customer_id)
      @orders.each do |order|
        csv << [order.id, order.delivered?, order.meal.id, order.employee.id, order.customer.id ]
      end
    end
  end

  def load_csv
    csv_options = {headers: :first_row, header_converters: :symbol}
    CSV.foreach(@csv, csv_options) do |csv|
      id = csv[:id].to_i
      delivered = csv[:delivered] == "true"
      meal = @meal_repository.find(csv[:meal_id].to_i)
      employee = @employee_repository.find(csv[:employee_id].to_i)
      customer = @customer_repository.find(csv[:customer_id].to_i)
      @orders << Order.new(id: id, delivered: delivered, meal: meal, employee: employee, customer: customer)
    end  
  end
end