require './lib/board'
require './lib/piece'
require './lib/turn'
require './lib/null_piece'
require './lib/game'

RSpec.describe Game do 
  describe '#initialize' do
    it 'exists' do
      expect(game).to be_a(Game)
    end
  end
end