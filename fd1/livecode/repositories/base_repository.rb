require "csv"

class BaseRepository
  def initialize(csv_file)
    @csv = csv_file
    @elements = []
    load_csv if File.exist?(@csv)
    @next_id = @elements.empty? ? 1 : @elements.last.id + 1
  end

  def all
    @elements
  end

  def add(element)
    element.id = @next_id
    @next_id += 1
    @elements << element
    save_csv
  end

  def find(id)
    @elements.find {|e| e.id == id}
  end

  private

  def save_csv
    CSV.open(@csv, "wb") do |csv|
      csv << @elements.first.class.headers # 2 repo-specific code
      @elements.each do |element|
        csv << element.values # 3 repo-specific code
      end
    end 
  end

  def load_csv
    csv_options = {headers: :first_row, header_converters: :symbol}
    CSV.foreach(@csv, csv_options) do |csv_row|
      @elements << build_row(csv_row)
    end
  end
end