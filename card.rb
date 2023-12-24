class Card
  attr_reader :symbol, :rank, :point

  def initialize(symbol, rank)
    @symbol = symbol
    @rank = rank
    @point = card_point(rank)
  end

  def card_point(rank)
    return 10 if ["J","Q","K"].include?(rank)
    return 11 if rank == "A"
    rank.to_i
  end
end