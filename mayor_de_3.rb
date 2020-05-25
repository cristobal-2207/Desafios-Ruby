=begin
El mayor de tres números
Se pide crear el programa mayor_de_3.rb . Este script debe tomar los 3 argumentos y determinar
cuál es el mayor.

Uso:
ruby mayor_de_3.rb 10 5 3
10
ruby mayor_de_3.rb -21 9 39
39
ruby mayor_de_3.rb 3 2 3
3
Evaluación
Se evaluará el output, por lo que tiene que ser idéntico al de los ejemplos dados, sin saltos de línea
adicionales.
=end

#Datos
valor1 = ARGV[0].to_i
valor2 = ARGV[1].to_i
valor3 = ARGV[2].to_i

#Secuencia
if valor1>valor2 && valor2>valor3
    puts "#{valor1}"

elsif valor1<valor2 && valor2>valor3
    puts "#{valor2}"

elsif valor1<valor2 && valor2<valor3
    puts "#{valor3}"

elsif valor1>valor2 && valor1==valor3
    puts "#{valor1}"

end
