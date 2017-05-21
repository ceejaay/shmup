class Enemy
  attr_accessor :x, :y, :radius
  SPEED = 4

  def initialize(window)
    @radius = 20
    @x = 800 + @radius
    @y = rand(window.height - 2 * @radius) + @radius
    @image = Gosu::Image.new("media/enemy.png")
    @message = Gosu::Font.new(15)
    @window = window
  end

  def move
    @x -= SPEED
    self
  end

  def draw(x)
    @image.draw(x - @radius, @y - @radius, 1)
  end

  def wave
    @y += 1
  end

  def veer
    if @x <= 400
      @y -= 10
    end
  end
end
