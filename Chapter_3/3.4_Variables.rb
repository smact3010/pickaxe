# 3.4_Variables.rb

# p43 Chapter 3. Classes, Objects, and Variables


# 3.4 Variables

# Variables are used to keep track of objects; each
#  variable holds a reference to an object.

person = "Tim"
puts "The object in 'person' is a #{person.class}"
puts "The object has an id of #{person.object_id}"
puts "and a value of '#{person}'"

number_int = 10
puts "The object in 'number_int' is a #{number_int.class}"
puts "The object has an id of #{number_int.object_id}"
puts "and a value of '#{number_int}'"

number_float = 3.14
puts "The object in 'number_float' is a #{number_float.class}"
puts "The object has an id of #{number_float.object_id}"
puts "and a value of '#{number_float}'"

# So is a variable an object? In Ruby, the answer is "no."
#  A variable is simply a reference to an object.

person1 = "Tim"
person2 = person1
person1[0] = 'J'      # Ruby strings are mutable

puts "person1 is #{person1}"
puts "person2 is #{person2}"

person1 = "Tim"
person2 = person1.dup # dup method of String creates a new 
                      #  string object with identical components
person1[0] = 'J'

puts "person1 is #{person1}"
puts "person2 is #{person2}"

person1 = "Tim"
person2 = person1
person1.freeze        # prevent modifications to the object
person1[0] = 'J'

puts "person1 is #{person1}"
puts "person2 is #{person2}"

# For now, know that everything you manipulate in Ruby is an object
#  and that objects start life as instances of classes.