require './lib/board'
require './lib/piece'
require './lib/turn'
require './lib/null_piece'
require './lib/game'
# require './lib/win_check'

class Game
  attr_accessor :game_state
  attr_reader :welcome_message
  def initialize
    #game_state win, player, computer, tie
    @game_state = 'none'
    @welcome_message = "Welcome to Connect Four\n " + "Enter p to play. Enter q to quit."
    @board = Board.new
    @turns = []
    @validity = Validity.new
    # @win_check = Win_check.new(@board)
  end

  def get_main_menu_input
      gets.chomp.downcase
  end
  
  def start 
    puts @welcome_message
    do_menu_command(get_main_menu_input)
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
  def add_turn(turn)
    @turns << turn
  end

  def get_symbol_for_turn
    if turns.length.even?
      'X'
    else turns.length.odd?
      'O'
  end

  def play
    while game_state == 'none' do
      board.display_board
      turn = Turn.new(get_symbol_for_turn)
      add_turn(turn)
      player_input = turn.get_input
      #dry,recursion fix
      if @validity.valid_player_input?(player_input) && @validity.valid_col?(player_input) true
        move on
      else 
        puts "That is an invalid choice, please try again."
        player_input = turn.get_input
      piece = board.place_piece(turn.symbol, player_input)
      #win_check.check_all(piece)
    end
    end_game_message
  end

  def end_game_message
    #add win_check.game_state
    if game_state == 'player'
      puts "Congratulations X, you've won!"
    elsif game_state == 'computer'
      puts "Sorry the comupter has won."
    else 
      puts "It's a tie, no one wins."
    end
    Game.new.play
  end

end