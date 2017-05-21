class Enemy
  attr_accessor :x, :y, :radius
  SPEED = 4

  def initialize(window)
    @radius = 20
    @x = 800 + @radius
    @y = rand(window.height - 2 * @radius) + @radius
    @image = Gosu::Image.new("media/enemy.png")
    @message = Gosu::Font.new(15)
  end

  def move
    @x -= SPEED
  end

  def draw(x)
    @image.draw(x - @radius, @y - @radius, 1)
  end
end
