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
end
