# 4.1Arrays.rb

# p45 Chapter 4. Containers, Blocks, and Iterators

# Most real programs deal with collections of data


# 4.1 Arrays

# The class Array holds a collection of object references.
# Each object reference occupies a position in the array,
#  identified by a non-negative integer index.

a = [ 3.14159, "pie", 99 ]    # Create an array using literals
puts a.class
puts a.length
puts a[0]
puts a[1]
puts a[2]
puts a[3]

b = Array.new                 # Create an array by explicity
puts b.class                  #  by creating an array object
puts b.length
b[0] = "second"
b[1] = "array"
puts b


# Arrays are indexed using the [] operator.
# Array indices start at zero.
# Index an array with a non-negative integer, and it
#  returns the object at that position or returns nil
#  if nothing is there.
# Index an array with a negative integer, and it counts
#  from the end.

a = [ 1, 3, 5, 7, 9 ]
puts a[-1]  # => 9
puts a[-2]  # => 7
puts a[-99] # => nil

# You can also index arrays with a pair of numbers, [start,count].
print a[1, 3]   # => [3, 5, 7]
print a[3, 1]   # => [5]
print a[-3, 2]  # => [5, 7]

# You can index arrays using ranges, in which start and end
#  positions are separated by two or three periods. The two-period
#  form includes the end position; the tree-period form does not:

print a[1..3]
print a[1...3]
print a[3..3]
print a[-3..-1]

# The [] operator (~get) has a corresponding []= (~set) operator,
#  which lets you set elements in the array.

a[1]  = 'bat'
puts a
a[-3] = 'cat'
puts a
a[3]  = [ 9, 8 ]
print a
a[6]  = 99
puts a

a = [ 1, 3, 5, 7, 9 ]
a[2, 2] = 'cat'
a[2, 0] = 'dog'
a[1, 1] = [9, 8, 7]
a[0..3] = []
a[5..6] = 99, 98

puts "\nStack, push and pop methods"
stack = []
stack.push "red"
stack.push "green"
stack.push "blue"
puts stack

stack.pop
puts stack
stack.pop
puts stack
stack.pop
puts stack

# Similarly, unshift and shift add and remove elements from the head on an array.
puts "\nQueue"
queue = []
queue.push "red"
queue.push "green"
print queue
queue.shift
puts queue
queue.shift

puts "\nFirst and Last Methods"
array = [ 1, 2, 3, 4, 5, 6, 7 ]
print array.first(4)
puts "\n"
print array.last(4)


