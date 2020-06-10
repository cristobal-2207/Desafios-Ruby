=begin
Dado el array:
a = [1, 9 ,2, 10, 3, 7, 4, 6]

Utilizando map sumar uno a cada uno de los valores del array.

Utilizando map convertir todos los valores a float.

Utilizando select descartar todos los elementos menores a 5 en el array.

Utilizando inject sumar todos los valores del array.

Utilizando .count contar todos los elementos menores que 5.

=end

#Arreglo
a = [1, 9 ,2, 10, 3, 7, 4, 6]

#Utilizando map sumar 1 a cada uno de los valores del array.
b = a.map do 
    |x| x + 1 
end
puts
print b
puts
    
#Utilizando map convertir todos los valores a float.
c = a.map do 
    |x| x.to_f 
end
puts
print c
puts

#Utilizando select descartar todos los elementos menores a 5 en el array.
d = a.select do 
    |x| x > 5
end
puts
print d
puts

#Utilizando inject sumar todos los valores del array.
e = a.inject do
    |sum, x| x + sum 
end
puts
print e
puts

#Utilizando .count contar todos los elementos menores que 5.
f = a.count do
    |x| x < 5 
end
puts
print f
puts


