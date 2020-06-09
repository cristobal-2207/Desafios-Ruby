=begin
Se busca crear un programa fuerza_bruta.rb que revise cuantos intentos requiere hackear un
password por fuerza bruta.

Uso:
ruby fuerza_bruta.rb pass
282404 intentos

ruby fuerza_bruta.rb passwo
190906392 intentos

Luego el sistema intentará con todas las combinaciones de letras:

Primero probará con a, luego b, luego c ... luego con z, luego ab, ac, .. az, aba ... azz ... zzz, aaaa
...

Se supone que el password solo contiene letras.**
Tip: partir con intento = 'a'
=end

def gen(abcedario="a")
    posicion_letra=ARGV[0].to_i
    posicion_letra.times do
     print abcedario
     abcedario=abcedario.next
    end
end
gen
puts