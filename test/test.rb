# Simple tests
require "Colorize"

class Klass
  include Colors
  def initialize
    system("echo #{red("hola")} This is a #{blue("test")}")
    system("echo #{red on_white("Hola1")}")
    puts "#{red on_blue("Hola2")}"
  end
end

Klass.new

html = "<html>
<body>
<dl>
  <dt>the first term</dt>
  <dd>its definition</dd>

  <dt>the second term</dt>
  <dd>its definition</dd>

  <dt>the third term</dt>
  <dd>\"its definition\"</dd>
  <img src=\"test.html\">
</dl>
</body>
</html>"
     
c = Colorize.new( :red => /<.*html>|<.*body>/, 
                  :blue => /".*"/,
                  :cyan => /src/)
puts c.paint(html)