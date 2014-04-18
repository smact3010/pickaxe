# p24 - 25 Chapter 2. Ruby.new
# 2.6 Regular Expressions

# /Perl|Python/          # Perl or Python
# /P(erl|ython)/         # Perl or Python

# \s - whitespace character (space, tab, newline)
# \d - digit
# \w - any character in a typical word
# .   - almost any character

# A table of these character classes appears in Table 2,
#   Character class abbreviations, on page 101

# /\d\d:\d\d:\d\d/      # a time such as 12:34:56
# /Perl.*Python/        # Perl, zero or more other chars, then Python
# /Perl Python/         # Perl, a space, and Python
# /Perl *Python/        # Perl, zero or more spaces, and Python
# /Perl +Python/        # Perl, one or more spaces, and Python
# /Perl\s+Python/       # Perl, whitespace characters, then Python
# /Ruby (Perl|Python)/  # Ruby, a spaced, and either Perl or Python

line = gets
if line =~ /Perl|Python/
  puts "Scripting language mentioned: #{line}"
end



