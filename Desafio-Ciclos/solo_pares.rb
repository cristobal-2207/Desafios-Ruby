=begin

Crea un programa llamado solo_pares.rb que muestre los primeros n números pares, donde n
es ingresado por el usuario.
Uso:
ruby solo_pares.rb 5
0 2 4 6 8

=end
#Programa creado.
n=ARGV[0].to_i
n.times do |i|
    print "#{2*i} "
end

