=begin

Crear una variente del programa anterior llamado solo_pares2.rb que muestre los primeros n números pares, donde n es ingresado por el usuario y no se considere el 0.
Uso:
ruby solo_pares.rb 5
2 4 6 8 10

=end
#Programa creado.
n=ARGV[0].to_i
n.times do |i|
    
    i +=1
    print "#{2*i} "

end
puts
