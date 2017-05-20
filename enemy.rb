#enemy

class Enemy
  def initialize(window)
    @image = Gosu::Image.new("media/enemy.png")
    @x = 500
    @y = 200
    @window = window
  end

  def draw
    @image.draw_rot(@x, @y, 0, 1)
  end
end
