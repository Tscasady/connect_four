require './lib/board'
require './lib/piece'
require './lib/turn'
require './lib/null_piece'
require './lib/game'
require './lib/win_check'

RSpec.describe Game do 
  describe '#initialize' do
    it 'exists' do
      game = Game.new
      expect(game).to be_a(Game)
    end
  end

    it 'returns welcome string' do
      game = Game.new
      expect(game.welcome_message).to eq("Welcome to Connect Four\n Enter p to play. Enter q to quit.")
    end

    it 'has game_state with a default value of none' do
      game = Game.new
      expect(game.game_state).to eq('none')
    end
  
    it 'has a board' do
      game = Game.new
      expect(game.board).to be_a(Board)
    end

    it 'has a empty turns array' do
      game = Game.new
      expect(game.turns).to eq([])
    end

    it 'has a validity' do
      game = Game.new
      expect(game.validity).to be_a(Validity)
    end

    it 'has a win_check' do
      game = Game.new
      expect(game.win_check).to be_a(WinCheck)
    end
  end

  describe '#add_turn' do
    it 'can add a turn to the turns array' do
      game = Game.new
      turn = Turn.new('O')
      game.add_turn(turn)

      expect(game.turns).to eq([turn])
    end
  end

  describe '#get_symbol_for_turn' do
    it 'can return a symbol for turn' do
      game = Game.new
      symbol = game.get_symbol_for_turn

      expect(symbol).to eq('X')
    end

  describe '#change_game_state' do
    it 'will change game state to player if the winning piece symbol is X' do
      game = Game.new
      game.board.place_piece('X', 'A')
      game.board.place_piece('X', 'A')
      game.board.place_piece('X', 'A')
      piece = game.board.place_piece('X', 'A')
      game.change_game_state(piece)
      expect(game.game_state).to eq('player')
    end

    it 'will change game state to computer if the winning piece symbol is O' do
      game = Game.new
      game.board.place_piece('O', 'A')
      game.board.place_piece('O', 'A')
      game.board.place_piece('O', 'A')
      piece = game.board.place_piece('O', 'A')
      game.change_game_state(piece)
      expect(game.game_state).to eq('computer')
    end

    it 'will do nothing if the piece is not a winning play' do
      game = Game.new
      turn = Turn.new('O')
      piece = game.board.place_piece(turn.symbol, 'A')
      game.change_game_state(piece)

      expect(game.game_state).to eq('none')
    end
  end


    


end
