# p23 - 24 Chapter 2. Ruby.new
# 2.5 Control Structures

today = Time.now

# If, Else if, Else
if today.saturday?
  puts "Do chores around the house"
elsif today.sunday?
  puts "Relax"
else
  puts "Go to work"
end

# # While
# num_pallets = 0
# weight      = 0
# while weight < 100 and num_pallets <= 5
#   pallet = next_pallet()
#   weight += pallet.weight
#   num_pallets += 1
# end

# while line = gets
#   puts line.downcase
# end

# # Undefined local variable or method
# # For example only
# if radiation > 3000
#   puts "Danger, Will Robinson"
# end

# # Rewritten using a statement modifier:
# puts "Danger, WIll Robinson" if radiation > 3000

square = 4
while square < 1000
  square = square*square
  puts "square = #{square}" # added as output
end

square = 4
square = square*square while square < 1000

# More concise version