class Dealer < Player
  def display_initial_hand
    puts "ディーラーの引いたカードは#{@hand[0].symbol}の#{@hand[0].rank}です。"
    puts "ディーラーの引いた２枚目のカードは分かりません。"
  end

  def play_turn(deck)
    while calculate_hand_point < 17
      receive_card(deck.draw_card)
    end
  end
end