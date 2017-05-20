class Enemy
  attr_accessor :x, :y, :radius, :visible
  SPEED = 4

  def initialize(window)
    @radius = 20
    @x = rand(window.width - 2 * @radius) + @radius
    @y = 150
    @image = Gosu::Image.new("media/enemy.png")
    @visible = false
    @message = Gosu::Font.new(24)
  end

  def move
    @y += SPEED
  end

  def draw(x)
    @image.draw(x - @radius, @y - @radius, 1)
    @message.draw("", (x - @radius) + 15, (@y - @radius) - 30, 1) if @visible
  end
end
