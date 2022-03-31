# abrir el archivo y leerlo
data = open('ventas_base.db').read
# convertimos el registro en un arreglo
data = data.split(',')
# convertir los valores a flotantes
data = data.map do |months_sale|
    months_sale = months_sale.to_f
end
# separar datos por semetres y trimestres
primer_quarter = data[0..2].sum *1.1
segundo_quarter = data[3..5].sum
tercer_quarter = data[6..8].sum
cuarto_quarter = data[9..11].sum *1.2

#ejercicio para ver multiplicación
primer_quarter = primer_quarter*1.1
cuarto_quarter = cuarto_quarter*1.2
#sumatoria semestres
semestre_primero = primer_quarter + segundo_quarter
semestre_segundo = tercer_quarter + cuarto_quarter
# crear archivo 'resultados.data'
#crear variable con el resultado y agregar join para tabular
ventas = [semestre_primero, semestre_segundo].join("\n")
File.write('resultados.data', ventas)


# print semestre_primero
# puts
# print semestre_segundo
# puts