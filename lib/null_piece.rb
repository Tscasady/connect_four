class NullPiece
  attr_reader :symbol, :x_pos, :y_pos
  def initialize
    @x_pos = 1000
    @y_pos = 1000
    @symbol = '.'
  end
end
