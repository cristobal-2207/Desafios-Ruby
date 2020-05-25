=begin
Desafío - El mayor de cuatro números

Se pide crear el programa mayor_de_4.rb .
Este script debe tomar los 4 argumentos y determinar cuál es el mayor.
Si el cuarto argumento es omitido solo se debe calcular el mayor de 3

Tip: ¿Qué será ARGV[3] si se entregan sólo tres argumentos?

Uso:
ruby mayor_de_4.rb 10 5 3 12
12

ruby mayor_de_4.rb 12 12 12 9
12

ruby mayor_de_4.rb -21 9 39 0
39

Evaluación
Se evaluará el output, por lo que tiene que ser idéntico al de los ejemplos dados, sin saltos de línea
adicionales.
=end

#Datos
valor1 = ARGV[0].to_i
valor2 = ARGV[1].to_i
valor3 = ARGV[2].to_i
valor4 = ARGV[3].to_i

#Secuencia
if valor1>valor2 && valor1>valor3 && valor1>valor4
    puts "#{valor1}"

elsif valor1<valor2 && valor2>valor3 && valor2>valor4
    puts "#{valor2}"

elsif valor1<valor3 && valor2<valor3 && valor3>valor4
    puts "#{valor3}"

elsif valor1<valor4 && valor2<valor4 && valor3<valor4
    puts "#{valor4}"

elsif valor1==valor2 && valor2==valor3 && valor3>valor4
    puts "#{valor1}"

elsif valor1>valor2 && valor1>valor3
    puts "#{valor1}"

elsif valor1<valor2 && valor2>valor3
    puts "#{valor2}"

elsif valor1<valor3 && valor2<valor3
    puts "#{valor3}"

elsif valor1>valor2 && valor1==valor3
    puts "#{valor1}"

end 

