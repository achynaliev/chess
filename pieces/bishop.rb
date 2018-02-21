require_relative 'piece'
require_relative 'slideable'

class Bishop < Piece
  include Slideable
  
  def initialize(color, board, pos)
    super(color, board, pos)
    @symbol = nil
    if @color == "white"
      @symbol = "♗"
    else
      @symbol = "♝"
    end
  end

  def move_dirs

  end

end
