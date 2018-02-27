require_relative "cursor"

class Player
  attr_reader :name, :color

  def initialize(name, color, display)
    @name = name
    @color = name
    @display = display
  end

  def get_input(cursor)
    @display.set_cur(cursor)
    while true
      @display.display
      cursor.get_input
    end
  end
end
