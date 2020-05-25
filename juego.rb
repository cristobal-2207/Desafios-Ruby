=begin
Desafío - Piedra, papel o tijera

Uso:
ruby juego.rb piedra
-Computador juega tijera.
-Ganaste.

ruby juegor.rb tijera
-Computador juega tijera
-Empataste.

ruby juego.rb tijera
-Computador juega piedra.
-Perdiste.

En caso que el argumento sea distinto a piedra, papel o tijera el programa debe mostrar las opciones que se pueden jugar.

ruby juego.rb papelon
-Argumento inválido: Debe ser piedra, papel o tijera.

Evaluación
Se evaluará el output, por lo que tiene que ser idéntico al de los ejemplos dados, sin saltos de línea adicionales.
=end

#Recuerda que && es Y
#Debes especificar el límite superior e inferior rand(0..2)
#Al final, solo necesitas dos variables, lo que el jugador ingresa y el random que se obtiene del pc.

#Datos
jugador = ARGV[0].downcase
pc      = rand(0..2)

# 0=piedra , 1=papel, 2=tijera
if jugador=='piedra' && pc==2
    puts "-PC juega tijera"
    puts "-Ganaste"
elsif jugador=='piedra' && pc==1
    puts "-PC juega papel"
    puts "-Perdiste"
elsif jugador=='piedra' && pc==0
    puts "-PC juega piedra"
    puts "-Empataste"
elsif jugador=='papel' && pc==2
    puts "-PC juega tijera"
    puts "-Perdiste"
elsif jugador=='papel' && pc==1
    puts "-PC juega papel"
    puts "-Empataste"
elsif jugador=='papel' && pc==0
    puts "-PC juega piedra"
    puts "-Ganaste"
elsif jugador=='tijera' && pc==2
    puts "-PC juega tijera"
    puts "-Empataste"
elsif jugador=='tijera' && pc==1
    puts "-PC juega papel"
    puts "-Ganaste"
elsif jugador=='tijera' && pc==0
    puts "-PC juega piedra"
    puts "-Perdiste"
else
    puts "Argumento inválido: Debe ser piedra, papel o tijera." 
end


