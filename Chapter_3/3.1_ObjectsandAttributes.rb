# 3.1_ObjectsandAttributes.rb

# p32 Chapter 3. Classes, Objects, and Variables

#  Everything we manipulate in Ruby is an object
#  Every object in Ruby was generated either directly or
#   indirectly from a class.

# 3.1 Objects and Attributes

#  Attributes - externally visible facets of an object.

# Writable Attributes
#  Sometimes you need to be able to set an attribute from
#   outside the object
#  In Ruby, the attributes of an object can be accessed
#   as if they were any other variable.

#   *Ruby provides a shortcut for creating simple
#    attribute-setting methods:
#    - attr_reader    # read-only accessor shortcut
#    - attr_writer    # write-only accessor shortcut
#    - attr_accessor  # reader + writer accessor shortcut

# Virtual Attributes
#  These attribute-accessing methods do not have to be just
#   simple wrappers around an object's instance variables.


# Attributes, Instance Variables, and Methods

#  The internal state is held in instance variables '@vars'.
#  The external state is exposed through methods we're 
#   calling 'attributes'. 