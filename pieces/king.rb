require_relative 'piece'
require_relative 'stepable'

class King < Piece
  include Stepable

  def initialize(color, board, pos)
    super(color, board, pos)
    @symbol = nil
    if @color == "white"
      @symbol = "♔"
    else
      @symbol = "♚"
    end
  end
end
