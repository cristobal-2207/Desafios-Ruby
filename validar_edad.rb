#Modificar el método para que reciba la edad.
#Llamar al método 3 veces, con edades generadas al azar.

def validar_edad(edad)
    if edad >= 18
        puts"Tienes #{edad} años, eres mayor de edad"
    else 
        puts "Tienes #{edad} años, eres menor de edad"
    end
end
3.times do
    validar_edad(edad=rand(1..100))
end
