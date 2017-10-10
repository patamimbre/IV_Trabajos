TDD: Desarrollo basado en pruebas
=======

#### 1. Hacer un pull request a este proyecto con tests adicionales, si es que faltan (en el momento que se lea este tema)

[https://github.com/patamimbre/HitosIV](Enlace) al repositorio forkeado

----
#### 2. Para la aplicación que se está haciendo, escribir una serie de aserciones y probar que efectivamente no fallan. Añadir tests para una nueva funcionalidad, probar que falla y escribir el código para que no lo haga (vamos, lo que viene siendo TDD).

----
#### 3. Convertir los tests unitarios anteriores con assert a programas de test y ejecutarlos desde mocha, usando descripciones del test y del grupo de test de forma correcta. Si hasta ahora no has subido el código que has venido realizando a GitHub, es el momento de hacerlo, porque lo vas a necesitar un poco más adelante.

----
#### 4. Instalar alguno de los entornos virtuales de node.js (o de cualquier otro lenguaje con el que se esté familiarizado) y, con ellos, instalar la última versión existente, la versión minor más actual de la 4.x y lo mismo para la 0.11 o alguna impar (de desarrollo).

Procederé a instalar **[rbenv](https://github.com/rbenv/rbenv)** como entorno virtual de desarrollo. Como usuario de Arch Linux, basta con ejecutar el siguiente comando para instalarlo:

` yaourt -S rbenv ruby-build `

Se pueden listar las versiones disponibles para la instalación mediante

`rbenv install -l`

Una vez se decida la versión deseada, [se instalará](https://wiki.archlinux.org/index.php/Rbenv) mediante:

` CC=/usr/bin/gcc-5; PKG_CONFIG_PATH=/usr/lib/openssl-1.0/pkgconfig; rbenv install <version>`

Para establecer la versión de Ruby en una aplicación local específica:

`rbenv local <version>`

Para establecerla globalmente:

`rbenv global <version>` 







----
#### 5. Como ejercicio, algo ligeramente diferente: una web para calificar las empresas en las que hacen prácticas los alumnos. Las acciones serían
* #### Crear empresa
* #### Listar calificaciones para cada empresa
* #### crear calificación y añadirla (comprobando que la persona no la haya añadido ya)
* #### Borrar calificación (si se arrepiente o te denuncia la empresa o algo)
* #### Hacer un ránking de empresas por calificación, por ejemplo
* #### Crear un repositorio en GitHub para la librería y crear un pequeño programa que use algunas de sus funcionalidades.
* #### Si se quiere hacer con cualquier otra aplicación, también es válido.


----
#### 6. Ejecutar el programa en diferentes versiones del lenguaje. ¿Funciona en todas ellas?

El programa ha sido probado en 2 versiones de Ruby: __2.3.4__ y __2.4.2__. Como se muestra a continuación, funciona correctamente en ambas versiones.

![running](./ej6.png)

----
#### 7. Crear una descripción del módulo usando package.json. En caso de que se trate de otro lenguaje, usar el método correspondiente.

----
#### 8. Automatizar con grunt, gulp u otra herramienta de gestión de tareas en Node la generación de documentación de la librería que se cree usando docco u otro sistema similar de generación de documentación. Previamente, por supuesto, habrá que documentar tal librería.

----
#### 9. Haced los dos primeros pasos antes de pasar al tercero.

