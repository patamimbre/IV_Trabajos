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
		calificacion_media.to_f / (@calificaciones.size)

	end

	def print
		puts "\n:::#{@nombre}:::"
		@calificaciones.each do |alumno, calificacion|
			puts alumno.to_s + " --- " + calificacion.to_s
		end
	end

end


class GestionPracticas


	@@empresas = []
	@@alumnos = []

	def self.aniade_empresa(empresa)
		@@empresas << empresa
	end

	def self.aniade_alumno(alumno)
		@@alumnos << alumno
	end

	def self.empresa(nombre)
		@@empresas.find{|emp| emp.nombre == nombre}
	end

	def self.alumno(dni)
		@@alumnos.find {|alum| alum.DNI == dni}
	end

	def self.buscar_alumnos(nombre, apellidos)
		@@alumnos.find {|alum|
										alum.nombre == nombre and
										alum.apellidos == apellidos}
	end

	def self.califica (dni, nota)
		alum = alumno(dni)
		alum.empresa.califica(alum, nota)
	end

	def self.to_s
		@@empresas.each do |emp|
			emp.to_s
		end
	end

	def self.calificacion_media(nombre_empresa)
		empresa(nombre_empresa).calificacion_media
	end



end



GestionPracticas.aniade_empresa(Empresa.new("GOOGLE"))
GestionPracticas.aniade_empresa(Empresa.new("Microsoft"))

GestionPracticas.aniade_alumno ( Alumno.new("123456Z","Rafa","Perez",GestionPracticas.empresa("Google")))
GestionPracticas.aniade_alumno ( Alumno.new("231512Z","Juan","Perez",GestionPracticas.empresa("Google")))
GestionPracticas.aniade_alumno ( Alumno.new("123446Z","Rafa","Garcia",GestionPracticas.empresa("Google")))

GestionPracticas.aniade_alumno ( Alumno.new("222222X","Mateo","Martos",GestionPracticas.empresa("Microsoft")))
GestionPracticas.aniade_alumno ( Alumno.new("333333Y","Alejandro","Rodriguez",GestionPracticas.empresa("Microsoft")))
GestionPracticas.aniade_alumno ( Alumno.new("878955M","Fernando","ruiz",GestionPracticas.empresa("Microsoft")))


#reparar esto!!
GestionPracticas.califica('123456Z', 8)
GestionPracticas.califica('231512Z', 9)
GestionPracticas.califica('123446Z', 2)
puts "Calificación media Google: " + GestionPracticas.calificacion_media("Google").to_s

GestionPracticas.califica('222222X', 4)
GestionPracticas.califica('333333Y', 1)
GestionPracticas.califica('878955M', 6)
puts "Calificación media Microsoft: " + GestionPracticas.calificacion_media("Microsoft").to_s

