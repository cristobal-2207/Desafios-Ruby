=begin

Crea un programa llamado suma_pares.rb que sume los primeros n números pares, donde n es
ingresado por el usuario por linea de comandos.
Tip: El cero no es par, no afecta en la suma pero tenemos que tener cuidado con los bordes del
ciclo.
Uso:
ruby suma_pares.rb 20
420

=end

#Programa creado.

#Solo pares
#n=ARGV[0].to_i
#n.times do |i|
#    print "#{2*i} "
#end

#Suma n números
i         = 0
suma      = 0

while i< ARGV[0].to_i
    i    += 1
    suma += i*2
end

puts suma