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

    it 'has direction data' do
      board = Board.new
      piece = board.place_piece('X', 'A')

      expect(WinCheck.new(piece).directions).to be == {
        'UP'    => [0 , 1], 
        'DOWN'  => [0, -1], 
        'LEFT'  => [-1, 0], 
        'RIGHT' => [1, 0]
        }
      end
  end
end