require './lib/board'

RSpec.describe Board do
  describe '#initialize' do
    it 'exists' do
      board = Board.new

      expect(board).to be_a Board
    end

    it 'has a column index hash' do
      #unexpected Rspec hash complaints
      board = Board.new

      expect(board.col_indices).to be == {
        "A" => 0, 
        "B" => 1, 
        "C" => 2, 
        "D" => 3, 
        "E" => 4, 
        "F" => 5, 
        "G" => 6
      }
    end

    it 'has an array of seven empty column arrays' do
      board = Board.new

      expect(board.columns).to eq [[],[],[],[],[],[],[]] 
    end

    it 'has a game_state' do
      board = Board.new

      expect(board.game_state).to eq 'none'
    end
  end

  describe '#valid_player_input?' do
    it 'returns a boolean for whether or not the input is a valid letter' do
      board = Board.new
      input = 'b'
      input2 = 'Z'

      expect(board.valid_player_input?(input)).to be true
      expect(board.valid_player_input?(input2)).to be false
    end
  end

  describe '#valid_col' do
    it 'checks if column is full' do
      #rewrite test with pieces
      board = Board.new

      expect(board.valid_col('D')).to be true
    end
  end

  describe '#full_board?' do
  #double check with full board
    it 'checks if the board is full' do
      board = Board.new

      expect(board.full_board?).to be false
    end
  end

  describe 'place_piece' do
    it 'makes a new piece and adds it to grid' do
      board = Board.new
      board.place_piece('X', 'A')

      expect(board.columns[0][0]).to be_a Piece
    end

    it 'assigns piece appropriate x coord' do
      board = Board.new
      board.place_piece('X', 'A')
      board.place_piece('O', 'D')

      expect(board.columns[3][0].x_pos).to be 3
    end

    it 'assigns piece appropriate y coord' do
      board = Board.new
      board.place_piece('X', 'A')
      board.place_piece('O', 'A')

      expect(board.columns[0][1].y_pos).to be 1
    end
  end

  describe '#display_board' do
    it 'returns a string' do
      board = Board.new

      expect(board.display_board).to be == (
      ". . . . . . . \n. . . . . . . \n. . . . . . . \n. . . . . . . \n. . . . . . . \n. . . . . . . \n"
      )
    end

    it 'can return a different string if a piece is placed' do
      board = Board.new
      board.place_piece('X', 'A')

      expect(board.display_board).to eq ". . . . . . . \n. . . . . . . \n. . . . . . . \n. . . . . . . \n. . . . . . . \nX . . . . . . \n"
    end
  end

  describe '#fetch_piece' do
    it "returns a piece" do
      board = Board.new
      board.place_piece('X', 'A')
      board.place_piece('O', 'A')

      piece1 = board.fetch_piece(0, 0)
      piece2 = board.fetch_piece(0, 1)
      
      #An element that does not exist
      piece3 = board.fetch_piece(4 ,3)

      #A negative index
      piece4 = board.fetch_piece(-1, 0)

      
      expect(piece1.symbol).to eq 'X'
      expect(piece2.symbol).to eq 'O'
      expect(piece3).to be_a NullPiece
      expect(piece4).to be_a NullPiece
    end
  end


    
end
