=begin

Crear el programa aumento_precios.rb.
Dentro del programa crear un método llamado augment que recibe un arreglo y un multiplicador, y
que como resultado de un arreglo con todos los valores aumentados.

=end

#Definiendo el método; .each permite recorrer un arreglo y transformar todos sus elementos.
#El factor hará que aumente en un 20%
def augment(array,factor)
    new_array=[]
    array.each do |price|
       new_array.push(price*factor)
    end
    new_array
end
print augment([100,200,100],1.2) #El factor es 1.2
puts

