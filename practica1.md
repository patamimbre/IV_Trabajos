## Practica 1

### Ejercicio 1

#### Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años. 

El ordenador elegido es un [Supermicro 4x Xeon E5 con 256GB de RAM](https://www.newegg.com/Product/Product.aspx?Item=9SIA4GH5GM6670). El precio del producto es de 2.839$, que equivale a 2.400€ aproximadamente.

Según el [artículo de infoautonomos](http://infoautonomos.eleconomista.es/fiscalidad/gastos-deducibles-autonomos-irpf-estimacion-directa/), se puede imputar anualmente un máximo del 25% de la base imponible. Para el caso propuesto, teniendo en cuenta que se compraría a comienzos del año 2018:

- Para 4 años -> 709.75 € anuales.
- Para 7 años -> 405.58 € anuales.

---
### Ejercicio 2

#### Usando las tablas de precios de servicios de alojamiento en Internet “clásicos”, es decir, que ofrezcan Virtual Private Servers o servidores físicos, y de proveedores de servicios en la nube, comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) en el caso de que la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.

| Host                                          | Precio/mes | RAM | Almacenamiento |
|----------------------------------------|----------------|-------|-------------------------|
| [DreamHost](https://www.dreamhost.com/
) | 4.5$      | 512 MB      | 80 GB                    |
| [Vult](https://www.vultr.com/)        | 2.5$      | 512 MB      | 15 GB                    |
| [Amazon LightSail](https://amazonlightsail.com/)            | 5$   | 512 MB      | 20 GB                    |


| Host    | Precio/hora | RAM    | 1% uso (24h) | 10% uso (72h) |
|---------|-------------|--------|---------------|-------------------|
| Heroku  | 0.009$      | 512 MB | 0.216$ | 0.648$ |
| AWS EC2 | 0.0059$     | 512 MB | 1.416 | 4.248$ |

En el caso de usar un VPS, se paga por mes, no por tiempo de uso de la infraestructura.


---
### Ejercicio 3

#### En general, cualquier ordenador con menos de 5 o 6 años tendrá estos flags. ¿Qué modelo de procesador es? ¿Qué aparece como salida de esa orden? Si usas una máquina virtual, ¿qué resultado da? ¿Y en una Raspberry Pi o, si tienes acceso, el procesador del móvil?

Para comprobar si el dispositivo acepta **virtualización por hardware** basta con ejecutar en el terminal la orden:

`egrep '^flags.*(vmx|svm)' /proc/cpuinfo`

En caso de contar con la funcionalidad mostrará la lista completa de flags.

Mi ordenador cuenta con un procesador *AMD A6*. Este procesador soporta la virtualización hardware como se observa en la siguiente imagen.
![cpu_pc](https://i.imgur.com/60ATYbB.png)
Si no aparece nada hay dos opciones. El procesador verdaderamente no soporta la funcionalidad o se encuentra desactivada, por lo que se debe activar desde la BIOS.


Por otra parte, mi dispositivo Android cuenta con un procesador **Snapdragon 820**. Tras ejecutar la orden indicada no recibo ninguna salida, por lo tanto no está operativa esta funcionalidad. A continuación la información de la CPU.
![cpu_android](https://i.imgur.com/5uD9hbV.png)

---
### Ejercicio 4

#### 1. Instalar un hipervisor para gestionar máquinas virtuales, que más adelante se podrá usar en pruebas y ejercicios. 
#### 2. Comprobar si el núcleo instalado en tu ordenador contiene este módulo del kernel usando la orden kvm-ok.


1. Como utilizo Ubuntu, lo instalo mediante
`sudo apt install qemu-kvm qemu `

2. Para comprobar si el módulo kvm está instalado ejecuto
`kvm-ok`
obteniendo la siguiente salida
![kvm-ok](https://i.imgur.com/TmDQIhA.png)

---
### Ejercicio 5

#### Darse de alta en servicios de nube usando ofertas gratuitas o cupones que pueda proporcionar el profesor.

Se usará **[Heroku](https://www.heroku.com/)** con su plan gratuito, ideal para experimentar con aplicaciones en la nube. Una vez creada la cuenta se observa la siguiente pantalla de gestión.

![heroku](https://i.imgur.com/fj7Qe2r.png)

---
### Ejercicio 6

#### Darse de alta en una web que permita hacer pruebas con alguno de los sistemas de gestión de nube anteriores.

Se usará **[OpenStack](https://www.openstack.org/)** como nube privada. Para demostrar que la cuenta ha sido creada, [mi perfil](https://www.openstack.org/community/members/profile/94444/germn-castro) en openstack está disponible online.


