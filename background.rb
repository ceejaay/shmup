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
    case direction
      when :up
        @y -= 5 until @y == -10
      when :down
        @y += 5 until @y == 0
      when :left
        @x += 5 until @x == 0
      when :right
        @x -= 5 until @x == -10
    end
  end

end
