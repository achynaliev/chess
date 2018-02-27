require_relative "board.rb"
require_relative "display.rb"
require_relative "player.rb"


class Game
  attr_reader :board, :display, :player, :current_player

  def initialize(board, display, player)
    @board = board
    @display = display
    @player = player
    # @player2 = player2
    # @current_player = player1
    @cursor = Cursor.new([0, 0], board)
  end

  def play
    self.player.get_input(@cursor)
  end

end

if __FILE__ == $PROGRAM_NAME
  board = Board.new
  display = Display.new(board)
  atai = Player.new("atai", "black", display)
  game = Game.new(board, display, atai)
  game.play
end
