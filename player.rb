class Player
  attr_reader :hand

  def initialize
    @hand =[]
  end

  def receive_card(card)
    @hand << card
  end

  def calculate_hand_point
    points =@hand.map(&:point)
    sum = points.sum
    num_aces = points.count{|point| point ==11}

    while sum > 21 && num_aces.positive?
      sum -= 10
      num_aces -= 1
    end
    
    sum

  end
end

