require './lib/board'
require './lib/piece'
require './lib/turn'
require './lib/null_piece'
require './lib/game'
# require './lib/win_check'

class Game
  attr_reader :game_state, :welcome_message
  def initialize
    #game_state win, player, computer, tie
    @game_state = 'none'
    @welcome_message = "Welcome to Connect Four\n " + "Enter p to play. Enter q to quit."
    @board = Board.new
    @win_check = Win_check.new(@board)

  def get_main_menu_input
      gets.chomp.downcase
  end

  def do_menu_command(letter)
      if letter == 'p'
        puts 'Choose a valid location to place your piece.'
        #call play method
      elsif letter == 'q'
        puts 'You chose to quit the game, good-bye!'
        exit!
        #abort or exit file
      else
        puts 'Invaild entry, please try again. Enter p to play. Enter q to quit.'
        do_menu_command(get_main_menu_input)
      end
  end

  # def test_menu
  #   welcome_message
  #   do_menu_command(get_main_menu_input)
  # end

  def play
    puts @welcome_message
    do_menu_command(get_main_menu_input)
    end_game_message
  end

  def end_game_message
    if win_check.game_state == 'player'
      puts "Congratulations X, you've won!"
    elsif win_check.game_state == 'computer'
      puts "Sorry the comupter has won."
    else 
      puts "It's a tie, no one wins."
    end
    #create new game object
  end

end