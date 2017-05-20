#the background image
class Background

  def initialize
    @background = Gosu::Image.new("media/space.png")
    @x = -10
    @y = -10
  end

  def draw
    @background.draw(@x, @y, 0)
  end

  def move(direction)
  end

end
