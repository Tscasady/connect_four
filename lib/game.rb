class Game
  attr_reader :game_state
  def initialize
    #game_state win, player, computer, tie
    @game_state = 'none'
  end
end

def start
  human_input = ''
  until human_input == 'q'
    puts "Welcome to Connect Four\n" + "Enter p to play. Enter q to quit."
    human_input = gets.chomp

    if human_input.downcase == 'p'
      puts 'Chose a valid location to place your piece.'

    elsif human_input.douwncase == 'q'
      puts 'You chose to quit the game, good-bye!'
    else
      puts 'Invaild entry, please try again. Enter p to play. Enter q to quit.'
    end
  end
end