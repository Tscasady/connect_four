class Game
  attr_reader :game_state
  def initialize
    #game_state win, player, computer, tie
    @game_state = 'none'
  end


  def welcome_message
      puts "Welcome to Connect Four\n" + "Enter p to play. Enter q to quit."
  end

  def get_main_menu_input
      gets.chomp.downcase
  end

  def do_menu_command(letter)
      if letter == 'p'
        puts 'Choose a valid location to place your piece.'
        #call play method
      elsif letter == 'q'
        puts 'You chose to quit the game, good-bye!'
        #abort or exit file
      else
        puts 'Invaild entry, please try again. Enter p to play. Enter q to quit.'
        do_menu_command(get_main_menu_input)
      end
    
    end


    def test_menu
      welcome_message
      do_menu_command(get_main_menu_input)
    end
    def play
      welcome_message
      #if human.has_lost == true && computer.has_lost == false
        #game_state = computer wins
    # elsif human.has_lost == false && computer.has_lost == true
        # game_state = human wins
    # else
    #   game_state = tie
    end

    def end_game
      
    end
end