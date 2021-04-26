class Car
  def initialize(brand)
    @brand = brand
  end
end

# set of methods
class SentenceMaker
  def greet_student(student)
    puts "hello #{student}"
  end
  
  def greet_batch
    puts "hello batch!"
  end
  
end

sm = SentenceMaker.new

sm.greet_batch
sm.greet_student("armen")