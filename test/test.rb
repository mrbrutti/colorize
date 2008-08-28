# Simple tests
require "Colorize"

class Klass
  include Colorize
  def initialize
    system("echo #{red("hola")} This is a #{blue("test")}")
  end
end

Klass.new

system("echo #{Colorize.white("hola2")} This is a #{Colorize.blue("test")}")
system("echo #{Colorize.red Colorize.on_white("Hola3")}")