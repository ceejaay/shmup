#player class

class Player
  attr_reader :x, :y

  def initialize(window)
    @image = Gosu::Image.new("media/ship.png")
    @x = 100
    @y = 100
    @window = window
    @velocity_x = 0
    @velocity_y = 0
  end

  def draw
    @image.draw(@x, @y, 1)
  end

end
