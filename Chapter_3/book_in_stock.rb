class BookInStock
  attr_reader :isbn, :price

  def initialize(isbn, price)
    @isbn   = isbn
    @price  = Float(price)
  end
end


# Scratch code
#   # accessor method(s) shortcuts:
#   # readable accessor, like get
#   attr_reader :isbn
#   # writable accessor, like set               
#   # attr_writer
#   # reader + writer
#   attr_accessor :price

#   def initialize(isbn, price)     # initialize method
#     @isbn   = isbn                # instance variables store state
#     @price  = Float(price)
#   end

#   def price_in_cents
#     Integer(price*100 + 0.5)    
#   end

#   def price_in_cents=(cents)      # writable attribute
#     @price = cents / 100.0
#   end

#   def price=(new_price)           # writable attributes, end in =
#     @price = new_price
#   end

#   # def isbn1                     # accessor method(s)
#   #   @isbn
#   # end
#   # def price
#   #   @price
#   # end

#   # def to_s
#   #   "ISBN: #{@isbn}, price: #{@price}"
#   # end

# end

# book = BookInStock.new("isbn1", 33.80)
# # puts "ISBN          = #{book.isbn}"
# puts "Price           = #{book.price}"
# puts "Price in cents  = #{book.price_in_cents}"
# book.price_in_cents = 1234
# puts "Price           = #{book.price}"
# puts "Price in cents  = #{book.price_in_cents}"
# # book.price = book.price * 0.75    # discount price
# # puts "New price = #{book.price}"


