# p25 - 27 Chapter 2. Ruby.new
# 2.7 Blocks and Iterators
 
#   Code blocks are just chunks of code between braces or between
# do and end. This is a code block:

# { puts "Hello" }

# This is also a code block:

# do 
#   club.enroll(person)
#   person.socialize
# end


def call_block
  puts "Start of method"
  yield
  yield
  puts "End of method"
end

call_block { puts "In the block" }


# def who_says_what
#   yield ("Dave", "hello")
#   yield ("Andy", "goodbye")
# end

# who_says_what {|person, phrase| puts "#{person} says #{phrase}"}

animals = %w( ant bee cat dog )   # create an array
animals.each {|animal| puts animal } # iterate over the contents

[ 'cat', 'dog', 'horse' ].each {|name| print name, " " }
5.times { print "*" }
3.upto(6) {|i| print i }
('a'..'e').each { |char| print char } 
puts



