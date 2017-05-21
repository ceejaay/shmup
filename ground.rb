#ground class
class Ground
  WIDTH = 800
  HEIGHT = 600
  def initialize(window, x)
    @window = window
    @x = x
    @y = 555
    @ground = Gosu::Image.new("media/ground.png")
  end

  def move
    if @x >= -800
      @x -= 5
    else
     @x = 800
    end
  end

  def draw
    @ground.draw(@x, @y, 1)
  end

end
