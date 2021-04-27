require "csv"

class Patient
  attr_accessor :room, :id
  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @cured = attributes[:cured] || false
  end
end

class PatientRepository
  def initialize(csv_file)
    @csv = csv_file
    @patients = []
    load_csv
    # if @patients.empty?
    #   @next_id = 1
    # else
    #   @next_id = @patients.last.id + 1
    # end
    @next_id = @patients.empty? ? 1 : @patients.last.id + 1
  end

  def add_patient(new_patient)

    # new_patient.room = self # TOMORROW

    new_patient.id = @next_id
    @next_id += 1
    @patients << new_patient
  end

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv, csv_options) do |csv_row|
      csv_row[:id] = csv_row[:id].to_i
      csv_row[:cured] = csv_row[:cured] == "true"
      @patients << Patient.new(csv_row)
    end
  end
end

pr = PatientRepository.new("patients.csv")

p3 = Patient.new(name: "Sam")
pr.add_patient(p3)
p pr