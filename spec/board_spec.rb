require './lib/board'

RSpec.describe Board do
  describe '#initialize' do
    it 'exists' do
      board = Board.new

      expect(board).to be_a Board
    end

    xit 'has a column index hash' do
      #unexpected Rspec hash complaints
      board = Board.new

      expect(board.col_indices).to eq {}
    end

    it 'has an array of seven empty column arrays' do
      board = Board.new

      expect(board.grid).to eq [[],[],[],[],[],[],[]] 
    end

    it 'has a game_state' do
      board = Board.new

      expect(board.game_state).to eq 'none'
    end
  end

  describe '#valid_input?' do
    it 'returns a boolean for whether or not the input is a valid letter' do
      board = Board.new
      input = 'b'
      input2 = 'Z'

      expect(board.valid_input?(input)).to be true
      expect(board.valid_input?(input2)).to be false
    end
  end

  describe '#valid_col' do
    it 'checks if column is full' do
      #rewrite test with pieces
      board = Board.new

      expect(board.valid_col('D')).to be true
    end
end
