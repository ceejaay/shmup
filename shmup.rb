require 'gosu'
require_relative 'background'
require_relative 'player'
require_relative 'enemy'
require_relative 'bullet'

class Shmup < Gosu::Window
  WIDTH = 800
  HEIGHT = 600
  ENEMY_FREQUENCY = 0.07
  #ENEMY_FREQUENCY = 1
  def initialize
    super(WIDTH, HEIGHT)
    self.caption = 'Shmup'
    @background = Background.new
    @player = Player.new(self)
    @enemies = []
    @bullets = []
  end

  def draw
    @background.draw
    @player.draw
    @enemies.each {|e| e.draw(e.x)}
    @bullets.each {|bullet| bullet.draw}
    #@enemies.length.times do |item|
    #  @enemies[item].draw((WIDTH / 10) * item)
    #end
  end

  def button_down(id)
    if id == Gosu::KbSpace
      @bullets << Bullet.new(self, @player.x, @player.y)
      end
  end

  def update
    @player.left and @background.move(:right) if button_down?(Gosu::KbLeft)
    @player.right and @background.move(:left) if button_down?(Gosu::KbRight)
    @player.up and @background.move(:down) if button_down?(Gosu::KbUp)
    @player.down and @background.move(:up) if button_down?(Gosu::KbDown)
    if rand < ENEMY_FREQUENCY
      @enemies << Enemy.new(self)
      end
    @enemies.each {|enemy| enemy.move}
    #@enemies.length.times do |enemy_x_y|
    #    distance = Gosu.distance(enemy_x_y * (WIDTH / 10), 150, @player.x, @player.y)
    #    if distance <  20 + @enemies[enemy_x_y].radius
    #      @enemies[enemy_x_y].visible = true
    #    else
    #      @enemies[enemy_x_y].visible = false
    #    end
   # end
    @player.move
    @bullets.each {|bullet| bullet.move}
    @bullets.dup.each {|bullet| @bullets.delete(bullet) unless bullet.onscreen?}
    @enemies.dup.each do |enemy|
      if enemy.x < 0
        @enemies.delete(enemy)
      end
    end
    close if button_down?(Gosu::KbEscape)
  end
end

window = Shmup.new
window.show
