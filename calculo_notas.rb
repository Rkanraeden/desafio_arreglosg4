# debemos crear un metodo nota_mas_alta
# que reciba un arreglo con el nombre y notas del alumno y devuelva la nota más alta.

# se debe abrir el archivo de datos "notas.data" usar .readlines cuando los archivos son con extensión .data
data = open('notas.data').readlines
# se hace do para crear el iterador, y .split para mostrar el array.
data = data.map do |reg|
    reg.split(',')
end

def nota_mas_alta(arr)
    notas = arr[1..5]
    notas = notas.map do |note|
        note.to_i
    end
    notas.max
    
end



print nota_mas_alta(data[0])





# para crear un metodo se usa una palabra reservada llamada "def"
# se crea el nombre del arreglo y se agrega la palabra (arr)


