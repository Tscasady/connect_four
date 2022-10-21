require './lib/win_check'
require './lib/board'

describe WinCheck do
  describe '#initialize' do
    it 'exists' do
      board = Board.new
      piece = board.place_piece('X', 'A')

      expect(WinCheck.new(piece, board)).to be_a WinCheck
    end

    it 'is initialized with a piece' do
      board = Board.new
      piece = board.place_piece('X', 'A')

      expect(WinCheck.new(piece, board).piece).to be_a Piece
    end
  end

  describe '#check_all' do
    'checks in the 8 ordinal and cardinal directions for a matching piece' do
    end
  end

  describe '#check' do
    it 'recursively checks for a matching piece in the given direction' do
      board = Board.new
      board.place_piece('X', 'A')
      board.place_piece('X', 'A')
      board.place_piece('X', 'A')
      board.place_piece('X', 'A')
      piece = board.place_piece('X', 'A')
      win_check = WinCheck.new(piece,board)
      
      expect(WinCheck.new(piece, board).check_all(piece, board)).to be 4
    end
  end

  describe '#check_below' do
  end

end