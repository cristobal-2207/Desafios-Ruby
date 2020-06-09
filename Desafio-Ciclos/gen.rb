=begin

Sabiendo que "a.next" => b y "b.next" => c . Crear un programa llamado gen.rb y que
contenga un método llamado gen que reciba el número de letras a generar y devuelva un string con
todas las letras generadas concatendas.

Ejemplo:
gen(4)
"abcd"

gen(10)
"abcdefghij"

Tip: Los ejercicios que piden métodos se evalúan llamando al método directamente y
comparando el resultado, para tener la evaluación correcta del ejercicio considera el nombre del
método y el resultado. No es necesario que el programa tenga una salida o muestre en pantalla
por si solo.

=end

#El siguiente código no cumple con lo solicitado.
#abcedario=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','ñ','o','p','q','r','s','t','u','v','w','x','y','z']
#n=ARGV[0].to_i
#n.times do |i|
#    print abcedario[i]
#end
#puts
=begin
letra = "a"
num = ARGV[0].to_i
num.times do
   print letra
   letra = letra.next
end
=end

#Código creado, este si sirve y entrega en terminal lo solicitado.
def gen(abcedario="a")
    posicion_letra=ARGV[0].to_i
    posicion_letra.times do
     print abcedario
     abcedario=abcedario.next
    end
end
gen
puts


