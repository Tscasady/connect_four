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
    


end

