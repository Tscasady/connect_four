require './lib/win_check'
require './lib/board'

describe WinCheck do
  describe '#initialize' do
    it 'exists' do
      board = Board.new
      piece = board.place_piece('X', 'A')

      expect(WinCheck.new(piece)).to be_a WinCheck
    end

    it 'is initialized with a piece' do
      board = Board.new
      piece = board.place_piece('X', 'A')

      expect(WinCheck.new(piece).piece).to be_a Piece
    end
  end
end