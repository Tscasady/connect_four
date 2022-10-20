require './lib/null_piece'

RSpec.describe NullPiece do
  describe '#initialize' do
    it 'exists' do
      null = NullPiece.new

      expect(null).to be_a NullPiece
    end

    it "has default symbol '.'" do
      expect(NullPiece.new.symbol).to eq '.'
    end
  end
end
