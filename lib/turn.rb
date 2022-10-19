class Turn
attr_reader :symbol
  def initialize(symbol)
    @symbol = symbol
  end

  def get_computer_input
    # returns a letter, random letter between A..G
    # letter = "A".."G".random
  ("A".."G").to_a.sample
  end

  # def get_human_input
  #   # require 'pry'; binding.pry
  #     player_input = gets.chomp
  #     if player_input.include?('A'..'G')
  #   else
  #     "Invaild input, try again"
  #   end
  # end
end