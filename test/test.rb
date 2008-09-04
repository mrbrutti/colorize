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

apachelog = "1.2.3.4 -- \"This is not\" - \"No way\".
4.3.2.1 -- \"This3 34 is not\" - \"No way 34343\".
4.3.2.1 -- \"This3 34 is not\" - \"No way 34343\"."
reg = /(.*) -- \"(.*)\" - \"(.*)\"\./

apachelog = Colorize.bpaint apachelog, reg do |m|
  Colors.red(m[0]) + " -- \"" + Colors.blue(m[1]) + "\" - \"" + Colors.white(m[2]) + "\".\n"
end

puts apachelog