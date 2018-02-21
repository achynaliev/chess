
class Piece
  attr_reader :color, :board, :symbol

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def moves
    # should return array of places can move to
  end

end
