class Turn
  attr_reader :symbol

  def initialize(symbol)
    @symbol = symbol
  end

  def get_computer_input
    ("A".."G").to_a.sample
  end

  def get_human_input
    gets.chomp.upcase
  end

  def get_input(symbol)
    if symbol == 'X'
      get_human_input
    else
      get_computer_input
    end
  end

  def get_checked_input(symbol, validity_checker)
    player_input = turn.get_input(symbol)
    validity_checker.validity_check
  end
end



