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

  def get_human_input
    # require 'pry'; binding.pry
    answers = ['A', 'B', 'C', 'D', 'E', 'F', 'G']
    player_input = 'A'

      answers.find do |answer|
        # require 'pry'; binding.pry
        if answer == player_input
          true
        else
          false
        end
      end
  end
  #     if player_input.include?(answers)
  #   else
  #     "Invaild input, try again"
  #   end
  # end

end