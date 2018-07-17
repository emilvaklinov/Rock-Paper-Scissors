class Game

  def initialize(player1, hand1, player2, hand2)
    @hand1 = hand1
    @hand2 = hand2
    @player1 = player1
    @player2 = player2
  end

  # def compare
  #
  # end

  def compare
    return "It's a TIE!" if @hand1 == @hand2
    return "#{@player1} wins by plaiyng scissors!"  if @hand1 == "scissors" && @hand2 == "paper"
    return "#{@player1} wins by plaiyng paper!"  if @hand1 == "paper" && @hand2 == "rock"
    return "#{@player1} wins by playing rock!"  if @hand1 == "rock" && @hand2 == "scissors"

    return "#{@player2} wins by playing rock!"  if @hand1 == "scissors" && @hand2 == "rock"
    return "#{@player2} wins by plaiyng paper!"  if @hand1 == "rock" && @hand2 == "paper"
    return "#{@player2} wins by plaiyng scissors!"  if @hand1 == "paper" && @hand2 == "scissors"
  end

end
