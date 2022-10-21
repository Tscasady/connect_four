class WinCheck
  attr_reader :piece, :directions

  def initialize(piece)
    @piece = piece
    #Data used to modify the [x,y] to 'look' in a direction for a win.
    @directions = {
      'UP'    => [0 , 1], 
      'DOWN'  => [0, -1], 
      'LEFT'  => [-1, 0], 
      'RIGHT' => [1, 0]
      }
  end
end
