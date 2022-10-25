class Turn
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def get_computer_input
    ("A".."G").to_a.sample
  end

  def get_human_input
    puts 'Choose a valid location to place your piece.'
    gets.chomp.strip.upcase
  end

  def get_input(type)
    if type == 'player'
      get_human_input
    else
      get_computer_input
    end
  end

  def get_checked_input(type, validity_checker)
    player_input = get_input(type)
    if validity_checker.validity_checks(player_input)
      player_input
    else
       puts "That is an invalid choice, please try again."
      get_checked_input(type, validity_checker)
    end
   

  end
end



