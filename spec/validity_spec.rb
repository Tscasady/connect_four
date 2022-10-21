require './lib/board'
require './lib/piece'
require './lib/turn'
require './lib/null_piece'
require './lib/game'
require './lib/validity'

RSpec.describe Validity do
  describe '#initialize' do
    it 'exists' do
      board = Board.new
      validity = Validity.new(board)
  
      expect(validity).to be_a(Validity)
    end
  end

  describe '#valid_player_input?' do
    it 'returns a boolean for whether or not the input is a valid letter' do
    input = 'b'
    input2 = 'Z'
    board = Board.new
    validity = Validity.new(board)
    expect(validity.valid_player_input?(input)).to be true
    expect(validity.valid_player_input?(input2)).to be false
    end
  end

  describe '#valid_col' do
  it 'checks if column is full' do
    #rewrite test with pieces
    board = Board.new
    board.place_piece('X', 'D')
    board.place_piece('X', 'D')
    board.place_piece('X', 'D')
    board.place_piece('X', 'D')
    board.place_piece('X', 'D')
    board.place_piece('X', 'D')
    input = 'D'
    input_2 = 'A'
    validity = Validity.new(board)

    expect(validity.valid_col(input)).to be false
    expect(validity.valid_col(input_2)).to be true

    end
  end

end