# p21 - 22 Chapter 2. Ruby.new
# 2.4 Symbols

# Example using constants
# NORTH = 1
# EAST  = 2
# SOUTH = 3
# WEST  = 4

# walk(NORTH)
# look(EAST)

# Symbols are simply constant names that you don't have to
# predeclare and that are guaranteed to be unique.

# walk(:north)
# look(:east)

def walk(direction)
  if direction == :north
    # ...
  end
end

# inst_section = {
#   :cello    => 'string',
#   :clarinet => 'woodwind',
#   :drum     => 'percussion',
#   :oboe     => 'woodwind',
#   :trumpet  => 'brass',
#   :violin   => 'string'
# }

# p inst_section[:oboe] # => "woodwind"
# p inst_section[:cello] # => "string"
# # Note that strings aren't the same as symbols...
# p inst_section['cell'] # nil

# Symbols as hash keys shortcut syntax
inst_section = {
  cello:      'string', 
  clarinet:   'woodwind',
  drum:       'percussion',
  oboe:       'woodwind',
}

puts "An oboe is a #{inst_section[:oboe]} instrument"