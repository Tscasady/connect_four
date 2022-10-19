#symbol 'x' - player, 'o' - computer
#own position 'x' and 'y' -two seperate

require './lib/piece'

RSpec.describe Piece do
  before (:each) do
    @piece = Piece.new("X", 3, 5)
  end

  describe '#initialize' do
    it 'exists' do
      expect(@piece).to be_a(Piece)
    end
  end

  describe '#symbol' do
    it 'can return a player symbol' do
      expect(@piece.symbol).to eq('X')
    end

    xit 'can return a computer symbol' do
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
