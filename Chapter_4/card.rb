# card.rb

class Card

  SUIT_LIST = {
    clubs:    1,
    diamonds: 2,
    hearts:   3,
    spades:   4
  }

  UNICODE_SUIT_IMAGES = {
    white_club:     "\u2663",
    black_club:     "\u2667",
    white_diamond:  "\u2666",
    black_diamond:  "\u2662",
    white_heart:    "\u2665",
    black_heart:    "\u2661",
    white_spade:    "\u2660",
    black_spade:    "\u2664"
  }

  @@suit_list = ["Clubs", "Diamonds", "Hearts", "Spades"]

  @@rank_list = [nil, "Ace", "2", "3", "4", "5", "6", "7",
              "8", "9", "10", "Jack", "Queen", "King"]

  attr_accessor :suit, :suit_image, :rank

  def initialize(rank, suit)
    @rank = @@rank_list[rank]
    @suit = @@suit_list[suit]

    if @suit ==     "Clubs"
      @suit_image = UNICODE_SUIT_IMAGES[:black_club]
    elsif @suit ==  "Diamonds"
      @suit_image = UNICODE_SUIT_IMAGES[:black_diamond]
    elsif @suit ==  "Hearts"
      @suit_image = UNICODE_SUIT_IMAGES[:black_heart]
    else
      @suit_image = UNICODE_SUIT_IMAGES[:black_spade]
    end
  
end

# card1 = Card.new(1,3)
# puts "#{card1.rank} #{card1.suit} #{card1.suit_image}"

# suit1 = Suit.new(0)

# solid_club =      "\u2663"
# hollow_club =     "\u2667"
# solid_diamond =   "\u2666"
# hollow_diamond =  "\u2662"
# solid_heart =     "\u2665"
# hollow_heart =    "\u2661"
# solid_spade =     "\u2660"
# hollow_spade =    "\u2664"

# ace_of_spades =   "\u1F0A1"
# two_of_spades =   "\u1F0A2"

# puts solid_club.encode('utf-8')
# puts solid_diamond.encode('utf-8')
# puts solid_heart.encode('utf-8')
# puts solid_spade.encode('utf-8')
# puts hollow_club.encode('utf-8')
# puts hollow_diamond.encode('utf-8')
# puts hollow_heart.encode('utf-8')
# puts hollow_spade.encode('utf-8')

# puts ace_of_spades.encode('utf-8')
# puts two_of_spades.encode('utf-8')

# puts solid_club.class

# puts "Suit: #{card2.suit}"
# puts "Rank: #{card2.rank}"

# puts "Suit: #{suit_array[1].suit}"
# puts "Rank: #{suit_array[1].rank}"

# y = 0
# while y <= card_array.length - 1
#   puts "#{card_array[y].rank} of #{card_array[y].suit}"
#   y += 1
# end

# card2 = Card.new(suit: 'Hearts', card: 'Ace', value: 11)

# class Ace < Card
#   def values
#     [1,11]
#   end
# end