require './lib/board'
require './lib/piece'
require './lib/turn'
require './lib/null_piece'
require './lib/game'
require './lib/win_check'
require './lib/validity'
require './lib/menu'
require './lib/player'

class Game
  attr_reader :welcome_message,
              :game_state,
              :turns,
              :validity

  def initialize
    #game_state win, player, computer, tie
    @config = Menu.new.start
    @board = Board.new(@config["board_width"], @config["board_height"])
    @win_check = WinCheck.new(@board, @config["win_condition"])
    @validity = Validity.new(@board)
    @game_state = 'none'
    @turns = []    
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

  def some_method
    player_1 = Player.new('player', 'X', '?') # get name method
    player_2 = Player.new(get_player_type, 'O', '?')
    
  end

  def get_player_type
    if @config["number_of_players"] == 1
      "computer"
    else 
      "player"
    end
  end

  def play
    while @game_state == 'none' do
      puts @board.display_board
      turn = Turn.new(get_symbol_for_turn)
      add_turn(turn)
      player_input = turn.get_checked_input(turn.symbol, @validity)
      piece = @board.place_piece(turn.symbol, player_input)
      puts @board.display_board
      @game_state = 'tie' if @board.full_board?
      change_game_state(piece)
    end
    end_game_message
  end

  def change_game_state(piece)
    if @win_check.win?(piece)
      if piece.symbol == 'X' 
        @game_state = 'player'
     else
        @game_state = 'computer'
     end
    end
  end

  def end_game_message
    #add win_check.game_state
    if @game_state == 'player'
      puts "Congratulations X, you've won!"
    elsif @game_state == 'computer'
      puts "Sorry the comupter has won."
    else 
      puts "It's a tie, no one wins."
    end
    game = Game.new.setup
    game.play
  end

end