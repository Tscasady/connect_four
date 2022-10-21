require './lib/board'
require './lib/piece'
require './lib/turn'
require './lib/null_piece'
require './lib/game'

RSpec.describe Game do 
  describe '#initialize' do
    it 'exists' do
      game = Game.new
      expect(game).to be_a(Game)
    end

    it 'has game_state with a default value of none' do
      game = Game.new
      expect(game.game_state).to eq('none')
    end
  end

  xdescribe '#play_game' do
    it '' do
      game = Game.new
    end
  end

  describe '#welcome_message' do
    it 'returns welcome string' do
      game = Game.new
      expect(game.welcome_message).to eq("Welcome to Connect Four\n Enter p to play. Enter q to quit.")
    end

    xit 'can quit' do
      game = Game.new 
      expect(game.can_quit?).to eq(true)
    end
#invaild input check as well

    it 'can play' do
      game = Game.new
      expect(game.can_play?).to eq(true)
    end
  end

  describe '#play' do #from the board class
    it 'will change the game state when it ends' do
      expect(game.game_state).to !=('none')
    end
  end

  describe '#end_game' do
    it "will check game state to return a message" do

    end
  end

    


end
