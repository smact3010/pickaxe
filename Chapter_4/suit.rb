# suit.rb

require_relative 'card'

class Suit

  @@suit = []

  def initialize(suit)
    for rank in 1..13
      card = Card.new(rank, suit)
      @@suit[rank] = card
    end
  end

  def card(index)
    @@suit[index]
  end
end

suit1 = Suit.new(1)

for index in 1..13
  puts "#{suit1.card(index).rank} \t#{suit1.card(index).suit_image} #{suit1.card(index).suit}"
end