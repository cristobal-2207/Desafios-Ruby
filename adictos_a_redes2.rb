=begin

Se pide crear el programa adictos_a_redes2.rb con un método llamado scan_addicts2 que
reciba un arreglo con los minutos de uso y como resultado entregue un nuevo arreglo cambiando
todas las medidas inferiores a 90 minutos como 'bien', entre 90 y 180 como 'mejorable' y todas las
mayores o iguales a 180 como 'mal'.
Tip: Cuidado con las condiciones de borde, analiza los casos de 90 y 180.

=end

def scan_addicts2(array)
    results = []
    n = array.count
    n.times do |i|
        #Aquí es donde va la lógica de la iteración.
        if array [i] >= 180
            results.push 'mal'
        elsif array[i] >= 90
            results.push 'mejorable'
        else
            results.push 'bien'
        end
    end
    results #Lo que devuelve; cuidado con el retorno, times retorna la cuenta.
   
end
print scan_addicts2([120, 90, 600, 30, 90, 10, 200, 180, 500])
puts


