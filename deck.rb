require_relative 'card'

class Deck
  attr_reader :cards

  def initialize
    @cards = generate_deck
  end

  def draw_card
    @cards.pop
  end

  private

  def generate_deck
    symbols =%w[ハート ダイヤ クラブ スペード]
    ranks = %w[2 3 4 5 6 7 8 9 10 J Q K A]
    cards = []

    symbols.each do |symbol|
      ranks.each do |rank|
        cards << ::Card.new(symbol, rank)
      end
    end

    cards.shuffle
  end
end