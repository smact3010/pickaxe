class Person 

  attr_accessor :name, :height, :weight

  def initialize(name, height, weight)
    @name   = name
    @height = height
    @weight = weight
  end
end

person1 = Person.new("kyle", 72, 180)

puts "#{person1.name}"
puts "#{person1.height}"
puts "#{person1.weight}"

person2 = Person.new("stephan", 75, 200)

puts "#{person2.name}"
puts "#{person2.height}"
puts "#{person2.weight}"

