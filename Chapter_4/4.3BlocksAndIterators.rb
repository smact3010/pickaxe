# 4.3BlocksAndIterators.rb
# 4.3 Blocks and Iterators


# A for loop iterating over an array (non-functioning example)
# for i in 0..4
#   word = top_five[i][0]
#   count = top_five[i][1]
#   puts "#{word}: #{count}"
# end

# top_five.each do |word, count|
#   puts "#{word}: #{count}"
# end

# The method each is an iterator

# puts top_five.map { |word, count| "#{word}: #{count}" }


# Blocks


# A block is simply a chunk of code enclosed between either
#  braces or the keywords do and end

# Ruby style seems to favor using braces for blocks that
#  fit on one line and do/end when a block spans multiple lines:

# some_array.each {|value| puts value * 3}

# sum = 0
# other_array.each do |value|
#   sum += value
#   puts value / sum
# end

sum = 0
[1, 2, 3, 4].each do |value|
  square = value * value
  sum   += square
end
puts sum

# The block is being called by the each method once for each element in the array.
