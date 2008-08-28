# Simple tests
require "Colorize"

class Klass
  include Colorize
  def initialize
    system("echo #{red("hola")} This is a #{blue("test")}")
    system("echo #{red on_white("Hola1")}")
    puts "#{red on_blue("Hola2")}"
  end
end

Klass.new

system("echo #{Colorize.white("hola3")} This is a #{Colorize.blue("test")}")
system("echo #{Colorize.red Colorize.on_white("Hola4")}")
puts "#{Colorize.yellow Colorize.on_white("Hola5")}"