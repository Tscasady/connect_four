require './lib/win_check'
require './lib/board'

describe WinCheck do
  describe '#initialize' do
    it 'exists' do
      board = Board.new
      
      expect(WinCheck.new(board)).to be_a WinCheck
    end
  end

  describe '#win?' do    
    it 'recursively checks for a matching piece in all directions' do
      board = Board.new
      board.place_piece('X', 'A')
      board.place_piece('X', 'A')
      board.place_piece('X', 'A')
      board.place_piece('X', 'A')
      piece = board.place_piece('X', 'A')
      win_check = WinCheck.new(board)
  
      expect(win_check.win?(piece)).to be true
    end

    it 'can check for another win' do
      board = Board.new
      board.place_piece('O', 'A')
      board.place_piece('O', 'B')
      board.place_piece('O', 'C')
      piece = board.place_piece('O', 'D')
      
      win_check = WinCheck.new(board)

      expect(win_check.win?(piece)).to be true
    end

    it 'can check for a diagonal win' do
      board = Board.new
      board.place_piece('X', 'A')

      board.place_piece('O', 'B')
      board.place_piece('X', 'B')

      board.place_piece('O', 'C')
      board.place_piece('O', 'C')
      board.place_piece('X', 'C')

      board.place_piece('O', 'D')
      board.place_piece('O', 'D')
      board.place_piece('O', 'D')
      piece = board.place_piece('X', 'D')

      win_check = WinCheck.new(board)

      expect(win_check.win?(piece)).to be true
    end

    it 'can check for a win with pieces on either side of final peice.' do
      board = Board.new
      board.place_piece('O', 'A')
      board.place_piece('O', 'C')
      board.place_piece('O', 'D')
      piece = board.place_piece('O', 'B')
      
      win_check = WinCheck.new(board)

      expect(win_check.win?(piece)).to be true
    end

    it 'will not return false positives' do
      board = Board.new
      board.place_piece('X', 'A')
      board.place_piece('O', 'C')
      board.place_piece('X', 'D')
      board.place_piece('O', 'B')
      piece = board.place_piece('X', 'G')

      win_check = WinCheck.new(board)

      expect(win_check.win?(piece)).to be false
    end
  end
end