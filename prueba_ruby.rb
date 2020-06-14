=begin

En este desafío nos conectaremos a la API de la NASA para descargar fotos de los Rovers y filtar
resultados acorde a lo pedido.

¿Qué tenemos que saber para enfrentarnos a esta prueba?
Consumo de una API Rest con autenticación sencilla
Crear métodos que reciban parámetros
Iterar resultados dentro de un hash y un arreglo
Filtrar resultados dentro de un hash y un arreglo
Guardar los resultados dentro de un archivo

Se pide:
1. Crear el método request que reciba una url y el api_key y devuelva el hash con los resultados
Concatenar la API Key en la url

2. Crear un método llamado buid_web_page que reciba el hash de respuesta con todos los datos y construya una página web. Se evaluará la página creada y tiene que tener este formato:

<html>
<head>
</head>
<body>
<ul>
<li><img src='.../398380645PRCLF0030000CCAM04010L1.PNG'></li>
<li><img src='.../398381687EDR_F0030000CCAM05010M_.JPG'></li>
</ul>
</body>
</html>

Se revisará la estructura del documento generado

3. Pregunta bonus: Crear un método photos_count que reciba el hash de respuesta y devuelva
un nuevo hash con el nombre de la camara y la cantidad de fotos.
=end

require 'net/http'
require 'openssl'
require 'json'

url = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key='
api_key='kfFShFqJ3lu1H8jUrhjLOTPICbu4TRCoNGXe9Gcn'
def get_data(url,key)
page=url+key
uri = URI(page)
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Get.new(page)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE
response = http.request(request)
JSON.parse(response.read_body)
end
data = get_data(url,api_key)

def gen(data_clean)

    html  = ""
    html  = "'<!DOCTYPE html>
    <html lang="'en'">
    <head>
        <meta charset="'UTF-8'">
        <meta name="'viewport'" content="'width=device-width, initial-scale=1.0'">
        <title>Document</title>
    </head>
    <body><ul>'\n"

    data_clean.each do |i|
        html += "\t<li> <img src=\" #{i[1]}\"> <p>#{i[0]}</p> </li>\n" #i[0] sería nombre y i[1] sería el url
    end

    html     +="</ul>\n</body>\n</html>"
    html
    File.write('index.html',html)

end

def buid_web_page(data)
    array_3=[]
    array_2=[]#Aquí guardamos los nombres de los datos.
    array=[]#Aquí guardamos las url de la imágenes.
    hash={}   
    data.each do |k,v| #Con el primer filtro ingresé a valores de photos
        v.each do |a,b|#Con el segundo filtro ingresé a los valores de con etiquetas img_src
            
            a.delete("rover") #Eliminar datos innecesarios
            hash.merge!(a)
            hash.delete("sol") #Eliminar datos innecesarios
            hash.delete("id")  #Eliminar datos innecesarios

            hash.each do |c,d| #Recorrer el hash creado, para extraer las url de las imágenes.

                if c ==("img_src")

                    array.push(d) #Esto nos trae las url de las imágenes.

                elsif c==("camera")

                    array_2.push(d)#Esto nos trae los nombres de los datos.

                end

            end

        end

    end

    array_2.each do |e|
        
        e.each do |f|

            if f[0]=="name"
                array_3.push f[1]#Filtramos lo que era name en un nuevo nombre.
            end
            
        end

    end
    
    data_clean= array_3.zip(array)
    gen(data_clean)

end

buid_web_page(data)

