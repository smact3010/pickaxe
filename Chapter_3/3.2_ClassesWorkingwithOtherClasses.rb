# 3.2_ClassesWorkingwithOtherClasses.rb

# p37 Chapter 3. Classes, Objects, and Variables


# 3.2 Classes Working with Other Classes

# During OO design, you identify external things and
#  make them classes in your code.

# Classes describe objects and contain the methods
#  that allow you to interact with those objects.

# The pattern you want to aim for:
#  Your initialize method sets up an environment
#   for your object, leaving it in a usable state.
#  Other methods then use that state.

# It is necessary to be able to use classes that are
#  external - external dependencies.

#   require 'filename' - used to load an external dependency

#   require_relative 'filename' - when the location of the
#    file is relative to the file we're loading from - they
#    are both in the same directory.

# "Do we need [multiple] source files...? No. In fact, most
#   Ruby developers would probably start off by sticking
#   all... code  into a single file -- it would contain both
#   class definitions as well as the driver code."
# - This starts to get cumbersome
# - Makes writing automated tests harder
# - Will not be able to reuse classes if bundled