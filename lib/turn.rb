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

end


