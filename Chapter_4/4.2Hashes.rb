# 4.2Hashes.rb

# p47 Chapter 4. Containers, Blocks, and Iterators


# 4.2 Hashes 

#  Sometimes known as associative arrays, maps, or dictionaries

#  Example using hash literals -- a list of key value pairs

h = { 'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine' }

print h
puts "\nh.length returns #=> #{h.length}"
puts "\nh['dog'] returns #=> #{h['dog']}"
h['cow'] = 'bovine'
h['12']  = 'dodecine'
h['cat'] = 99

print h

#  Shortcuts if the keys are symbols

h = { :dog => 'canine', :cat => 'feline', :donkey => 'asinine' }
# same as
h = { dog: 'canine', cat: 'feline', donkey: => 'asinine' }

#  Compared with arrays, hashes have one significant advantage:
#   they can use any object as an index

# Word Frequency: Using Hashes and Arrays

