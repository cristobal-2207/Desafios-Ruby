=begin

Desafío-Rentabilidad

Un emprendedor quiere crear una aplicación y necesita saber si es rentable, para eso tiene que:

-El producto planea venderse en 50 dólares.
-Se espera tener 1000 usuarios en el año.
-Los gastos del año son 20000 dólares.
-Las utilidades se calculan como precio_venta*usuarios-gastos.
-Los impuestos aplicados a las utilidades son el 35% y solo aplican si es positivo.

Utilizando ARGV en lugar de gets:
-2.1) Crear el programa emprendedor1.rb donde el usuario ingrese el precio, el número de usuarios, los gastos y el programa calcula las utilidades.

=end

#Datos a considerar
pv              = ARGV[0].to_i
usuriosAño      = ARGV[1].to_i
gastosAño       = ARGV[2].to_i
utilidades      = (pv*usuriosAño-gastosAño).to_i
menosImpuestos  = (utilidades*0.65).to_i

#A partir de las utilidades
if utilidades > gastosAño
    puts "Utilidades del año menos impuestos da un total de #{menosImpuestos} dólares."

else 
    puts "Utilidades del año con los impuestos son #{utilidades} dólares."

end