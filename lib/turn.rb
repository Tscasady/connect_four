class Turn
  attr_reader :symbol

  def initialize(symbol)
    @symbol = symbol
  end

  def get_computer_input
    ("A".."G").to_a.sample
  end

  def get_human_input
    puts 'Choose a valid location to place your piece.'
    gets.chomp.strip.upcase
  end

  def get_input(symbol)
    if symbol == 'X'
      get_human_input
    else
      get_computer_input
    end
  end

  def get_checked_input(symbol, validity_checker)
    player_input = get_input(symbol)
    if validity_checker.validity_checks(player_input)
      player_input
    else
       puts "That is an invalid choice, please try again."
      get_checked_input(symbol, validity_checker)
    end
   

  end
end



