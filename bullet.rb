
class Bullet
  attr_reader :x, :y, :radius, :type
  SPEED = 30
  def initialize(window, x, y, type)
    @window = window
    @radius = 3
    @x = x
    @y = y
    @type = type
    #@direction = angle
    @image = Gosu::Image.new("media/bullet.png")
  end

  def move
    case @type
    when :player_bullet
      @x += SPEED
      @y += 0
    when :enemy_bullet
      @x -= SPEED
      @y -= 0
    end
    #@x += Gosu.offset_x(@direction, SPEED)
    #@y += Gosu.offset_y(@direction, SPEED)
  end

  def draw
    @image.draw(@x - @radius, @y - @radius, 1 )
  end

  def onscreen?
    right = @window.width + @radius
    left = -@radius
    top = -@radius
    bottom = @window.height + @radius
    @x > left and @x < right and @y > top and @y < bottom
  end
end
