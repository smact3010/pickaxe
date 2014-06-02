# words_from_string.rb

# a method that splits a string intow words

def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

# downcase returns a lowercase version of a string
# scan returns an array of substrings that match a given pattern
# the pattern is [\w']+

# p words_from_string("But I didn't inhale, he said (emphatically)")

# p words_from_string("Sparky the Cat sat on the mat")