require './lib/player'
require './lib/game'
require './lib/piece'
require './lib/turn'
require './lib/validity'
require './lib/win_check'
require './lib/null_piece'

RSpec.describe Player do
  describe 'initialize' do
    it 'exists' do
      player = Player.new('player', 'X')
      expect(player).to be_a(Player)
    end
    it 'can chose human or computer' do
      #player 1 is human
      #can choose if player 2 is human or computer
      expect(player.type)
    end
 
  
    it 'is assigned a symbol' do
      #if odd player will be 'X'
      #if even player will be 'O'
      player_1 = 'X'
      expect(player.symbol).to eq('X')
    end
  
    it 'can return a name for player' do
      expect(player.name)
    end
  
  end




end