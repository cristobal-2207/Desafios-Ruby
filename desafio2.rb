#Arreglo
nombres=['Violeta', 'Andino', 'Clemente','Javiera', 'Paula', 'Pía', 'Ray']

#Obtener todos los elementos que excedan los 5 caracteres, utilizando .select.
mayores_5=nombres.select do |x| 
    x.length > 5 
end
print mayores_5
puts

#Utilizar .map para crear un arreglo con todos los nombres en minúscula.
todo_minusculas=nombres.map do 
    |x| x.downcase 
end
print todo_minusculas
puts

#Utilizar .select para crear un arreglo con todos los nombres que empiecen con P.
todos_p=nombres.select do
    |x| x if x[0] == 'P' 
end
print todos_p
puts

#Utilizando .count , contar los elementos que empiecen con 'A', 'B' o 'C'.
contemos_a_b_c=nombres.count do
    |x| x[0] == 'A' || x[0] == 'B' || x[0] == 'C'
end
print contemos_a_b_c
puts

#Utilizando .map , crear un arreglo único con la cantidad de letras que tiene cada nombre.
contemos_letras=nombres.map do
    |x| x.length 
end
print contemos_letras
puts