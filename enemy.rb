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
    @top_of_wave = @y - @image.height
    @bottom_of_wave = @y + @image.height
    @going_up = true
  end

  def move
    @x -= SPEED
    self
  end

  def draw(x)
    @image.draw(x - @radius, @y - @radius, 1)
  end

  def wave
    if @going_up == true and @y >= @top_of_wave
      @y -= 3
    end
    if @y <= @top_of_wave
      @going_up = false
    end
    if @going_up == false and @y <= @bottom_of_wave
      @y += 3
      end
    if @y >= @bottom_of_wave
      @going_up = true
      end
  end

  def veer
    if @x <= 400
      @y -= 10
    end
  end
end
