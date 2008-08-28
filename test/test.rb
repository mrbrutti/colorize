# Simple tests
class Klass
  include Colorize
  def initialize
    system("echo #{red("hola")}")
  end
end

Klass.new

System("echo #{Colorize.white("hola2")}")