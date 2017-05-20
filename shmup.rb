require 'gosu'
require_relative 'background'
require_relative 'player'
require_relative 'enemy'


class Shmup < Gosu::Window
  WIDTH = 800
  HEIGHT = 600
  #ENEMY_FREQUENCY = 0.07
  #ENEMY_FREQUENCY = 1
  def initialize
    super(WIDTH, HEIGHT)
    self.caption = 'Shmup'
    @background = Background.new
    @player = Player.new(self)
    @enemy = Enemy.new(self)
    @enemies = []
    #40.times do
    #  @enemies << Enemy.new(self)
    #end
  end

  def draw
    @background.draw
    @player.draw
    @enemy.draw
  
    #@enemies.length.times do |item|
    #  @enemies[item].draw((WIDTH / 10) * item)
    #end
  end

  def update
    #@player.turn_left if button_down?(Gosu::KbLeft)
    #@player.turn_right if button_down?(Gosu::KbRight)
    #@player.accelerate if button_down?(Gosu::KbUp)
    #@player.move
    #@enemies.length.times do |enemy_x_y|
    #    distance = Gosu.distance(enemy_x_y * (WIDTH / 10), 150, @player.x, @player.y)
    #    if distance <  20 + @enemies[enemy_x_y].radius
    #      @enemies[enemy_x_y].visible = true
    #    else
    #      @enemies[enemy_x_y].visible = false
    #    end
   # end
    close if button_down?(Gosu::KbEscape)
  end
end

window = Shmup.new
window.show
