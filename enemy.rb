#enemy

class Enemy
  def initialize(window)
    @image = Gosu::Image.new("media/enemy.png")
    @x = 500
    @y = 200
    @window = window
  end

  def draw
    @image.draw(@x, @y, 1)
  end
end
