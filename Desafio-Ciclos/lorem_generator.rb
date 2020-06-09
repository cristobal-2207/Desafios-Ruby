=begin

Crear un programa llamado lorem_generator.rb en ruby que sea capaz de mostrarn en pantalla
varios parrafos de Lorem ipsum, donde el número de párrafos se especifica al cargar el script. (El
texto puede ser extraído del primer párrafo de https://www.lipsum.com/feed/html)

Uso:
ruby lorem_generator.rb

Lorem ipsum dolor sit amet, consectetur adipiscing elit. 

=end

n=ARGV[0].to_i
parrafo = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
n.times do |i|
    puts "\n#{parrafo}\n"
end
puts


