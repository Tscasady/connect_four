class WinCheck
  attr_reader :piece, :directions, :board

  def initialize(piece, board)
    @piece = piece
    @board = board
  end

    #These nested ranges generate every coordinate associated with a direciton 
    #for example (-1, -1) refers to one column to the left, and down one position
    #the function then recusively calls "check" in that direction until it encounters
    #a position with a symbol that does not match the original piece.
  def check_all(piece, board)
   
    #major bug, the indices become negative, need null object response 
    #for negative indicies

    #x_coord modifier
    (-1..1).each do |x_mod|
      #y_coord modifier
      (-1..1).each do |y_mod|
        check_count = 0
        piece_to_test = board.columns[piece.x_pos + x_mod][piece.y_pos + y_mod]
        check(piece, piece_to_test, x_mod, y_mod, check_count)
        #reverse check, we need to check in the opposite direction and add it to our total checks
        check(piece, piece_to_test, x_mod, y_mod, check_count )
      end
    end
  end


  def check(piece, piece_to_test, x_mod, y_mod, check_count) 
    #escape condition
    #base case: 1 or more, inputs for which the function produces a result that continues the recursion (opposite of escape condition)
    #knowing if and when recursion is useful 
    if @board.fetch_piece(piece).symbol == @board.fetch_piece(piece_to_test).symbol
      check_count += 1
      next_piece = @board.columns[piece.x_pos + x_mod][piece.y_pos + y_mod]
      check(piece_to_test, next_piece, x_mod, y_mod, check_count, board)
    end
    check_count      
  end    
end
