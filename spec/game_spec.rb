require './lib/board'
require './lib/piece'
require './lib/turn'
require './lib/null_piece'
require './lib/game'
# require './lib/win_check'

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

  xdescribe '#play' do #from the board class
    it 'will change the game state when it ends' do
      expect(game.game_state).to !=('none')
    end
  end

  describe '#end_game_message' do
    it "will check game state to return a message" do
      game = Game.new
      game.game_state = 'player'
      expect(game.end_game_message).to eq("Congratulations X, you've won!")
    end
  end

    


end
