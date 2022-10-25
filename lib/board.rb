require './lib/piece'
require './lib/null_piece'

class Board

  attr_reader :col_indices, :columns

  def initialize(board_width, board_height)
    @col_indices = {
                    "A" => 0, 
                    "B" => 1, 
                    "C" => 2, 
                    "D" => 3, 
                    "E" => 4, 
                    "F" => 5, 
                    "G" => 6
                  }
    @columns = []
    create_columns(board_width)
  end

  def create_columns(board_width)
    board_width.times do
      @columns << []
    end
  end
      

  def full_board?
    @columns.all? {|column| column.length == 6}
  end
    
  def place_piece(symbol, player_input)
    
    #translate the letter given by the player to an x coord on a grid
    piece_xpos = @col_indices[player_input]

    #Create a new piece with appropriate symbol and x coord
    piece = Piece.new(symbol, piece_xpos)

    #Add piece to grid
    @columns[piece_xpos] << piece

    #give piece y coord in grid
    piece.y_pos = @columns[piece_xpos].index(piece)
    
    piece
  end

  def display_board
    #generate 7 rows to be displayed by asking
    #each element of the grid what its symbol is.
    count = 5
    grid = []
    col_indices.each_key do |column_header|
      grid << "#{column_header}" + ' '
    end
    grid << "\n" 
    6.times do
      @columns.each_index do |index| 
        x_pos = index
        y_pos = count
        grid << "#{fetch_piece(x_pos, y_pos).symbol}" + ' '
      end
      count -= 1
      grid << "\n"
    end
    grid.join
  end

  
  def fetch_piece(x_pos, y_pos)
    #This method retrives a piece at a given location.
    #If that location points to a nil, it creates a standin null piece
    #This null piece can answer the message .symbol 

    #piece = @columns[x_pos][y_pos]

    if (x_pos < 0 || y_pos < 0) #prevents negative indices from 'wrapping' the board
      NullPiece.new 
    elsif @columns[x_pos].nil? || @columns[x_pos][y_pos].nil?
      NullPiece.new
    else
      @columns[x_pos][y_pos]
    end
  end

end