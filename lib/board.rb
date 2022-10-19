class Board

  attr_reader :col_indices, :grid, :game_state

  def initialize()
    @col_indices = {'A'=>0, :B=>1, :C=>2, :D=>3, :E=>4, :F=>5, :G=>6}
    @grid = [[],[],[],[],[],[],[]]
    @game_state = 'none' #consider relocating depending on win_check and game class logic
  end

end

