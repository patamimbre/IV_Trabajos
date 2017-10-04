#Calificar empresas en las que hacen prácticas los alumnos
# * Crear empresa
# * Listar empresas
# * Listar calificaciones de cada empresa
# * Añadir calificación de empresa (el alumno solo puede calificar una vez)
# * Borrar calificación (el usuario solo puede borrar la suya)
# * Ranking de empresas por calificación
class Alumno
	attr_reader :DNI, :empresa
	
	def initialize(dni, nombre, apellido, emp)
		@DNI = dni.upcase
		@nombre = nombre.capitalize
		@apellidos = apellido.capitalize
		@empresa = emp
	end

	def to_s
		@nombre.to_s + " " + @apellidos + " --> " + @empresa.nombre
	end
end


class Empresa
	attr_reader :nombre

	def initialize (nombre)
		@nombre = nombre.capitalize
		@calificaciones = {}
	end

	def califica(alumno, nota)
		#calificaciones entre 0 y 10
		nota = 0 if nota < 0
		nota = 10 if nota > 10
		if alumno.empresa.nombre.eql? @nombre
			@calificaciones[alumno] = nota
		end
	end

	def borra_calificacion(alumno)
		@calificaciones.delete_if {|alum,calif| alum.DNI.eql? alumno.DNI}
	end

	def calificacion_media
		calificacion_media = 0
		@calificaciones.each do |alum, calificacion|
			calificacion_media += calificacion
		end
		calificacion_media / (@calificaciones.size)

	end

	def print
		puts "\n:::#{@nombre}:::"
		@calificaciones.each do |alumno, calificacion|
			puts alumno.to_s + " --- " + calificacion.to_s
		end
	end

end


class GestionPracticas
	def aniade_empresa
end

empresa1 = Empresa.new("GOOGLE")
empresa2 = Empresa.new("Microsoft")


alum1 = Alumno.new("123456Z","Rafa","Perez",empresa1)
alum2 = Alumno.new("231512Z","Juan","Perez",empresa1)
alum3 = Alumno.new("123446Z","Rafa","Garcia",empresa1)

alum4 = Alumno.new("222222X","Mateo","Martos",empresa2)
alum5 = Alumno.new("333333Y","Alejandro","Rodriguez",empresa2)
alum6 = Alumno.new("878955M","Fernando","ruiz",empresa2)



empresa1.califica(alum1, 8)
empresa1.califica(alum2, 9)
empresa1.califica(alum3, 1)
empresa1.califica(alum4, 56)
empresa1.print
puts "Calificación media: " + empresa1.calificacion_media.to_s

empresa2.califica(alum3, 8)
empresa2.califica(alum4, 9)
empresa2.califica(alum5, 6)
empresa2.califica(alum6, 7)
empresa2.print
puts "Calificación media: " + empresa2.calificacion_media.to_s

