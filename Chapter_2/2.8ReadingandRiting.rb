# p27 - 28 Chapter 2. Ruby.new
# 2.8 Reading and 'Riting

# Ruby comes with a comprehensive I/O library.

printf("Number: %5.2f,\nString: %s\n", 1.23, "hello")

line = gets
print line

while line = gets
  print line
end

