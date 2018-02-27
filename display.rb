require 'colorize'
require_relative 'board'
require_relative 'cursor'

class Display
  attr_reader :cursor, :board, :cursor

  def initialize(board)
    @board = board
  end

  def set_cur(curs)
    @cursor = curs
  end

  def display
    system("clear")
    8.times do |row|
      8.times do |col|
        if @cursor.cursor_pos == [row, col]
          if row % 2 == 0 && col % 2 == 0 || (row % 2 == 1 && col % 2 == 1)
            if @board.board[row][col].is_a? NullPiece
              print "   ".colorize(:color => :black, :background => :red)
            else
              print " #{@board.board[row][col].symbol} ".colorize(:color => :black, :background => :red)
            end
          else
            if @board.board[row][col].is_a? NullPiece
              print "   ".colorize(:color => :black, :background => :red)
            else
            print " #{@board.board[row][col].symbol} ".colorize(:color => :black, :background => :red)
            end
          end
        elsif @cursor.selected_pos == [row, col]
            if row % 2 == 0 && col % 2 == 0 || (row % 2 == 1 && col % 2 == 1)
              if @board.board[row][col].is_a? NullPiece
                print "   ".colorize(:color => :black, :background => :blue)
              else
                print " #{@board.board[row][col].symbol} ".colorize(:color => :black, :background => :blue)
              end
            else
              if @board.board[row][col].is_a? NullPiece
                print "   ".colorize(:color => :black, :background => :blue)
              else
              print " #{@board.board[row][col].symbol} ".colorize(:color => :black, :background => :blue)
              end
            end
        else
          if (row % 2 == 0 && col % 2 == 0) || (row % 2 == 1 && col % 2 == 1)
            if @board.board[row][col].is_a? NullPiece
              print "   ".colorize(:color => :black, :background => :white)
            else
              print " #{@board.board[row][col].symbol} ".colorize(:color => :black, :background => :white)
            end
          else
            if @board.board[row][col].is_a? NullPiece
              print "   ".colorize(:color => :black, :background => :yellow)
            else
              print " #{@board.board[row][col].symbol} ".colorize(:color => :black, :background => :yellow)
            end
          end
        end
      end
      puts
    end
  end

end
