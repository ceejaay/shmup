#player class

class Player
  attr_reader :x, :y 

  def initialize(window)
    @image = Gosu::Image.new("media/ship.png")
    @x = 100
    @y = 100
    @window = window
    @radius = 20
    @velocity_x = 0
    @velocity_y = 0
  end

  def draw
    @image.draw_rot(@x, @y, 5, 0)
  end

  def move
    @x += @velocity_x
    @y += @velocity_y
    @velocity_x *= 0.09
    @velocity_y *= 0.09
    if @x > @window.width - @radius
      @velocity_x = 0
      @x = @window.width - @radius
      end
    if @x < @radius
      @velocity_x = 0
      @x = @radius
      end
    if @y > @window.height - @radius / 2
      @velocity_y = 0
      @y = @window.height - @radius / 2
      end
    if @y < @radius / 2
      @velocity_y = 0
      @y = @radius / 2
    end
  end


  def up
    @velocity_y -= 5
  end

  def down
    @velocity_y += 5
  end

  def left
    @velocity_x -= 5
  end

  def right
    @velocity_x += 5
  end
end
