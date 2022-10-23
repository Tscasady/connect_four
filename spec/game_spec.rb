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

    it 'returns welcome string' do
      game = Game.new
      expect(game.welcome_message).to eq("Welcome to Connect Four\n Enter p to play. Enter q to quit.")
    end

    it 'has game_state with a default value of none' do
      game = Game.new
      expect(game.game_state).to eq('none')
    end
  
    xit 'has a board' do
      game = Game.new
      expect(game.board).to be_a(Board)
    end

    xit 'has a empty turns array' do
      game = Game.new
      expect(game.turns).to eq([])
    end

    xit 'has a validity' do
      game = Game.new
      expect(game.validity).to be_a(Validity)
    end

    xit 'has a win_check' do
      game = Game.new
      expect(game.win_check).to be_a(WinCheck)
    end
  end


  xdescribe '#play_game' do
    it '' do
      game = Game.new
    end
  end

#     xit 'can quit' do
#       game = Game.new 
#       expect(game.can_quit?).to eq(true)
#     end
# #invaild input check as well

#     it 'can play' do
#       game = Game.new
#       expect(game.can_play).to eq(true)
#     end
#   end
  xdescribe '#add_turn' do
    it 'can add a turn to the turns array' do
      game = Game.new
      turn = Turn.new('O')
      game.add_turn(turn)

      expect(game.turns).to eq([turn])
    end

  xdescribe '#get_symbol_for_turn' do
    it 'can return a symbol for turn' do
      game = Game.new
      symbol = game.get_symbol_for_turn

      expect(game.symbol).to eq('X')
    end
  
  xdescribe '#play' do #from the board class
    it 'will change the game state when it ends' do
      expect(game.game_state).to !=('none')
    end
  end

  xdescribe '#change_game_state' do
    it 'will change game state to player if the winning piece symbol is X' do

    end

    it 'will change game state to computer if the winning piece symbol is O' do

    end

    it 'will do nothing if the piece is not a winning play' do
      game = Game.new
      turn = Turn.new('O')
      piece = game.board.place_piece(turn.symbol, 'A')
      game.change_game_state(piece)

      expect(game.game_state).to eq('none')
    end
  end

  xdescribe '#end_game_message' do
    it "will check game state to return a message" do
      game = Game.new
      game.game_state = 'player'
      game_2 = 
      expect(game_2).to eq("Congratulations X, you've won!")
    end
  end

    


end
