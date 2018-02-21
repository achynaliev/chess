require_relative 'piece'
require_relative 'slideable'

class Rook < Piece
  include Slideable

  def initialize(color, board, pos)
    super(color, board, pos)
    @symbol = nil
    if @color == "white"
      @symbol = "♖"
    else
      @symbol = "♜"
    end
  end

end
