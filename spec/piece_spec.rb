#symbol 'x' - player, 'o' - computer
#own position 'x' and 'y' -two seperate

require './lib/piece'

RSpec.describe Piece do
  before (:each) do
    @piece = Piece.new()
  end

  describe '#initialize' do
    it 'exists' do
      expect(@piece).to be_a(Piece)
    end
  end

  xdescribe '#symbol' do
    it 'can return a player symbol' do
      expect(@piece.symbol).to eq('X')
    end

    it 'can return a computer symbol' do
       expect(@piece.symbol).to eq('O')
    end
  end

  xdescribe '#x_pos' do
    it 'can return postion' do
      
    end

    it 'can return a different position' do

    end
  end

  xdescribe '#y_pos' do
    it 'can return postion' do

    end

    it 'can return a different position' do

    end
  end
end
