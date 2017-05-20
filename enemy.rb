class Enemy
  attr_accessor :x, :y, :radius
  SPEED = 4

  def initialize(window)
    @radius = 20
    @x = rand(window.width - 2 * @radius) + @radius
    @y = 150
    @image = Gosu::Image.new("media/enemy.png")
    @message = Gosu::Font.new(24)
  end

  def move
    @x -= SPEED
  end

  def draw(x)
    @image.draw(x - @radius, @y - @radius, 1)
  end
end
