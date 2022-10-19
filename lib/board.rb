class Board

  attr_reader :col_indices, :columns, :game_state

  def initialize()
    @col_indices = {'A'=>0, "B" =>1, "C"=>2, "D"=>3, "E"=>4, "F"=>5, "G"=>6}
    @columns = [[],[],[],[],[],[],[]]
    @game_state = 'none' #consider relocating depending on win_check and game class logic
  end

  def valid_player_input?(player_input)
    @col_indices.keys.include?(player_input.upcase)
  end

  def valid_col(player_input)
    @columns[@col_indices[player_input]].length < 7
  end

  def full_board?
    @columns.all? {|column| column.length == 7}
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
  end




end

