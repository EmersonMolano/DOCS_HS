# SOLUCION DEL TALLER SOBRE BASES DE DATOS

> Conversión de [`SOLUCION DEL TALLER SOBRE BASES DE DATOS.pdf`](<SOLUCION DEL TALLER SOBRE BASES DE DATOS.pdf>). Se conserva el PDF original; las imágenes reproducen cada página y el texto seleccionable se incluye como referencia.

Páginas: **7**.

## Página 1

![Página 1](<SOLUCION DEL TALLER SOBRE BASES DE DATOS_assets/pagina-001.png>)

<details>
<summary>Texto extraído de la página</summary>

<pre>
SOLUCION DEL TALLER SOBRE BASES DE DATOS
PROYECTO: SOFTWARE PARA LA CREACIÓN DE LA APLICACIÓN “Smart Home”
INTEGRANTES:
JOSÉ DAVID AMAYA MOSQUERA
EMERSON CALET MOLANO CARDOZO
JOSÉ ALEJANDRO MONTEALEGRE RODRIGUEZ
INSTRUCTOR:
MOTTA VARGAS JOSÉ DE JESÚS
SERVICIO NACIONAL DE APRENDIZAJE – SENA 
PROGRAMACIÓN DE SOFTWARE – 3145555
2025
</pre>

</details>

## Página 2

![Página 2](<SOLUCION DEL TALLER SOBRE BASES DE DATOS_assets/pagina-002.png>)

<details>
<summary>Texto extraído de la página</summary>

<pre>
Tabla de contenido
 1. Plantear claramente un ejercicio relacionado con temas tecnológicos 3
2. Generar el MER (identificar Entidades, Atributos, Relaciones, FK, PK, índices y 
4
cualquier otro requerimiento según el enunciado).
 3. Diccionario de Datos 5
</pre>

</details>

## Página 3

![Página 3](<SOLUCION DEL TALLER SOBRE BASES DE DATOS_assets/pagina-003.png>)

<details>
<summary>Texto extraído de la página</summary>

<pre>
1. Plantear claramente un ejercicio relacionado con temas tecnológicos:
Una empresa llamada TechFix se dedica a la reparación de equipos tecnológicos
como computadores, tablets y celulares. El sistema debe permitir registrar los 
clientes, equipos, reparaciones realizadas, técnicos encargados y facturación de 
servicios.
Objetivo:
Diseñar una base de datos que gestione las reparaciones tecnológicas, incluyendo 
el control de clientes, técnicos, servicios realizados y pagos.
</pre>

</details>

## Página 4

![Página 4](<SOLUCION DEL TALLER SOBRE BASES DE DATOS_assets/pagina-004.png>)

<details>
<summary>Texto extraído de la página</summary>

<pre>
2. Generar el MER (identificar Entidades, Atributos, Relaciones, FK, PK,
índices y cualquier otro requerimiento según el enunciado).
Relaciones:
• Un Cliente puede tener varios Equipos.
• Un Equipo puede tener varias Reparaciones.
• Cada Reparación la realiza un Técnico.
• Cada Factura pertenece a un Cliente y a una Reparación.
</pre>

</details>

## Página 5

![Página 5](<SOLUCION DEL TALLER SOBRE BASES DE DATOS_assets/pagina-005.png>)

<details>
<summary>Texto extraído de la página</summary>

<pre>
3. Diccionario de Datos:
Cliente:
Entidad
Cliente
Campo Tipo de Dato Descripción
Id_cliente INT (PK) Identificador
único del cliente
Cliente Nombre VARCHAR(100) Nombre del
cliente
Cliente Apellido VARCHAR(100) Apellido del cliente
Cliente Teléfono VARCHAR(15) Teléfono del
cliente
Cliente Correo VARCHAR(100) Correo del cliente
Equipo:
Entidad
Equipo
Campo Tipo de Dato Descripción
Id_equipo INT (PK) Identificador
único del
equipo
Equipo Tipo_equipo VARCHAR(50) Tipo del equipo
Equipo Martca VARCHAR(50) Marca del equipo
Equipo Modelo VARCHAR(50) Modelo del equipo
Equipo Id_cliente INT (FK) Relación con Cliente
Técnico:
Entidad
Técnico
Campo Tipo de Dato descripción
Id_tecnico INT (PK) Identificador
único del
técnico
Técnico Nombre VARCHAR(100) Nombre del técnico
</pre>

</details>

## Página 6

![Página 6](<SOLUCION DEL TALLER SOBRE BASES DE DATOS_assets/pagina-006.png>)

<details>
<summary>Texto extraído de la página</summary>

<pre>
Técnico Especialidad VARCHAR(50) Especialidad del 
técnico
Técnico Teléfono VARCHAR(15) Teléfono del técnico
Reparación:
Entidad
Reparación
Campo Tipo de Dato Descripcion
Id_reparacion INT (PK) Identificador
único del
Reparación
Reparación Fecha_entrada DATE Fecha de ingreso
Reparación Fecha_salida DATE Fecha de salida
Reparación Estado VARCHAR(50) Estado actual
Reparación Costo DECIMAL(10,2) Costo de reparación
Reparación Id_equipo INT(FK) Relación con equipo
Reparación Id_tecnico INT (FK) Relación con 
Técnico
Factura:
Entidad
Factura
Campo Tipo de Dato Descripcion
Id_factura INT (PK) Identificador
único del
Factura
Factura Fecha_factura DATE Fecha de emisión
Factura Total DECIMAL (10,2) Total de la factura
Factura Id_cliente INT (FK) Relación con Cliente
</pre>

</details>

## Página 7

![Página 7](<SOLUCION DEL TALLER SOBRE BASES DE DATOS_assets/pagina-007.png>)

<details>
<summary>Texto extraído de la página</summary>

<pre>
Factur
a Id_reparacion INT (FK)
Relación de reparación
</pre>

</details>
