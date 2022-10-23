require './lib/board'
require './lib/piece'
require './lib/turn'
require './lib/null_piece'
require './lib/game'
require './lib/win_check'
require './lib/validity'

class Game

  def initialize
    #game_state win, player, computer, tie
    @game_state = 'none'
    @welcome_message = "Welcome to Connect Four\n " + "Enter p to play. Enter q to quit."
    @board = Board.new
    @turns = []
    @validity = Validity.new(@board)
    @win_check = WinCheck.new(@board)
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
        play
      elsif letter == 'q'
        puts 'You chose to quit the game, good-bye!'
        exit!
        #abort or exit file
      else
        puts 'Invaild entry, please try again. Enter p to play. Enter q to quit.'
        do_menu_command(get_main_menu_input)
      end
  end

  def add_turn(turn)
    @turns << turn
  end

  def get_symbol_for_turn
    if @turns.length.even?
      'X'
    else @turns.length.odd?
      'O'
    end
  end

  def play
    while game_state == 'none' do
      puts @board.display_board
      turn = Turn.new(get_symbol_for_turn)
      add_turn(turn)
      player_input = turn.get_checked_input(turn.symbol, @validity)
      piece = @board.place_piece(turn.symbol, player_input)
      @board.display_board
      @game_state = 'tie' if @board.full_board?
      change_game_state(piece)
    end
    end_game_message
  end

  def change_game_state(piece)
    if @win_check.check_all(piece)
      if piece.symbol == 'X' 
        @game_state = 'player'
     else
        @game_state = 'computer'
     end
    end
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
    Game.new.start
  end

end