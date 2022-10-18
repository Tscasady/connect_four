#symbol 'x' - player, 'o' - computer
#own position 'x' and 'y' -two seperate

require './lib/piece'

RSpec.describe Piece do
  before (:each) do
    @piece = Piece.new()
  end

  describe '#initialize' do
    it 'exists and has readable attributes' do
      expect(@piece).to be_a(Piece)
    end
  end

  xdescribe '#symbols' do
    it 'can have piece for player and computer' do

    end
  end

  xdescribe '#own_position' do
    it "can check postion based on 'x' and 'y' axis" do

    end
  end
end
