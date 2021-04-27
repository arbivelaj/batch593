# 1 to N association
# 1 to 1 association
# N to N association (many to many) doctors - patients

class Patient
  attr_accessor :room
  def initialize(attributes = {})
    @name = attributes[:name]
    @cured = attributes[:cured] || false
  end
end


class Room
  attr_reader :patients
  def initialize(attributes = {})
    @capacity = attributes[:capacity] || 1
    @patients = attributes[:patients] || [] 
  end

  def full?
    @capacity == @patients.length
  end

  def add_patient(patient)
    if full?
      raise StandardError, "Room is full!"
    end
    patient.room = self
    @patients << patient
  end
end

p1 = Patient.new
p p1.room
p1.room = "special room"
p2 = Patient.new(name: "sam")
p3 = Patient.new(cured: true)
p4 = Patient.new(name: "john", cured: true)
p p1, p2, p3, p4


hospital_suite = Room.new(capacity: 3)
hospital_suite.add_patient(p2)
hospital_suite.add_patient(p4)
hospital_suite.add_patient(p3)
hospital_suite.add_patient(p1)
# p hospital_suite
# FROM A ROOM, i can see its patients
# FROM the PATIENT, i can see his room

p hospital_suite.patients.first.room == hospital_suite
