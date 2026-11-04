> **Documento histórico.** Conversión de [SRS (1)(Antiguo).docx](<SRS (1)(Antiguo).docx>); se conserva su contenido fuente sin actualizarlo.

<p>ESPECIFICACIÓN DE REQUISITOS DE SOFTWARE</p>











<p><strong>PROYECTO: Hidro Smart</strong></p>













<p><strong>INTEGRANTES:</strong></p>





<p><strong>Emerson Calet Molano Cardozo </strong></p>

<p><strong>José David Amaya Mosquera</strong></p>

<p><strong>José Alejandro Montealegre Rodríguez</strong></p>















<p><strong>INSTRUCTOR:</strong></p>

<p><strong>MOTTA VARGAS JOSÉ DE JESÚS</strong></p>















<p><strong>SERVICIO NACIONAL DE APRENDIZAJE – SENA PROGRAMACIÓN DE SOFTWARE – 3145555</strong></p>











<p>2025</p>

<p><br />Tabla de contenido</p>

1. <a href="#_heading=h.1ff5uocd5h7x">Introducción&emsp;</a>3

  1. <a href="#_heading=h.64tpyoh4vl8e">Planteamiento del problema&emsp;</a>4

  1. <a href="#_heading=h.az8byui75hbc">Propósito&emsp;</a>4

  1. <a href="#_heading=h.2baetvikd7d5">Justificación&emsp;</a>4

  1. <a href="#_heading=h.73dutj5b9ost">Objetivo General&emsp;</a>4

    1. <a href="#_heading=h.9bjg4lucef5q">Objetivos específicos&emsp;</a>4

  1. <a href="#_heading=h.bdphss51rc7q">Alcance&emsp;5</a>

  1. <a href="#_heading=h.mbyr8ybdajl">Personal involucrado&emsp;5</a>

  1. <a href="#_heading=h.7e5q3vwtr1e4">Definiciones, acrónimos y abreviaturas&emsp;</a>5

  1. <a href="#_heading=h.tvm5948kydjj">Referencias&emsp;6</a>

  1. <a href="#_heading=h.4i2xyer3qvtd">Resumen&emsp;</a>6

1. <a href="#_heading=h.5d2t5vn6dy3i">Descripción General&emsp;</a>6

  1. <a href="#_heading=h.u5iou7pdmi58">Perspectiva del producto&emsp;</a>6

  1. <a href="#_heading=h.u6w1l6wawagu">Características de los usuarios&emsp;</a>6

  1. <a href="#_heading=h.zd1myf5lrfoe">Restricciones&emsp;</a>7

  1. <a href="#_heading=h.2a1v3ucevhdr">Suposiciones y dependencias&emsp;</a>7

1. <a href="#_heading=h.qivl7yk49ghy">Requisitos Específicos&emsp;</a>7

  1. <a href="#_heading=h.3155viaud0q2">Requisitos comunes de las interfaces&emsp;</a>7

    1. <a href="#_heading=h.dy897w6hf21i">Interfaces de usuario&emsp;</a>7

    1. <a href="#_heading=h.pu4nc565rw3v">Interfaces de hardware&emsp;</a>7

    1. <a href="#_heading=h.b47s13nolil">Interfaces de software&emsp;</a>7

    1. <a href="#_heading=h.g45wdcaaanor">Interfaces de comunicación&emsp;</a>8

  1. <a href="#_heading=h.rug4oh5bvdno">Requerimientos Funcionales&emsp;</a>8

  1. <a href="#_heading=h.596x1akjv5xz">Requerimientos No Funcionales&emsp;</a>19

1. <a href="#_heading=h.z13l97d05ozz">Requisitos de Casos de Uso&emsp;</a>26

  1. <a href="#_heading=h.5nlt3vruay0g">Diagrama UML de casos de Uso&emsp;</a>26

  1. Caracterización de Casos de Uso&emsp;27

<p><br />Introducción.</p>



<p><strong>Bienvenidos </strong></p>

<p>El consumo eficiente y responsable del agua es uno de los principales desafíos ambientales y sociales en los hogares modernos. En Colombia, gran parte de la población desconoce cuánta agua utiliza diariamente y en qué actividades específicas se gasta. La ausencia de información detallada en las facturas y las limitaciones de los medidores tradicionales impiden que los usuarios tomen decisiones informadas sobre su consumo.</p>

<p>Según datos de la <em>Personería de Bogotá (2024)</em>, hasta un <strong>40 % del agua potable</strong> se pierde en la capital, y a nivel nacional, la cifra asciende al <strong>48 %</strong> (<em>Universidad de los Andes, 2024</em>). Esta situación demuestra la necesidad urgente de soluciones tecnológicas que faciliten el monitoreo, control y análisis del consumo doméstico.</p>

<p><strong>Hidro Smart</strong> surge como una solución innovadora orientada al desarrollo sostenible. Se trata de un sistema inteligente que combina <strong>tecnología </strong><strong>IoT</strong><strong> (Internet </strong><strong>of</strong><strong> </strong><strong>Things</strong><strong>)</strong> con una <strong>aplicación móvil</strong>, permitiendo a los usuarios monitorear su consumo de agua en tiempo real, recibir alertas, analizar estadísticas y adoptar hábitos más conscientes. El propósito es optimizar el uso del recurso hídrico, reducir el desperdicio y contribuir a la sostenibilidad ambiental desde el hogar.</p>





<p>Planteamiento del problema.</p>



<p>En la mayoría de los hogares colombianos no se dispone de herramientas que permitan identificar cómo, cuándo y en qué se consume el agua. Los medidores convencionales solo registran el total mensual, sin ofrecer un desglose detallado por actividad (ducha, lavado, cocina, aseo, etc.).</p>

<p>Esta falta de información provoca desperdicio, costos elevados y un bajo nivel de conciencia sobre el impacto ambiental del consumo doméstico.</p>

<p>Por tanto, se plantea la siguiente pregunta de investigación:</p>

<p><strong>¿Cómo puede una solución tecnológica basada en medidores inteligentes e integración móvil ayudar a los usuarios domésticos a conocer, controlar y optimizar su consumo de agua diario para reducir el desperdicio?</strong></p>

<p><br />Propósito.</p>

<p>El propósito del proyecto <strong>Hidro Smart</strong> es diseñar e implementar una herramienta tecnológica integral que permita <strong>registrar, analizar y visualizar el consumo de agua</strong> en los hogares de manera automática y detallada. La aplicación móvil recibirá datos desde medidores inteligentes conectados por IoT, mostrando estadísticas, recomendaciones y reportes que ayuden a los usuarios a mejorar sus hábitos de consumo.</p>

<p>El sistema busca promover el ahorro, la sostenibilidad ambiental y el uso consciente del recurso hídrico, contribuyendo a la gestión eficiente del agua a nivel doméstico.</p>



<p>Justificación.</p>

<p>En Colombia, el desperdicio de agua continúa siendo un problema significativo. Se estima que <strong>solo el 33 % de los ciudadanos adopta prácticas de ahorro hídrico</strong> (<em>DANE, 2024</em>). La falta de conocimiento sobre el consumo real en el hogar impide implementar medidas efectivas para reducir el uso innecesario del recurso.</p>

<p><strong>Hidro Smart</strong> busca cerrar esta brecha mediante una solución tecnológica accesible y funcional. Al integrar sensores de flujo, conectividad IoT y una interfaz móvil intuitiva, el sistema ofrece al usuario información en tiempo real sobre su consumo, alertas ante anomalías y recomendaciones personalizadas para optimizar el uso del agua.</p>

<p>El proyecto no solo tiene un impacto ecológico, sino también <strong>económico y educativo</strong>, al incentivar una cultura de sostenibilidad y responsabilidad ambiental en los hogares.</p>







<p>Objetivo General.</p>

<p>Diseñar e implementar una solución tecnológica compuesta por un <strong>medidor inteligente de agua</strong> y una <strong>aplicación móvil</strong> que permita a los usuarios monitorear, controlar y optimizar su consumo diario, proporcionando información detallada, alertas preventivas y estrategias prácticas para fomentar el uso responsable del agua.</p>



    1. Objetivos específicos.



- Desarrollar una <strong>aplicación móvil</strong> que muestre los datos recibidos desde un medidor inteligente en tiempo real.<br />

- Registrar, procesar y clasificar el consumo de agua por actividad doméstica.<br />

- Generar <strong>informes y gráficos periódicos</strong> para que el usuario evalúe sus patrones de consumo.<br />

- Proporcionar <strong>alertas y recomendaciones</strong> para reducir el desperdicio.<br />

- Evaluar el rendimiento y la usabilidad del sistema durante su implementación piloto.





<p>Alcance.</p>

<p>Este documento (SRS) define los requerimientos funcionales y no funcionales del sistema <strong>Hidro Smart</strong>. El alcance del proyecto abarca:</p>

- Diseño y desarrollo de un <strong>software móvil multiplataforma</strong> conectado a sensores de medición inteligente.<br />

- <strong>Visualización en tiempo real</strong> del consumo doméstico.<br />

- <strong>Clasificación por tipo de actividad</strong> (ducha, lavado, aseo, etc.).<br />

- <strong>Alertas y reportes automáticos</strong> sobre consumo excesivo o fugas detectadas.<br />

- <strong>Gestión de usuarios y hogares</strong> mediante cuentas seguras y roles definidos.<br />

<p>El sistema no incluirá inicialmente integración con redes externas de servicios públicos, pero quedará preparado para futuras extensiones.</p>





  1. Personal involucrado.




<table>
<tr>
<td><p><strong>Nombre</strong></p></td>
<td><p>José David Amaya Mosquera</p></td>
</tr>
<tr>
<td><p><strong>Rol</strong></p></td>
<td><p>Analista</p></td>
</tr>
<tr>
<td><p><strong>Categoría Profesional</strong></p></td>
<td><p>Aprendiz del tecnólogo en análisis y desarrollo software</p></td>
</tr>
<tr>
<td><p><strong>Responsabilidad</strong></p></td>
<td><p>Análisis y documentación del proyecto.</p></td>
</tr>
<tr>
<td><p><strong>Información de contacto</strong></p></td>
<td><p>josedam2704@gmail.com</p></td>
</tr>
</table>


<p><strong>&emsp;</strong></p>


<table>
<tr>
<td><p><strong>Nombre</strong></p></td>
<td><p>Emerson Calet Molano Cardozo</p></td>
</tr>
<tr>
<td><p><strong>Rol</strong></p></td>
<td><p>Programador</p></td>
</tr>
<tr>
<td><p><strong>Categoría Profesional</strong></p></td>
<td><p>Aprendiz del tecnólogo en análisis y desarrollo software</p></td>
</tr>
<tr>
<td><p><strong>Responsabilidad</strong></p></td>
<td><p>Responsable de todos los requerimientos del código</p></td>
</tr>
<tr>
<td><p><strong>Información de contacto</strong></p></td>
<td><p>emersoncaletmolano@gmail.com</p></td>
</tr>
</table>





<table>
<tr>
<td><p><strong>Nombre</strong></p></td>
<td><p>José Alejandro Montealegre Rodríguez</p></td>
</tr>
<tr>
<td><p><strong>Rol</strong></p></td>
<td><p>Base de Datos</p></td>
</tr>
<tr>
<td><p><strong>Categoría Profesional</strong></p></td>
<td><p>Aprendiz del tecnólogo en análisis y desarrollo software</p></td>
</tr>
<tr>
<td><p><strong>Responsabilidad</strong></p></td>
<td><p>Gestión de la base de datos con los requerimientos que se presente</p></td>
</tr>
<tr>
<td><p><strong>Información de contacto</strong></p></td>
<td><p>montealegrejose254@gmail.com</p></td>
</tr>
</table>


  1. <br />Definiciones, acrónimos y abreviaturas.




<table>
<tr>
<td><p><em><strong>Nombre</strong></em></p></td>
<td><p><em><strong>Descripción</strong></em></p></td>
</tr>
<tr>
<td><p><strong>Usuario</strong></p></td>
<td><p>Persona que usará la aplicación.</p></td>
</tr>
<tr>
<td><p><strong>SRS</strong></p></td>
<td><p>Especificación de Requisitos de Software.</p></td>
</tr>
<tr>
<td><p><strong>RF</strong></p></td>
<td><p>Requerimiento Funcional.</p></td>
</tr>
<tr>
<td><p><strong>RNF</strong></p></td>
<td><p>Requerimiento No Funcional.</p></td>
</tr>
<tr>
<td><p><strong>SENA</strong></p></td>
<td><p>Servicio Nacional de Aprendizaje.</p></td>
</tr>
<tr>
<td><p><strong>CU</strong></p></td>
<td><p>Caso de uso.</p></td>
</tr>
</table>












  1. Referencias.


<table>
<tr>
<td><p><strong>Título del Documento</strong></p></td>
<td><p><strong>Referencia</strong></p></td>
</tr>
<tr>
<td><p>Standard IEEE 830 - 1998</p></td>
<td><p>IEEE,</p></td>
</tr>
<tr>
<td><p>Norma Apa</p></td>
<td><p>Norma APA 7ª edición</p></td>
</tr>
</table>


<p>Resumen.</p>

<p>El sistema <strong>Hidro Smart</strong> permitirá a los usuarios visualizar su consumo de agua de forma clara, identificar fugas o patrones anómalos, y recibir sugerencias para optimizar el uso del recurso. El usuario accederá a través de un <strong>inicio de sesión seguro</strong>, donde podrá consultar estadísticas, reportes y recomendaciones personalizadas.</p>

<p>El proyecto busca integrar tecnología y conciencia ambiental, ofreciendo una solución práctica para la gestión inteligente del agua en el hogar.</p>



<p>Descripción General.</p>

<p><strong>Hidro Smart</strong> es una aplicación móvil conectada a dispositivos IoT de medición inteligente. Su función principal es recopilar datos de consumo, analizarlos y mostrarlos mediante una interfaz amigable e intuitiva.</p>

<p>El sistema se compone de:</p>

- Un <strong>medidor inteligente</strong> que registra el caudal de agua.<br />

- Una <strong>API </strong><strong>IoT</strong> para comunicación segura entre dispositivo y servidor.<br />

- Una <strong>aplicación móvil multiplataforma</strong> para la visualización de información y generación de reportes.<br />

<p>El sistema puede integrarse con servicios en la nube para almacenamiento y análisis avanzado.</p>







  1. Características de los usuarios.








<table>
<tr>
<td><p><strong>Nombre de usuario</strong></p></td>
<td><p>Administrador</p></td>
</tr>
<tr>
<td><p><strong>Formación</strong></p></td>
<td><p>Personal autorizado</p></td>
</tr>
<tr>
<td><p><strong>Actividades</strong></p></td>
<td><p>Supervisa hogares, usuarios y dispositivos dentro del sistema</p></td>
</tr>
</table>







<table>
<tr>
<td><p><strong>Nombre de usuario</strong></p></td>
<td><p>Soporte Técnico</p></td>
</tr>
<tr>
<td><p><strong>Formación</strong></p></td>
<td><p>Desarrollador de Software o técnico Iot</p></td>
</tr>
<tr>
<td><p><strong>Actividades</strong></p></td>
<td><p>Realiza mantenimiento, calibraciones y soporte de conectividad</p></td>
</tr>
</table>





<table>
<tr>
<td><p><strong>Nombre de usuario</strong></p></td>
<td><p>Usuario doméstico</p></td>
</tr>
<tr>
<td><p><strong>Formación</strong></p></td>
<td><p>Natural</p></td>
</tr>
<tr>
<td><p><strong>Actividades</strong></p></td>
<td><p>monitorea el consumo, genera reportes y sigue ayudas de ahorro</p></td>
</tr>
</table>




















  1. Restricciones.



    1. Requiere conexión a internet estable para la sincronización IoT.<br />

    1. Compatible únicamente con <strong>Android 9 o superior</strong> en su versión inicial.<br />

    1. Dependencia de hardware compatible con sensores de flujo y transmisión Wi-Fi.<br />

    1. La precisión de datos depende de la calibración del dispositivo.<br />



<p><em>.</em></p>



  1. Suposiciones y dependencias.



    1. Los usuarios cuentan con dispositivos móviles actualizados y conexión a internet.<br />

    1. Los medidores IoT están correctamente instalados y calibrados.<br />

    1. Los requerimientos definidos permanecerán estables durante el desarrollo.<br />

    1. Las pruebas iniciales se realizarán en un entorno doméstico controlado.<br />



<p>Requisitos Específicos.</p>



<p>Requisitos comunes de las interfaces</p>

<p>Interfaces de Usuario</p>

<p>La aplicación contará con una <strong>interfaz moderna, intuitiva y adaptable (responsive)</strong>, que muestre el consumo de agua por periodos y actividades. Incluirá:</p>

- Pantalla de inicio de sesión y registro.<br />

- Panel principal con consumo total y por actividad.<br />

- Alertas visuales y recomendaciones.<br />

- Módulo de reportes y configuración del perfil.<br />

<p>Interfaces de Hardware</p>

- Sensores de caudal conectados mediante Wi-Fi o Bluetooth.<br />

- Dispositivos móviles con <strong>Android 9+</strong>, mínimo <strong>2 GB de RAM</strong>.<br />

- Conectividad estable a internet.<br />

- Espacio de almacenamiento mínimo de <strong>100 MB</strong> para la aplicación.<br />



<p><br />Interfaces de Software</p>

- <strong>Sistema Operativo:</strong> Android 9 o superior / Windows 10 o superior.<br />

- <strong>Explorador compatible:</strong> Chrome, Edge o Firefox.<br />

- <strong>Lenguaje y Framework:</strong> Flutter (Dart) o React Native para la app; Node.js / Express para backend.<br />

- <strong>Base de datos:</strong> PostgreSQL o Firebase Cloud.







  1. Requerimientos Funcionales

<p><strong> RF1. Ingreso, autenticación y seguridad Usuarios:</strong></p>

<p>RF1.1 Crear Usuario</p>

<p>ERF 1.1.1 Genera tokens de sesión (Access y Refresh)</p>

<p>ERF 1.1.2 Reglas de contraseña</p>

<p>ERF 1.1.3 Asignar roles</p>

<p>RF1.2 Acceso al Sistema</p>

<p>ERF 1.2.1 Bloqueo por intentos fallidos</p>

<p>RF1.3 Recuperar contraseña</p>

<p>RF 1.4 Actualizar perfil</p>

<p>RF 1.5 Suspender cuenta</p>

<p>ERF 1.5.1 Reactivar Usuario&emsp;</p>

<p><strong>RF2. Vincular dispositivos</strong></p>

<p>RF 2.1 Registrar dispositivo</p>

<p>ERF 2.1.1 Valor único ID</p>

<p>RF 2.2 Suspender dispositivos</p>

<p>2.2.1 Reactivar dispositivo</p>

<p><strong>RF3. Implementación de nuevo proyecto (hogar)</strong></p>

<p>RF 3.1 Crear Proyecto (Hogar)</p>

<p>ERF 3.1.1 Asignar estratificación</p>

<p>ERF 3.1.1.1 Asignar valor</p>

<p>RF 3.2 Asignar Usuario titular</p>

<p>ERF 3.2.1 Asignar Usuarios miembros</p>

<p>ERF 3.2.1.1. Asignar funciones especiales</p>

<p>RF 3.3 Asignar dispositivos</p>

<p>RF 3.4 Suspender proyecto (hogar)</p>

<p>ERF 3.4.1 reactivar proyecto (hogar)</p>

<p><strong>RF4. Configuraciones del sistema</strong></p>

<p>RF 4.1 Configurar topes de consumo</p>

<p>RF 4.2 Configurar alertas</p>

<p>RF 4.3 Configurar recomendaciones</p>

<p>RF 4.4 Configurar idiomas</p>

<p>ERF 4.4.1 Configurar moneda</p>

<p>RF 4.5 Configuración de colores (gestión global)</p>

<p>RF 4.6 Controles de auditoria</p>

<p><strong><br />RF5. Consultas y/o Reportes PDF y EXCEL</strong></p>

<p>RF 5.1. Gráficos comparativos</p>

<p>ERF 5.1.1 En tiempo Gráficos comparativos real</p>

<p>ERF 5.1.2 Anual</p>

<p>ERF 5.1.3 Mensual</p>

<p>ERF 5.1.4 Semanal</p>

<p>ERF 5.1.5 Diario</p>

<p>RF 5.2 Hábitos de consumo</p>

<p>RF 5.3 modelo predictivo</p>

<p>RF 5.4 Alertas</p>

<p>RF 5.5 Recomendaciones</p>

<p>RF 5.6 Proyectos (hogares) asociados al Usuario.</p>

<p><br />Requerimientos Funcionales</p>



<p>RF1 – Ingreso, autenticación y seguridad Usuarios</p>



<p>RF1.1 – Crear Usuario</p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite registrar nuevos usuarios en el sistema mediante el ingreso de datos personales y credenciales de acceso.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>- Nombre</p><p>- Correo electrónico</p><p>- Contraseña</p><p>- Tipo de documento</p><p>- Número de documento</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Confirmación de registro exitoso o mensaje de error por datos inválidos.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Validación de datos y almacenamiento en la base de datos de usuarios.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>• Todos los campos obligatorios deben estar completos <br />• No debe existir duplicidad de correo ni documento</p></td>
</tr>
</table>
</td>
</tr>
</table>


<p><strong> </strong></p>



<p><strong><br />ERF1.1.1 – Generación de tokens de sesión (Access y </strong><strong>Refresh</strong><strong>)</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Sistema</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Genera tokens de autenticación para gestionar sesiones seguras después del registro o inicio de sesión del usuario.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Credenciales validadas</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>- Token de acceso</p><p>- Token de actualización</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Creación automática de tokens cifrados con tiempo de expiración.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>• Los tokens deben ser únicos <br />• El token access debe tener tiempo limitado</p></td>
</tr>
</table>
</td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>ERF1.1.2 – Reglas de contraseña</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Sistema</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Aplica reglas de seguridad para la creación de contraseñas seguras durante el registro y actualización.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Contraseña ingresada</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Validación correcta o mensaje de error por incumplimiento de reglas.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Evaluación de longitud, complejidad y cifrado de la contraseña.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>• Mínimo 8 caracteres <br />• Uso de letras y números <br />• La contraseña se almacena cifrada</p></td>
</tr>
</table>
</td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>ERF1.1.3 – Asignar roles</strong></p>


<table>
<tr>
<td><p><br />Tipo</p></td>
<td><p>Sistema</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Asigna un rol específico al usuario para definir permisos y accesos dentro del sistema.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Rol del usuario</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Rol asignado correctamente</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Asociación del rol al usuario en la base de datos.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El rol debe existir previamente <br />• El usuario debe quedar con permisos definidos</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>RF1.2 – Acceso al sistema</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite al usuario iniciar sesión en el sistema utilizando sus credenciales registradas.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>- Correo electrónico</p><p>- Contraseña</p></td>
</tr>
</table>
</td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Acceso al sistema o mensaje de error.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Validación de credenciales y creación de sesión.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• Credenciales válidas <br />• Sesión creada correctamente</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>ERF1.2.1 – Bloqueo por intentos fallidos</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Sistema</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Bloquea temporalmente la cuenta del usuario tras múltiples intentos fallidos de inicio de sesión.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Número de intentos fallidos</p></td>
</tr>
<tr>
<td><p><br />Salidas</p></td>
<td><p>Cuenta bloqueada temporalmente</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Conteo de intentos y restricción de acceso.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>• La cuenta se bloquea tras el límite permitido <br />• Se notifica al usuario</p></td>
</tr>
</table>
</td>
</tr>
</table>




<p><strong>RF1.3 – Recuperar contraseña</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite al usuario restablecer su contraseña mediante un enlace enviado a su correo electrónico.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Correo electrónico</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Enlace de recuperación enviado</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Generación de token temporal y envío por correo.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>• El enlace debe expirar <br />• El correo debe existir en el sistema</p></td>
<td></td>
</tr>
</table>
</td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>RF1.4 – Actualizar perfil</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite al usuario modificar su información personal dentro del sistema.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>- Nombre</p><p>- Teléfono</p><p>- Ciudad</p></td>
</tr>
</table>
</td>
</tr>
<tr>
<td><p><br />Salidas</p></td>
<td><p>Confirmación de actualización</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Validación y actualización de datos del usuario.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>Los datos deben guardarse correctamente</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>RF1.5 – Suspender cuenta</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Administrador</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite suspender una cuenta de usuario para restringir su acceso al sistema.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Usuario seleccionado</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Cuenta suspendida</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Cambio de estado de la cuenta en la base de datos.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>El usuario no puede iniciar sesión</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>ERF1.5.1 – Reactivar usuario</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Administrador</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite reactivar una cuenta de usuario previamente suspendida.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Usuario suspendido</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Cuenta reactivada</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Cambio de estado a activo.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>El usuario recupera el acceso al sistema</p></td>
</tr>
</table>


<p><strong> </strong></p>



<p>RF2 – Vincular Dispositivos</p>



<p><strong>RF2.1 – Registrar dispositivo</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite registrar un dispositivo IoT en el sistema para su monitoreo y asociación a un hogar específico.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>- <br />Nombre del dispositivo</p><p>- Tipo de dispositivo</p><p>- Código o identificador del dispositivo</p></td>
</tr>
</table>
</td>
</tr>
<tr>
<td><p><br />Salidas</p></td>
<td><p>Confirmación de registro exitoso o mensaje de error.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Validación del dispositivo y asociación a la cuenta del usuario.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>• El dispositivo debe existir <br />• No debe estar previamente registrado</p></td>
</tr>
</table>
</td>
</tr>
</table>




<p><strong>ERF2.1.1 – Asignar valor único ID</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Sistema</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Asigna un identificador único al dispositivo para garantizar su correcta identificación dentro del sistema.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Datos del dispositivo</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Identificador único asignado</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Generación automática de ID único y almacenamiento en base de datos.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>• El ID no debe repetirse <br />• El ID debe quedar asociado al dispositivo</p></td>
</tr>
</table>
</td>
</tr>
</table>




<p><strong>RF2.2 – Suspender dispositivo</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite suspender un dispositivo para detener su monitoreo y uso dentro del sistema.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Dispositivo seleccionado</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Confirmación de suspensión del dispositivo</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Cambio de estado del dispositivo a suspendido.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>El dispositivo no debe enviar datos mientras esté suspendido</p></td>
</tr>
</table>




<p><strong>ERF2.2.1 – Reactivar dispositivo</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite reactivar un dispositivo <br />previamente suspendido para retomar su monitoreo.</p></td>
</tr>
<tr>
<td><p><br />Entradas</p></td>
<td><p>Dispositivo suspendido</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Dispositivo reactivado</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Cambio de estado del dispositivo a activo.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>El dispositivo vuelve a enviar información correctamente</p></td>
</tr>
</table>






<p>RF3 – Implementación de nuevo proyecto (hogar)</p>



<p><strong>RF3.1 – Crear proyecto (hogar)</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite crear un nuevo proyecto tipo hogar dentro del sistema para el monitoreo y control del consumo de agua.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>- Nombre del hogar</p><p>- Dirección</p><p>- Ciudad</p></td>
</tr>
</table>
</td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Confirmación de creación del hogar</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Registro del proyecto hogar en la base de datos</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>• Todos los campos obligatorios deben completarse <br />• El hogar queda activo por defecto</p></td>
</tr>
</table>
</td>
</tr>
</table>




<p>ERF3.1.1 – Asignar estratificación</p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite asignar el estrato socioeconómico al hogar creado para fines de análisis y control de consumo.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Estrato del hogar</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Estrato asignado</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Asociación del estrato al proyecto hogar</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>
<p><br />El estrato debe estar dentro de los valores permitidos</p></td>
</tr>
</table>




<p><strong>ERF3.1.1.1 – Asignar valor</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Sistema</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Asigna un valor base de referencia según el estrato definido para el hogar.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Estrato asignado</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Valor base definido</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Cálculo automático del valor según el estrato</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>El valor debe corresponder al estrato seleccionado</p></td>
</tr>
</table>
</td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>RF3.2 – Asignar usuario titular</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite definir un usuario titular responsable del hogar creado.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Usuario seleccionado</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Usuario asignado como titular</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Asociación del usuario titular al hogar</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>• El usuario debe existir <br />• Solo puede existir un titular por hogar</p></td>
</tr>
</table>
</td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>ERF3.2.1 – Asignar usuarios miembros</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite agregar otros usuarios como <br />miembros del hogar.</p></td>
</tr>
<tr>
<td><p><br />Entradas</p></td>
<td><p>Usuarios seleccionados</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Usuarios asociados al hogar</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Asociación de miembros al proyecto hogar</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>Los usuarios deben existir en el sistema</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>ERF3.2.1.1 – Asignar funciones especiales</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite asignar funciones o permisos especiales a determinados miembros del hogar.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>- Usuario miembro</p><p>- Rol o función</p></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Función asignada</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Configuración de permisos específicos</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>Las funciones deben estar predefinidas</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>RF3.3 – Asignar dispositivos</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite asociar dispositivos IoT previamente registrados al hogar correspondiente.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Dispositivo seleccionado</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Dispositivo asociado al hogar</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Asociación del dispositivo al proyecto hogar</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>El dispositivo debe estar activo</p></td>
</tr>
</table>
</td>
</tr>
</table>




<p><strong>RF3.4 – Suspender proyecto (hogar)</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite suspender temporalmente un proyecto hogar, deteniendo el monitoreo y las notificaciones.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Hogar seleccionado</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Hogar suspendido</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Cambio de estado del proyecto hogar</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>El hogar no debe generar alertas mientras esté suspendido</p></td>
<td></td>
</tr>
</table>
</td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>ERF3.4.1 – Reactivar proyecto (hogar)</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite reactivar un proyecto hogar previamente suspendido.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>Hogar suspendido</p></td>
</tr>
</table>
</td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Hogar reactivado</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Cambio de estado a activo</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>El hogar vuelve a funcionar normalmente</p></td>
</tr>
</table>






<p>RF4 – Configuraciones del sistema</p>



<p>RF4.1 – Configurar topes de consumo</p>


<table>
<tr>
<td><p><br />Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite definir límites máximos de consumo de agua para un hogar con el fin de controlar y prevenir consumos excesivos.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>- Hogar seleccionado</p><p>- Valor máximo de consumo</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Tope de consumo configurado</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Registro del límite de consumo en el sistema</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>• El valor debe ser numérico y positivo <br />• El tope queda asociado al hogar</p></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>


<p><strong> </strong></p>



<p><strong>RF4.2 – Configurar alertas</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite configurar alertas automáticas cuando el consumo de agua se acerque o supere los topes establecidos.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>- Tipo de alerta</p><p>- Umbral de consumo</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Alerta configurada</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Activación de reglas de notificación</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>La alerta debe activarse al superar el umbral definido</p></td>
</tr>
</table>
</td>
</tr>
</table>


<p><strong><br /> </strong></p>

<p><strong>RF4.3 – Configurar recomendaciones</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Sistema</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite configurar la generación automática de recomendaciones de ahorro basadas en los hábitos de consumo del hogar.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Datos históricos de consumo</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Recomendaciones personalizadas</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Análisis de patrones de consumo</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>Las recomendaciones deben corresponder al consumo registrado</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>RF4.4 – Configurar idiomas</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite seleccionar el idioma de visualización de la plataforma según la preferencia del usuario.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Idioma seleccionado</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Idioma configurado</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Cambio del idioma de la interfaz</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>El idioma debe aplicarse en toda la interfaz</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>ERF4.4.1 – Configurar moneda</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite definir la moneda utilizada para mostrar valores de consumo y estimaciones económicas.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>
<p>Moneda seleccionada</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Moneda configurada</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Actualización del formato monetario</p></td>
</tr>
<tr>
<td><p><br />Criterio de aceptación</p></td>
<td><p>La moneda se refleja correctamente en reportes y gráficos</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>RF4.5 – Configuración de colores (gestión global)</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite personalizar la paleta de colores de la interfaz para mejorar la experiencia visual.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Tema o colores seleccionados</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Estilo visual aplicado</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Actualización del tema gráfico del sistema</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>Los colores deben aplicarse de forma global</p></td>
</tr>
</table>
</td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>RF4.6 – Controles de auditoría</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Sistema</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite registrar y consultar acciones relevantes realizadas por los usuarios dentro del sistema para fines de auditoría.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Acciones del usuario</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Registro de auditoría</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Almacenamiento de eventos en bitácora</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>Todas las acciones críticas deben quedar registradas</p></td>
<td></td>
</tr>
</table>
</td>
</tr>
</table>






<p>RF5 – Consultas y/o Reportes PDF y EXCEL</p>



<p>RF5.1 – Gráficos comparativos</p>


<table>
<tr>
<td><p><br />Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite visualizar gráficos comparativos del consumo de agua para analizar variaciones y tendencias en distintos periodos de tiempo.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>- Hogar seleccionado</p><p>- Rango de fechas</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Gráficos comparativos de consumo</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Procesamiento y visualización de datos históricos</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>• Los gráficos deben reflejar datos reales <br />• La información debe ser clara y legible</p></td>
</tr>
</table>
</td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>ERF5.1.1 – Gráficos comparativos en tiempo real</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Sistema</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite visualizar gráficos comparativos con datos de consumo en tiempo real.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Datos en tiempo real del dispositivo</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Gráfico actualizado en tiempo real</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Actualización continua de los datos mostrados</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>Los datos deben actualizarse automáticamente</p></td>
</tr>
</table>
</td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>ERF5.1.2 – Gráficos comparativos anuales</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p><br />Descripción</p></td>
<td><p>Permite comparar el consumo de agua entre diferentes años.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Año seleccionado</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Gráfico comparativo anual</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Consulta y agrupación de datos anuales</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>El gráfico debe incluir todos los meses del año</p></td>
</tr>
</table>
</td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>ERF5.1.3 – Gráficos comparativos mensuales</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite visualizar y comparar el consumo mensual de agua.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Mes seleccionado</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Gráfico comparativo mensual</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Procesamiento de datos mensuales</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>El consumo debe corresponder al mes seleccionado</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>ERF5.1.4 – Gráficos comparativos semanales</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite comparar el consumo de agua por semanas.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>
<p>Semana seleccionada</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Gráfico comparativo semanal</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Agrupación de datos por semana</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>La semana debe calcularse correctamente</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong><br />ERF5.1.5 – Gráficos comparativos diarios</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite visualizar el consumo diario de agua.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Fecha seleccionada</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Gráfico comparativo diario</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Consulta de datos diarios</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>El gráfico debe mostrar valores por hora o día</p></td>
</tr>
</table>
</td>
</tr>
</table>




<p><strong>RF5.2 – Hábitos de consumo</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Sistema</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite analizar los patrones y hábitos de consumo de agua del usuario o del hogar.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Datos históricos de consumo</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Informe de hábitos de consumo</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Análisis de patrones y comportamientos</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>Los hábitos deben basarse en datos reales</p></td>
<td></td>
</tr>
</table>
</td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>RF5.3 – Modelo predictivo</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Sistema</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite estimar el consumo futuro de agua con base en el historial registrado.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Datos históricos</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Predicción de consumo</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Aplicación de algoritmos predictivos</p></td>
</tr>
<tr>
<td><p><br />Criterio de aceptación</p></td>
<td><p>La predicción debe usar datos históricos válidos</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>RF5.4 – Alertas</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Sistema</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite generar alertas automáticas cuando se detectan consumos anómalos o excesivos.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>- Datos de consumo</p><p>- Topes configurados</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Notificación de alerta</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Comparación del consumo con los límites establecidos</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>La alerta se genera al superar el tope</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>RF5.5 – Recomendaciones</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Sistema</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite generar recomendaciones personalizadas para el ahorro de agua.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Hábitos de consumo</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Recomendaciones de ahorro</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Análisis de consumo y generación de sugerencias</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>Las recomendaciones deben ser coherentes</p></td>
</tr>
</table>




<p><strong>RF5.6 – Proyectos (hogares) asociados al usuario</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite consultar los hogares asociados a la cuenta del usuario.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Usuario autenticado</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Listado de hogares asociados</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Consulta de hogares vinculados al usuario</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p><br />Solo se muestran hogares asociados al usuario</p></td>
</tr>
</table>
</td>
</tr>
</table>


<p><strong><br />BOSETO DE REQUERIMIENTOS FUNCIONALES</strong></p>



<p><strong>Mockup móvil: </strong><a href="https://www.figma.com/make/R5Yhy0Jh6SOBGT4ApaBO5y/M%C3%B3vil?node-id=0-1&amp;fullscreen=1&amp;t=1qqLwJS7DidIt8aX-1"><u><strong>https://www.figma.com/make/R5Yhy0Jh6SOBGT4ApaBO5y/M%C3%B3vil?node-id=0-1&amp;fullscreen=1&amp;t=1qqLwJS7DidIt8aX-1</strong></u></a></p>



<p><strong>Mockup web:  </strong><a href="https://www.figma.com/make/0zOBmy5JuETUlknQ8Sv91p/Web?node-id=0-1&amp;fullscreen=1&amp;t=HU0K98manyTK96L6-1"><u><strong>https://www.figma.com/make/0zOBmy5JuETUlknQ8Sv91p/Web?node-id=0-1&amp;fullscreen=1&amp;t=HU0K98manyTK96L6-1</strong></u></a></p>

  1. <br />Requerimientos No Funcionales.

<p><strong>Requerimientos No Funcionales.</strong></p>

<p><strong>RNF1. Rendimiento</strong></p>

- RNF1.1 Tiempo de inicio

- RNF1.2 Rendimiento general

- RNF1.3 Gestión de capacidad

- RNF1.4 Escalabilidad



<p><strong>RNF2. Usabilidad</strong></p>

- RNF2.1 Facilidad de uso

- RNF2.2 Claridad de la información

- RNF2.3 Lenguaje

- RNF2.4 Adaptabilidad



<p><strong>RNF3. Compatibilidad</strong></p>

- RNF3.1 Compatibilidad Android

- RNF3.2 Compatibilidad Web



<p><strong>RNF4. Disponibilidad y Confiabilidad</strong></p>

- RNF4.1 Disponibilidad

- RNF4.2 Persistencia de datos

- RNF4.3 Notificaciones en tiempo real

- RNF4.4 Recuperación ante fallos



<p><strong>RNF5. Seguridad</strong></p>

- RNF5.1 Control de acceso

- RNF5.2 Autenticación segura

- RNF5.3 Cifrado de datos

- RNF5.4 Copias de seguridad



<p><strong>RNF6. Gestión y Operación</strong></p>

- RNF6.1 Roles y responsabilidades

- RNF6.2 Gestión de incidentes

- RNF6.3 Mantenibilidad



<p><strong>RNF7. Portabilidad y Accesibilidad</strong></p>

- RNF7.1 Portabilidad

- RNF7.2 Accesibilidad

- RNF7.3 Multiplataforma



<p><strong>RNF8. Cumplimiento Normativo y Monitoreo</strong></p>

- RNF8.1 Eficiencia energética

- RNF8.2 Cumplimiento normativo

- RNF8.3 Auditoría

- RNF8.4 Monitoreo del rendimiento



<p><strong>RNF6. Requerimientos Técnicos</strong></p>

- RNF6.1 Visualización responsiva

- RNF6.2 Soporte técnico

- RNF6.3 Mantenimiento técnico

<p><br />RNF1 Rendimiento</p>


<table>
<tr>
<td colspan="2"><p>Identificador: RNF 1.1</p></td>
<td colspan="2"><p>Nombre:</p><p>Tiempo de inicio</p></td>
</tr>
<tr>
<td><p>Tipo: Necesario</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p><p>Sistema</p></td>
<td><p>¿Crítico? Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo: Alto</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p>- Informes de análisis de rendimiento del sistema</p><p>- Diagramas de arquitectura del software</p><p>- Registros de pruebas de carga</p><p>- Documentación de optimización de inicio</p><p>- Reportes de evaluación del tiempo de respuesta</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Comando de inicio del sistema</p></td>
<td colspan="3"><p>Salida:</p><p>Interfaz principal operativa</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p>- Este requerimiento no funcional se refiere al tiempo que tarda el sistema en iniciar completamente. La aplicación debe cargar todos sus componentes esenciales en un tiempo máximo de 5 segundos para ofrecer una experiencia fluida y evitar la percepción de lentitud por parte del usuario.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si el tiempo de inicio supera los 5 segundos, el sistema deberá generar un log automático con el detalle del retraso.</p><p>- Si ocurre una falla durante la carga, deberá ejecutarse un protocolo de recuperación automática que restablezca los servicios sin pérdida de datos.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p><br /></p><p>- La aplicación debe iniciar completamente en menos de 5 segundos en condiciones normales.</p><p>- La interfaz debe mostrarse funcional sin errores visibles o bloqueos al cargar.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF1.2</p></td>
<td colspan="2"><p>Nombre:</p><p>Rendimiento general</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Rendimiento</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alto</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p>- Reportes de rendimiento</p><p>- Pruebas de estrés</p><p>- Monitoreo del servidor y consumo de CPU</p><p>- Estadísticas de tiempo de respuesta promedio</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Solicitudes concurrentes del usuario</p></td>
<td colspan="3"><p>Salida:</p><p>Respuestas procesadas sin retrasos perceptibles</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- El sistema debe mantener tiempos de respuesta óptimos y consistentes bajo condiciones de carga variable. Esto incluye operaciones simultáneas de usuarios, ejecución de cálculos y manejo de transacciones sin deteriorar el rendimiento global.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p><br /></p><p>- <br />Si el rendimiento cae por debajo del 80% de eficiencia, el sistema debe activar un proceso de redistribución de carga.</p><p>- En caso de sobrecarga, el sistema debe priorizar las solicitudes críticas y encolar las secundarias.</p></td>
</tr>
<tr>
<td colspan="4"><p><br />Criterios de aceptación</p><p>- El tiempo promedio de respuesta por solicitud no debe superar los 3 segundos.</p><p>- El sistema debe soportar al menos 100 usuarios concurrentes sin degradación perceptible.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF1.3</p></td>
<td colspan="2"><p>Nombre:</p><p>Gestión de capacidad.</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Rendimiento</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Media</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p>- Plan de dimensionamiento de recursos</p><p>- Monitoreo de rendimiento</p><p>- Reportes de consumo de memoria y almacenamiento</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Datos de carga y uso del sistema</p></td>
<td colspan="3"><p>Salida:</p><p>Balance de recursos ajustado automáticamente</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p>- El sistema debe ser capaz de ajustar el uso de recursos (memoria, almacenamiento y CPU) de manera dinámica según las necesidades actuales y futuras de operación.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si un recurso alcanza el 90% de su capacidad, el sistema debe generar una alerta preventiva.</p><p>- En caso de alcanzar límites críticos, el sistema debe liberar recursos no esenciales automáticamente.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- No se deben presentar bloqueos ni pérdida de datos por falta de capacidad.</p><p>- La aplicación debe mantener estabilidad con crecimiento de hasta un 50% en el volumen de datos.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF1.4</p></td>
<td colspan="2"><p>Nombre:</p><p>Escalabilidad</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Rendimiento</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alto</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Arquitectura de escalado horizontal</p><p>- Diagramas de red</p><p>- Pruebas de carga distribuida</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Incremento de usuarios o volumen de datos</p></td>
<td colspan="3"><p>Salida:</p><p>Sistema estable sin pérdida de rendimiento.</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- El sistema debe poder aumentar su capacidad operativa sin modificar la arquitectura principal, soportando el crecimiento en usuarios, datos y transacciones.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si la carga del servidor supera el 75%, debe redirigir nuevas conexiones a instancias adicionales.</p><p>- Si un servidor falla, el sistema debe migrar automáticamente las sesiones activas a otro nodo.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- <br />Mantener un rendimiento constante con el doble de usuarios promedio.</p><p>- Soportar hasta 10.000 registros adicionales sin errores.</p></td>
</tr>
</table>


<p><br /><br /><br /></p>

<p>RNF2 Usabilidad</p>


<table>
<tr>
<td colspan="2"><p>Identificador: RNF2.1</p></td>
<td colspan="2"><p>Nombre:</p><p>Facilidad de uso</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Usabilidad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>No</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alto</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Manual de interfaz</p><p>- Resultados de pruebas de usabilidad</p><p>- Encuestas de usuarios</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Interacción del usuario con la interfaz</p></td>
<td colspan="3"><p>Salida:</p><p>Respuestas gráficas claras y comprensibles</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- La aplicación debe ofrecer una experiencia intuitiva, accesible y coherente para todo tipo de usuario. El diseño debe permitir que incluso usuarios sin experiencia puedan utilizar las funciones básicas sin asistencia.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si el usuario realiza una acción inválida, el sistema debe mostrar mensajes claros con instrucciones de corrección.</p><p>- Si se detectan errores de navegación, deben registrarse en el log para mejora futura.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- 90% de los usuarios pueden completar tareas básicas sin capacitación previa.</p><p>- Todos los textos e iconos deben ser comprensibles y coherentes.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF2.2</p></td>
<td colspan="2"><p>Nombre:</p><p>Claridad de la información</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Usabilidad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p><p>Interfaz</p></td>
<td><p>¿Crítico?</p><p>No</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Medio</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Guía de estilo de la interfaz</p><p>- Documentación de contenido</p><p>- Manual de redacción técnica</p><p>- Pruebas de comprensión de usuarios</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Datos procesados o mensajes del sistema</p></td>
<td colspan="3"><p>Salida:</p><p>Información mostrada en la interfaz de usuario</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- La aplicación debe garantizar que toda la información que se presente sea clara, comprensible y libre de <br />ambigüedades. Los textos, botones, íconos y mensajes de error deben tener una redacción precisa y un significado evidente para el usuario, evitando interpretaciones erróneas que puedan afectar su interacción con el sistema.</p></td>
</tr>
<tr>
<td colspan="4"><p><br />Manejo de situaciones anormales</p><p>- Si se detectan campos o mensajes ambiguos, el sistema deberá registrar el error y notificarlo al equipo de diseño.</p><p>- En caso de que el usuario no comprenda una acción, se mostrará automáticamente una breve ayuda contextual.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- 100% de los textos e iconos son comprensibles en pruebas de validación.</p><p>- Todos los mensajes de error explican claramente la causa y la solución.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF2.3</p></td>
<td colspan="2"><p>Nombre:</p><p>Lenguaje</p></td>
</tr>
<tr>
<td><p>Tipo: Usabilidad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico? No</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo: Medio</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p>- Archivo de localización del sistema</p><p>- Manual de traducción</p><p>- Validaciones de idioma</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Configuración regional del usuario</p></td>
<td colspan="3"><p>Salida:</p><p>Interfaz mostrada en idioma español</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p>- Toda la aplicación debe estar traducida al español y utilizar terminología técnica apropiada. El lenguaje debe ser formal, neutro y adaptado al contexto del proyecto, evitando modismos o abreviaturas confusas.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si un texto no está traducido, el sistema mostrará el idioma por defecto (español) y registrará el error.</p><p>- Se debe disponer de una función de corrección rápida de textos en futuras versiones.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p><br /></p><p>- El 100% de los textos deben estar en idioma español.</p><p>- No deben existir palabras en inglés salvo nombres técnicos o de librerías.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF2.4</p></td>
<td colspan="2"><p>Nombre:</p><p>Adaptabilidad</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Usabilidad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>No</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Media</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p>- Guías de diseño responsivo</p><p>- Pruebas de compatibilidad en dispositivos</p><p>- Plantillas de interfaz adaptativa</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Datos del dispositivo (tamaño de pantalla, sistema operativo)</p></td>
<td colspan="3"><p>Salida:</p><p>Interfaz ajustada automáticamente</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- El sistema debe ajustarse de forma automática a las características del dispositivo o pantalla desde donde se accede. Esto incluye adaptar tamaños, fuentes, botones y disposición de elementos para garantizar una visualización adecuada tanto en dispositivos móviles como en equipos de escritorio.</p></td>
</tr>
<tr>
<td colspan="4"><p><br />Manejo de situaciones anormales</p><p><br /></p><p>- Si la resolución del dispositivo no es soportada, el sistema mostrará una advertencia de compatibilidad.</p><p>- En caso de error de visualización, el usuario podrá reajustar manualmente el modo de vista.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- Compatibilidad comprobada en pantallas desde 5” hasta 24”.</p><p>- Todos los elementos visuales se mantienen proporcionales y funcionales.</p></td>
</tr>
</table>


<p><br /><br /></p>

<p>RNF3 Compatibilidad</p>


<table>
<tr>
<td colspan="2"><p>Identificador: RNF3.1</p></td>
<td colspan="2"><p>Nombre:</p><p>Compatibilidad Android</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Compatibilidad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alta</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p>- Especificaciones del SDK Android</p><p>- Reportes de compatibilidad</p><p>- Registro de pruebas en dispositivos reales</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Dispositivo con sistema Android 9 o superior</p></td>
<td colspan="3"><p>Salida:</p><p>Aplicación ejecutándose correctamente</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p>- La aplicación debe funcionar correctamente en dispositivos Android versión 9 o superior, asegurando compatibilidad con las librerías nativas del sistema operativo, sensores y permisos de acceso.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si la versión del sistema operativo es inferior a la requerida, la aplicación mostrará un mensaje informativo y no permitirá la instalación.</p><p>- En caso de incompatibilidad con hardware, el sistema deberá registrar el fallo y notificar al usuario.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- Ejecución exitosa en Android 9, 10, 11, 12, 13 y 14.</p><p>- No deben presentarse cierres inesperados ni errores de permisos.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF3.2</p></td>
<td colspan="2"><p>Nombre:</p><p>Compatibilidad web</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Compatibilidad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alto</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Pruebas de navegador</p><p>- Validaciones HTML y CSS</p><p>- Reportes de compatibilidad multiplataforma</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Acceso desde navegadores actuales</p></td>
<td colspan="3"><p>Salida:</p><p>Interfaz funcional y completa</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- <br />El sistema debe ser completamente funcional desde navegadores modernos, garantizando la correcta ejecución de sus componentes y la compatibilidad con los principales motores de renderizado.</p></td>
</tr>
<tr>
<td colspan="4"><p><br />Manejo de situaciones anormales</p><p>- Si el usuario intenta ingresar desde un navegador obsoleto, se mostrará un mensaje de advertencia.</p><p>- Los errores de compatibilidad deberán registrarse automáticamente en los logs del sistema.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- Compatibilidad total con Chrome, Edge, Firefox y Opera.</p><p>- Las interfaces y funcionalidades deben conservar el mismo comportamiento en todos los navegadores.</p></td>
</tr>
</table>


<p><br /><br /></p>

<p>RNF4 Disponibilidad y confiabilidad</p>


<table>
<tr>
<td colspan="2"><p>Identificador: RNF4.1</p></td>
<td colspan="2"><p>Nombre:</p><p>Disponibilidad</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Disponibilidad y Confiabilidad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alto</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Reportes de uptime</p><p>- Planes de contingencia</p><p>- Monitoreo de red</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Servicios del sistema activos</p></td>
<td colspan="3"><p>Salida:</p><p>Plataforma accesible y estable</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- El sistema debe garantizar un tiempo de disponibilidad mínimo del 99% anual, asegurando acceso continuo a los usuarios incluso durante mantenimientos o actualizaciones menores.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- En caso de caída, el sistema debe redirigir al usuario a una página de mantenimiento informativa.</p><p>- Los eventos de indisponibilidad deben almacenarse en un registro con fecha, duración y causa.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- Disponibilidad ≥ 99% anual.</p><p>- Tiempos de recuperación menores a 15 minutos.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF4.2</p></td>
<td colspan="2"><p>Nombre:</p><p>Persistencia de datos</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Confiabilidad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alta</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Manual de base de datos</p><p>- Políticas de respaldo</p><p>- Pruebas de integridad</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Datos generados por usuarios y el sistema</p></td>
<td colspan="3"><p>Salida:</p><p>Registros almacenados permanentemente</p></td>
</tr>
<tr>
<td colspan="4"><p><br />Descripción:</p><p><br /></p><p>- Los registros, historiales y configuraciones deben almacenarse de forma segura y sin riesgo de pérdida. Se deben aplicar mecanismos de respaldo automático y redundancia de datos.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si ocurre una falla en el almacenamiento, el sistema debe activar el mecanismo de recuperación de respaldo.</p><p>- En caso de error de escritura, se debe notificar automáticamente al administrador.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- Cero pérdidas de datos durante las operaciones normales.</p><p>- Copias de respaldo verificadas diariamente.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF4.3</p></td>
<td colspan="2"><p>Nombre:</p><p>Notificaciones en tiempo real</p></td>
</tr>
<tr>
<td><p>Tipo: Disponibilidad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico? Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo: Alto</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p>- Plan de mensajería</p><p>- Logs de servidor</p><p>- Manual de configuración de alertas</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Eventos del sistema</p></td>
<td colspan="3"><p>Salida:</p><p>Alertas y notificaciones enviadas</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p>- El sistema debe emitir notificaciones instantáneas cuando se produzcan eventos relevantes (alertas, actualizaciones o cambios de estado).</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si un canal de notificación falla, el sistema debe reenviar la alerta por un canal alternativo.</p><p>- Las notificaciones fallidas deben registrarse en la base de datos.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p><br /></p><p>- Tiempo de envío menor a 3 segundos tras el evento.</p><p>- Tasa de entrega superior al 98%.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF4.4</p></td>
<td colspan="2"><p>Nombre</p><p>Recuperación ante fallos</p></td>
</tr>
<tr>
<td><p>Tipo: Disponibilidad y confiabilidad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Sí</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo: Alto</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p>- Protocolos de respaldo.</p><p>- Plan de recuperación ante desastres.</p><p>- Procedimientos de restauración.</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Falla del sistema o interrupción del servicio.</p></td>
<td colspan="3"><p>Salida:</p><p>Recuperación automática y restablecimiento de la operación normal.</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p>- El sistema debe contar con mecanismos automáticos para realizar respaldos periódicos y permitir la restauración rápida en caso de fallos o pérdida de información. Los datos críticos deben preservarse sin corrupción.</p></td>
</tr>
<tr>
<td colspan="4"><p><br />Manejo de situaciones anormales</p><p>- Ante una caída del sistema, debe activarse el proceso de restauración automática y notificar al administrador.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p><br /></p><p>- El tiempo de recuperación no debe superar los 5 minutos.</p><p>- No se debe perder información registrada antes del fallo.</p></td>
</tr>
</table>


<p><br /><br /></p>

<p>RNF5 Seguridad</p>


<table>
<tr>
<td colspan="2"><p>Identificador: RNF5</p></td>
<td colspan="2"><p>Nombre:</p><p>Seguridad general</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Seguridad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alto</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p>- Políticas de seguridad</p><p>- Normas ISO/IEC 27001</p><p>- Registros de auditoría</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Datos de usuario</p></td>
<td colspan="3"><p>Salida:</p><p>Datos protegidos y cifrados</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- El sistema debe cumplir con los lineamientos de privacidad y seguridad establecidos por las normas internacionales, garantizando la confidencialidad, integridad y disponibilidad de la información.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p><br /></p><p>- Si se detecta intento de acceso no autorizado, el sistema debe bloquear la sesión y notificar al administrador.</p><p>- Los incidentes deben registrarse y auditarse según el protocolo de seguridad.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- Todos los datos sensibles viajan cifrados mediante HTTPS/TLS.</p><p>- Acceso autorizado únicamente con credenciales válidas.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF5.1</p></td>
<td colspan="2"><p>Nombre:</p><p>Control de acceso</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Seguridad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alta</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p>- Política de roles</p><p>- Manual de autenticación</p><p>- Registro de accesos y permisos</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Credenciales del usuario</p></td>
<td colspan="3"><p>Salida:</p><p>Permisos de acceso a módulos específicos</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p>- El sistema debe permitir el acceso solo a usuarios con privilegios autorizados. Cada perfil debe tener permisos <br />definidos que limiten las acciones que puede ejecutar dentro de la plataforma.</p></td>
</tr>
<tr>
<td colspan="4"><p><br />Manejo de situaciones anormales</p><p>- Si un usuario intenta acceder a un módulo restringido, se mostrará un mensaje de acceso denegado.</p><p>- Cualquier intento de acceso no permitido debe registrarse automáticamente con hora y dirección IP.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- Validación de acceso en menos de 2 segundos.</p><p>- Todos los accesos y bloqueos quedan auditados.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF5.2</p></td>
<td colspan="2"><p>Nombre:</p><p>Autenticación segura</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Usabilidad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alto</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Esquemas de sesión</p><p>- Manual de inicio y cierre seguro</p><p>- Auditorías de autenticación</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Solicitud de inicio o cierre de sesión</p></td>
<td colspan="3"><p>Salida:</p><p>Sesión iniciada o terminada correctamente</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- Los procesos de autenticación deben proteger la información del usuario mediante cifrado y manejo de tokens de sesión. Al cerrar sesión, los tokens deben invalidar inmediatamente para evitar reutilización no autorizada.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si un token caducó, el sistema cerrará sesión automáticamente.</p><p>- Los intentos de autenticación desde ubicaciones sospechosas se bloquearán temporalmente.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- Tiempo máximo de sesión inactiva: 15 minutos.</p><p>- Sesiones simultáneas desde diferentes IP no permitidas.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF5.3</p></td>
<td colspan="2"><p>Nombre:</p><p>Cifrado de datos</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Seguridad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alto</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Política de seguridad de datos</p><p>- Certificados HTTPS</p><p>- Especificaciones de cifrado AES y SSL/TLS.</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Datos sensibles del usuario.</p></td>
<td colspan="3"><p>Salida:</p><p>Datos cifrados durante transmisión y almacenamiento.</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- Toda la información sensible debe transmitirse bajo protocolos HTTPS y almacenarse cifrada en la base de datos. <br />El cifrado garantizará la confidencialidad e integridad de los datos.</p></td>
</tr>
<tr>
<td colspan="4"><p><br />Manejo de situaciones anormales</p><p>- Si se detecta una transmisión insegura, el sistema debe bloquear la comunicación y registrar el evento.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- Todas las conexiones deben usar HTTPS.</p><p>- La base de datos debe cifrar información sensible con AES-256.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF5.4</p></td>
<td colspan="2"><p>Nombre:</p><p>Copias de seguridad</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Seguridad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alto</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Plan de respaldo y recuperación</p><p>- Configuración de almacenamiento en la nube.</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Datos del sistema y de usuarios.</p></td>
<td colspan="3"><p>Salida:</p><p>Copias de respaldo almacenadas de forma segura.</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- El sistema debe generar respaldos automáticos semanales y mantenerlos cifrados en la nube. Debe garantizar la integridad y recuperación de los datos.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- En caso de pérdida de datos, debe restaurarse la información más reciente del respaldo.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- El respaldo debe realizarse de forma automática cada semana.</p><p>- Los archivos de respaldo deben estar cifrados y accesibles sólo por personal autorizado.</p></td>
</tr>
</table>


<p><br /><br /></p>

<p>RNF6 Gestión y Operación</p>


<table>
<tr>
<td colspan="2"><p>Identificador: RNF6.1</p></td>
<td colspan="2"><p>Nombre:</p><p>Roles y responsabilidades</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Gestión y Operación</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Media</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Manual de operación del sistema</p><p>- Diagrama de roles técnicos</p><p>- Política de gestión de cuentas</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Definición de usuarios y roles</p></td>
<td colspan="3"><p>Salida:</p><p>Responsabilidades asignadas correctamente</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- Los roles del sistema deben estar claramente definidos, estableciendo qué funciones y permisos tiene cada <br />usuario técnico y operativo. Esta estructura permite una gestión segura y organizada del sistema.</p></td>
</tr>
<tr>
<td colspan="4"><p><br />Manejo de situaciones anormales</p><p>- Si un usuario intenta ejecutar una acción fuera de su rol, el sistema la denegará.</p><p>- Se deben generar reportes automáticos de cambios en permisos.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- Todos los usuarios tienen roles definidos.</p><p>- Cambios en roles documentados y auditados.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF6.2</p></td>
<td colspan="2"><p>Nombre:</p><p>Gestión de incidentes</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Gestión y Seguridad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alta</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Plan de contingencia</p><p>- Bitácora de incidentes</p><p>- Procedimiento de respuesta</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Evento inesperado o falla</p></td>
<td colspan="3"><p>Salida:</p><p>Respuesta documentada y controlada</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- Debe existir un plan formal de gestión de incidentes que incluya la identificación, registro, análisis y solución de fallas o vulnerabilidades detectadas en el sistema.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si ocurre un incidente crítico, debe activarse el protocolo de contingencia.</p><p>- Los reportes deben generarse automáticamente con fecha, hora y responsable.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- 100% de los incidentes documentados en menos de 24 horas.</p><p>- Tiempos de respuesta menores a 2 horas para incidentes críticos.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF6.3</p></td>
<td colspan="2"><p>Nombre:</p><p>Mantenibilidad</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Gestión y Desarrollo</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alto</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Manual técnico</p><p>- Historial de versiones</p><p>- Registro de actualizaciones</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Cambios o actualizaciones del sistema</p></td>
<td colspan="3"><p>Salida:</p><p>Sistema actualizado sin afectar operaciones</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- El sistema debe estar diseñado de forma modular y documentada, facilitando actualizaciones, correcciones y <br />mejoras sin afectar el funcionamiento general.</p></td>
</tr>
<tr>
<td colspan="4"><p><br />Manejo de situaciones anormales</p><p>- Si una actualización causa error, debe existir la opción de reversión inmediata.</p><p>- Se registrarán todas las modificaciones realizadas al código.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- Actualizaciones implementadas sin interrupciones.</p><p>- Documentación técnica actualizada tras cada cambio.</p></td>
</tr>
</table>




<p><br /></p>

<p>RNF7 Portabilidad y Accesibilidad</p>


<table>
<tr>
<td colspan="2"><p>Identificador: RNF7.1</p></td>
<td colspan="2"><p>Nombre:</p><p>Portabilidad</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Portabilidad y Accesibilidad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>No</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Medio</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Guías de migración</p><p>- Documentación de compatibilidad.</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Configuraciones del sistema actual.</p></td>
<td colspan="3"><p>Salida:</p><p>Migración exitosa a otro entorno.</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- El sistema debe poder migrar a otras plataformas o entornos con un mínimo esfuerzo de configuración y sin pérdida de datos.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si ocurre un error durante la migración, el sistema debe revertir los cambios y registrar el evento.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- La migración no debe requerir más del 10% de reconfiguración manual.</p><p>- No debe perderse información durante el proceso.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF7.2</p></td>
<td colspan="2"><p>Nombre:</p><p>Accesibilidad</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Portabilidad y Accesibilidad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Sí</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alta</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Normas WCAG 2.1</p><p>- Manual de accesibilidad</p><p>- Guía de diseño inclusivo</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Interacción del usuario con discapacidad.</p></td>
<td colspan="3"><p>Salida:</p><p>Interfaz accesible y funcional.</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- <br />La interfaz debe cumplir con las normas WCAG 2.1 para garantizar el acceso a usuarios con discapacidad visual o auditiva.</p></td>
</tr>
<tr>
<td colspan="4"><p><br />Manejo de situaciones anormales</p><p>- Si se detectan barreras de accesibilidad, deben corregirse antes del despliegue.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- El sistema debe ser navegable mediante teclado.</p><p>- Los elementos visuales deben incluir texto alternativo.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF7.3</p></td>
<td colspan="2"><p>Nombre:</p><p>Multiplataforma</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Portabilidad y Accesibilidad</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Sí</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alta</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Pruebas de compatibilidad</p><p>- Reportes de ejecución multiplataforma.</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Aplicación ejecutada en distintos dispositivos.</p></td>
<td colspan="3"><p>Salida:</p><p>Funcionamiento consistente en todos los entornos.</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- El sistema debe operar correctamente en dispositivos móviles, tablets y equipos de escritorio sin pérdida de funcionalidad.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si se detecta un fallo en un entorno, debe corregirse antes de la siguiente versión.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- El sistema debe adaptarse automáticamente a la resolución del dispositivo.</p><p>- Todas las funciones deben ser iguales en web y móvil.</p></td>
</tr>
</table>


<p><br /><br /><br />RNF8 Sostenibilidad y Cumplimiento Normativo</p>


<table>
<tr>
<td colspan="2"><p>Identificador: RNF8.1</p></td>
<td colspan="2"><p>Nombre:</p><p>Eficiencia energética</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Sostenibilidad y Cumplimiento Normativo</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>No</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Media</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Reportes de consumo de recursos</p><p>- Métricas de rendimiento energético.</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Procesos en ejecución en segundo plano.</p></td>
<td colspan="3"><p>Salida:</p><p>Uso optimizado de CPU y memoria.</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- El software debe minimizar el consumo de recursos en segundo plano, favoreciendo el ahorro <br />energético.</p></td>
</tr>
<tr>
<td colspan="4"><p><br />Manejo de situaciones anormales</p><p>- Si el consumo excede los límites esperados, el sistema debe reducir tareas no esenciales.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- El uso de CPU en segundo plano no debe superar el 15%.</p><p>- Las tareas inactivas deben suspenderse automáticamente.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF8.2</p></td>
<td colspan="2"><p>Nombre:</p><p>Cumplimiento normativo</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Sostenibilidad y Cumplimiento Normativo</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Sí</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alta</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Ley 1581 de 2012</p><p>- Política de protección de datos</p><p>- Manual de cumplimiento legal.</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Datos personales de usuarios.</p></td>
<td colspan="3"><p>Salida:</p><p>Tratamiento legal y seguro de la información.</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- El sistema debe cumplir con la Ley 1581 de 2012 sobre protección de datos personales en Colombia y con los reglamentos aplicables.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si se detecta un incumplimiento, el sistema debe detener la operación relacionada y generar alerta al responsable.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- Todo tratamiento de datos debe contar con el consentimiento del usuario.</p><p>- Debe existir registro actualizado de políticas de privacidad.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF8.3</p></td>
<td colspan="2"><p>Nombre:</p><p>Auditoría</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Sostenibilidad y Cumplimiento Normativo</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Sí</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alta</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Logs del sistema</p><p>- Registro de auditorías</p><p>- Manual de seguridad de información.</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Operaciones críticas realizadas por el sistema.</p></td>
<td colspan="3"><p>Salida:</p><p>Registro detallado de eventos.</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- El sistema debe mantener registros detallados de las operaciones críticas, accesos y modificaciones para auditorías futuras.</p></td>
</tr>
<tr>
<td colspan="4"><p><br />Manejo de situaciones anormales</p><p>- En caso de fallo en el registro, debe activarse un respaldo alternativo.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- Todos los eventos críticos deben registrarse automáticamente.</p><p>- Los registros deben conservarse por mínimo un año.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF8.4</p></td>
<td colspan="2"><p>Nombre:</p><p>Monitoreo del rendimiento</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Sostenibilidad y Cumplimiento Normativo</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p></td>
<td><p>¿Crítico?</p><p>Sí</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alta</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p><br /></p><p>- Herramientas de monitoreo</p><p>- Reportes automáticos de desempeño.</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Datos operativos del sistema.</p></td>
<td colspan="3"><p>Salida:</p><p>Métricas de desempeño actualizadas.</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- Deben existir métricas automáticas que evalúen continuamente el rendimiento del sistema para prevenir degradaciones.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si se detecta un descenso del rendimiento, debe generarse alerta automática al administrador.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- El monitoreo debe ejecutarse en tiempo real.</p><p>- Las métricas deben almacenarse para análisis histórico.</p></td>
</tr>
</table>








<p>RNF9 Requerimientos técnicos</p>


<table>
<tr>
<td colspan="2"><p>Identificador: RNF 9.1</p></td>
<td colspan="2"><p>Nombre:</p><p>Visualización responsiva</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Requerimiento técnico</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p><p>Interfaces de usuario</p></td>
<td><p>¿Crítico? Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo: Alto</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p>- Guía de diseño responsive</p><p>- Mockups de interfaz</p><p>- Prototipos UI</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Resolución y orientación del dispositivo</p></td>
<td colspan="3"><p>Salida:</p><p>Interfaz adaptada correctamente</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p>- El sistema debe adaptar automáticamente la interfaz de usuario a diferentes tamaños de pantalla y resoluciones, garantizando una correcta visualización y usabilidad en dispositivos móviles, tablets y equipos de escritorio.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si la resolución no es soportada, el sistema debe ajustar el diseño al formato más cercano disponible.</p><p>- En caso de error de renderizado, se debe recargar la interfaz sin pérdida de información.</p></td>
</tr>
<tr>
<td colspan="4"><p><br />Criterios de aceptación</p><p>- La interfaz se visualiza correctamente en distintos tamaños de pantalla.</p><p>- No se presentan desbordamientos ni elementos ocultos.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF9.2</p></td>
<td colspan="2"><p>Nombre:</p><p>Soporte técnico</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Requerimiento técnico</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p><p>Módulos de operación y mantenimiento</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Media</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p>- Manual de soporte técnico</p><p>- Registro de incidencias</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Solicitud de soporte o incidencia reportada</p></td>
<td colspan="3"><p>Salida:</p><p>Registro y estado de la solicitud</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p>
<table>
<tr>
<td></td>
</tr>
</table>

<table>
<tr>
<td><p>- El sistema debe permitir la gestión de solicitudes de soporte técnico relacionadas con el funcionamiento de la aplicación o los dispositivos IoT asociados.</p></td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si la solicitud no puede procesarse, el sistema debe notificar al usuario.</p><p>- Las solicitudes duplicadas deben agruparse automáticamente.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- Las solicitudes de soporte quedan registradas correctamente.</p><p>- El estado de cada solicitud puede ser consultado.</p></td>
</tr>
</table>





<table>
<tr>
<td colspan="2"><p>Identificador: RNF9.3</p></td>
<td colspan="2"><p>Nombre:</p><p>Mantenimiento técnico</p></td>
</tr>
<tr>
<td><p>Tipo:</p><p>Requerimiento técnico</p></td>
<td colspan="2"><p>Requerimiento que lo utiliza o especializa:</p><p>Infraestructura y backend del sistema</p></td>
<td><p>¿Crítico?</p><p>Si</p></td>
</tr>
<tr>
<td><p>Prioridad de desarrollo:</p><p>Alta</p></td>
<td colspan="3"><p>Documentos de visualización asociados:</p><p>- Plan de mantenimiento</p><p>- Bitácora de cambios</p></td>
</tr>
<tr>
<td><p>Entrada:</p><p>Solicitud de mantenimiento o actualización</p></td>
<td colspan="3"><p>Salida:</p><p>Sistema actualizado y operativo</p></td>
</tr>
<tr>
<td colspan="4"><p>Descripción:</p><p>- El sistema debe permitir realizar tareas de mantenimiento técnico, correcciones y actualizaciones sin afectar la disponibilidad ni el funcionamiento normal del servicio.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si una actualización falla, el sistema debe restaurar la versión anterior.</p><p>- Se debe registrar cualquier error ocurrido durante el mantenimiento.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- El sistema permanece disponible durante el mantenimiento.</p><p>- No se presenta pérdida de datos.</p></td>
</tr>
</table>










1. Requisitos de Casos de Uso.

  1. Diagrama UML de casos de uso.

<p><strong>RF1. Ingreso, autenticación y seguridad Usuarios</strong></p>

<p><img src="SRS (1)(Antiguo)_assets/image-01.jpg" alt="Imagen 1" /></p>

































<p><strong>RF2. Vincular dispositivos</strong></p>

<p><img src="SRS (1)(Antiguo)_assets/image-02.jpg" alt="Imagen 2" /></p>















<p><strong><br />RF3. Implementación de nuevo proyecto (hogar)</strong><img src="SRS (1)(Antiguo)_assets/image-03.jpg" alt="Imagen 3" /></p>





















<p><strong>RF4. Configuraciones del sistema</strong></p>

<p><img src="SRS (1)(Antiguo)_assets/image-04.jpg" alt="Imagen 4" /></p>





















<p><strong>RF5. Consultas y/o Reportes PDF y EXCEL</strong></p>

<p><br /><img src="SRS (1)(Antiguo)_assets/image-05.jpg" alt="Imagen 5" /></p>



































  1. <strong>Caracterización de Caso de Uso</strong>




<table>
<tr>
<td></td>
<td colspan="3"><p><strong>Caso de </strong><strong>Uso  </strong><strong>N</strong><strong>°</strong><strong> 1</strong></p></td>
<td colspan="3"></td>
</tr>
<tr>
<td><p><strong>Nombre</strong></p></td>
<td colspan="6"><p>Registrarse</p></td>
</tr>
<tr>
<td><p><strong>Descripción</strong></p></td>
<td colspan="6"><p>La aplicación mostrará un formulario donde se registran los datos del usuario para permitir el acceso al sistema.</p></td>
</tr>
<tr>
<td><p><strong>Prioridad</strong></p></td>
<td colspan="6"><p>Alta</p></td>
</tr>
<tr>
<td><p><strong>Precondición</strong></p></td>
<td colspan="6"><p>El usuario deberá registrarse con un correo y una contraseña.</p></td>
</tr>
<tr>
<td rowspan="6"><p><strong>Secuencia normal</strong></p></td>
<td rowspan="6"></td>
<td><p><strong>Paso</strong></p></td>
<td colspan="2"><p><strong>Acción</strong></p></td>
<td><p><strong>Sistema</strong></p></td>
<td rowspan="6"></td>
</tr>
<tr>
<td><p><strong>1</strong></p></td>
<td colspan="2"><p>El usuario ingresa el nombre</p></td>
<td><p>El sistema solicita los datos personales (nombre, correo electrónico)</p></td>
</tr>
<tr>
<td><p><strong>2</strong></p></td>
<td colspan="2"><p>El usuario ingresa el login</p></td>
<td><p>El sistema valida que el login no exista</p></td>
</tr>
<tr>
<td><p><strong>3</strong></p></td>
<td colspan="2"><p>El usuario ingresa una contraseña</p></td>
<td><p>El sistema valida las reglas de seguridad</p></td>
</tr>
<tr>
<td><p><strong>4</strong></p></td>
<td colspan="2"><p>Almacenar información</p></td>
<td><p>El sistema guarda la información en la base de datos</p></td>
</tr>
<tr>
<td><p><strong>5</strong></p></td>
<td colspan="2"><p>Mostrar información</p></td>
<td><p>El sistema muestra la información del usuario</p></td>
</tr>
</table>





<table>
<tr>
<td><p><strong>Postcondición</strong></p></td>
<td colspan="4"><p>Si los datos del formulario de inicio de sesión son correctos, el usuario accede a la pantalla de inicio del aplicativo.</p></td>
</tr>
<tr>
<td rowspan="3"><p><strong>Excepciones </strong></p><p><strong>(flujo alterno)</strong></p></td>
<td colspan="4"></td>
</tr>
<tr>
<td rowspan="2"></td>
<td><p><strong>P</strong><strong>a</strong><strong>so</strong></p></td>
<td><p><strong>Acción</strong></p></td>
<td rowspan="2"></td>
</tr>
<tr>
<td><p><strong>1</strong></p></td>
<td><p>El usuario ingresa un dato incorrecto</p></td>
</tr>
<tr>
<td><p><strong>Actores</strong></p></td>
<td colspan="4"><p>Usuario, Sistema</p></td>
</tr>
<tr>
<td><p><strong>Comentarios</strong></p></td>
<td colspan="4"></td>
</tr>
</table>







<table>
<tr>
<td></td>
<td colspan="3"><p><strong>Caso de Uso </strong><strong>N°</strong><strong> 2</strong></p></td>
<td colspan="2"></td>
</tr>
<tr>
<td><p><strong>Nombre</strong></p></td>
<td colspan="5"><p>Vincular dispositivos</p></td>
</tr>
<tr>
<td><p><strong>Descripción</strong></p></td>
<td colspan="5"><p>Permite al usuario registrar nuevos dispositivos</p></td>
</tr>
<tr>
<td><p><strong>Prioridad</strong></p></td>
<td colspan="5"><p>Alta</p></td>
</tr>
<tr>
<td><p><strong>Precondición</strong></p></td>
<td colspan="5"><p>El usuario debe tener al menos un dispositivo para registrar.</p></td>
</tr>
<tr>
<td rowspan="4"><p><strong>Secuencia normal</strong></p></td>
<td rowspan="4"></td>
<td><p><strong>Paso</strong></p></td>
<td><p><strong>Acción</strong></p></td>
<td><p><strong>Sistema</strong></p></td>
<td rowspan="4"></td>
</tr>
<tr>
<td><p><strong>1</strong></p></td>
<td><p>El usuario registra un nuevo dispositivo</p></td>
<td><p>Agrega el dispositivo registrado</p></td>
</tr>
<tr>
<td><p><strong>2</strong></p></td>
<td><p>El usuario configura el dispositivo</p></td>
<td><p>El sistema guarda los cambios temporalmente</p></td>
</tr>
<tr>
<td><p><strong>3</strong></p></td>
<td><p>El usuario solicita guardar los cambios</p></td>
<td><p>El sistema los guarda</p></td>
</tr>
</table>





<table>
<tr>
<td><p><strong><br />Postcondición</strong></p></td>
<td colspan="4"><p>El usuario queda autenticado y con sesión activa.</p></td>
</tr>
<tr>
<td rowspan="4"><p><strong>Excepciones (flujo alterno)</strong></p></td>
<td colspan="4"></td>
</tr>
<tr>
<td rowspan="3"></td>
<td><p>Paso</p></td>
<td><p>Acción</p></td>
<td rowspan="3"></td>
</tr>
<tr>
<td><p>1</p></td>
<td><p>Credenciales incorrectas</p></td>
</tr>
<tr>
<td><p>2</p></td>
<td><p>El sistema muestra mensaje de error</p></td>
</tr>
<tr>
<td><p><strong>Actores</strong></p></td>
<td colspan="4"><p>Usuario, Sistema</p></td>
</tr>
<tr>
<td><p><strong>Comentarios</strong></p></td>
<td colspan="4"></td>
</tr>
</table>







<table>
<tr>
<td></td>
<td colspan="3"><p><strong>Caso de Uso </strong><strong>N°</strong><strong> 3</strong></p></td>
<td colspan="3"></td>
</tr>
<tr>
<td><p><strong>Nombre</strong></p></td>
<td colspan="6"><p>Implementación de nuevo proyecto</p></td>
</tr>
<tr>
<td><p><strong>Descripción</strong></p></td>
<td colspan="6"><p>Permite al usuario agregar una nueva casa para asignarle los dispositivos.</p></td>
</tr>
<tr>
<td><p><strong>Prioridad</strong></p></td>
<td colspan="6"><p>Media</p></td>
</tr>
<tr>
<td><p><strong>Precondición</strong></p></td>
<td colspan="6"><p>El usuario debe estar registrado</p></td>
</tr>
<tr>
<td rowspan="5"><p><strong>Secuencia normal</strong></p></td>
<td rowspan="5"></td>
<td><p><strong>Paso</strong></p></td>
<td colspan="2"><p><strong>Acción</strong></p></td>
<td><p><strong>Sistema</strong></p></td>
<td rowspan="5"></td>
</tr>
<tr>
<td><p><strong>1</strong></p></td>
<td colspan="2"><p>El usuario crea el proyecto</p></td>
<td><p>El sistema lo guarda</p></td>
</tr>
<tr>
<td><p><strong>2</strong></p></td>
<td colspan="2"><p>El usuario asigna los dispositivos al proyecto</p></td>
<td><p>El sistema lo aplica</p></td>
</tr>
<tr>
<td><p><strong>3</strong></p></td>
<td colspan="2"><p>El usuario configura el proyecto</p></td>
<td><p>El sistema guarda las configuraciones realizadas</p></td>
</tr>
<tr>
<td><p><strong>4</strong></p></td>
<td colspan="2"><p>EL usuario asigna nuevos usuarios y sus permisos correspondientes</p></td>
<td><p>El sistema busca y guarda los usuarios junto a sus permisos</p></td>
</tr>
</table>





<table>
<tr>
<td><p><strong>Postcondición</strong></p></td>
<td colspan="4"><p>Registrar los dispositivos de antemano.</p></td>
</tr>
<tr>
<td rowspan="4"><p><strong>Excepciones (flujo alterno)</strong></p></td>
<td colspan="4"></td>
</tr>
<tr>
<td rowspan="3"></td>
<td><p><strong>Paso</strong></p></td>
<td><p><strong>Acción</strong></p></td>
<td rowspan="3"></td>
</tr>
<tr>
<td><p><strong>1</strong></p></td>
<td><p>Correo no registrado</p></td>
</tr>
<tr>
<td><p><strong>2</strong></p></td>
<td><p>El sistema muestra mensaje de error</p></td>
</tr>
<tr>
<td><p><strong>Actores</strong></p></td>
<td colspan="4"><p>Usuario</p></td>
</tr>
<tr>
<td><p><strong>Comentarios</strong></p></td>
<td colspan="4"></td>
</tr>
</table>









<table>
<tr>
<td></td>
<td colspan="2"><p><strong>Caso de Uso </strong><strong>N°</strong><strong> 4</strong></p></td>
<td colspan="2"></td>
</tr>
<tr>
<td><p><strong>Nombre</strong></p></td>
<td colspan="4"><p>Configuraciones del sistema</p></td>
</tr>
<tr>
<td><p><strong>Descripción</strong></p></td>
<td colspan="4"><p>Permite al usuario configurar el sistema a su gusto.</p></td>
</tr>
<tr>
<td><p><strong>Prioridad</strong></p></td>
<td colspan="4"><p>Alta</p></td>
</tr>
<tr>
<td><p><strong>Precondición</strong></p></td>
<td colspan="4"><p>Usuario autenticado.</p></td>
</tr>
<tr>
<td rowspan="5"><p><strong>Secuencia normal</strong></p></td>
<td><p><strong>Paso</strong></p></td>
<td colspan="2"><p><strong>Acción</strong></p></td>
<td><p><strong>Sistema</strong></p></td>
</tr>
<tr>
<td><p><strong>1</strong></p></td>
<td colspan="2"><p>El usuario ingresa a las configuraciones</p></td>
<td rowspan="3"><p>El sistema guarda y aplica los cambios al sistema (y si es necesario actualizar se avisa)</p></td>
</tr>
<tr>
<td><p><strong>2</strong></p></td>
<td colspan="2"><p>El usuario cambia la estética (Color, idioma, moneda)</p></td>
</tr>
<tr>
<td><p><strong>3</strong></p></td>
<td colspan="2"><p>El usuario configura las alertas</p></td>
</tr>
<tr>
<td><p><strong>4</strong></p></td>
<td colspan="2"><p>El usuario ve los controles de auditoria</p></td>
<td><p>El sistema le da acceso para verlo</p></td>
</tr>
</table>





<table>
<tr>
<td><p><strong>Postcondición</strong></p></td>
<td colspan="4"><p>Registrar los dispositivos de antemano.</p></td>
</tr>
<tr>
<td rowspan="4"><p><strong>Excepciones (flujo alterno)</strong></p></td>
<td colspan="4"></td>
</tr>
<tr>
<td rowspan="3"></td>
<td><p><strong>Paso</strong></p></td>
<td><p><strong>Acción</strong></p></td>
<td rowspan="3"></td>
</tr>
<tr>
<td><p><strong>1</strong></p></td>
<td><p>Correo no registrado</p></td>
</tr>
<tr>
<td><p><strong>2</strong></p></td>
<td><p>El sistema muestra mensaje de error</p></td>
</tr>
<tr>
<td><p><strong>Actores</strong></p></td>
<td colspan="4"><p>Usuario</p></td>
</tr>
<tr>
<td><p><strong>Comentarios</strong></p></td>
<td colspan="4"></td>
</tr>
</table>















<table>
<tr>
<td></td>
<td colspan="2"><p><strong>Caso de Uso </strong><strong>N°</strong><strong> </strong><strong>5</strong></p></td>
<td colspan="2"></td>
</tr>
<tr>
<td><p><strong>Nombre</strong></p></td>
<td colspan="4"><p>Consultas y/o Reportes (PDF y Exel)</p></td>
</tr>
<tr>
<td><p><strong>Descripción</strong></p></td>
<td colspan="4"><p>Permite al usuario consultar y ver los reportes que a generado.</p></td>
</tr>
<tr>
<td><p><strong>Prioridad</strong></p></td>
<td colspan="4"><p>Baja</p></td>
</tr>
<tr>
<td><p><strong>Precondición</strong></p></td>
<td colspan="4"></td>
</tr>
<tr>
<td rowspan="5"><p><strong>Secuencia normal</strong></p></td>
<td><p><strong>Paso</strong></p></td>
<td colspan="2"><p><strong>Acción</strong></p></td>
<td><p><strong>Sistema</strong></p></td>
</tr>
<tr>
<td><p><strong>1</strong></p></td>
<td colspan="2"></td>
<td></td>
</tr>
<tr>
<td><p><strong>2</strong></p></td>
<td colspan="2"></td>
<td></td>
</tr>
<tr>
<td><p><strong>3</strong></p></td>
<td colspan="2"></td>
<td></td>
</tr>
<tr>
<td><p><strong>4</strong></p></td>
<td colspan="2"></td>
<td></td>
</tr>
</table>





<table>
<tr>
<td><p><strong>Postcondición</strong></p></td>
<td colspan="4"><p>Registrar los dispositivos de antemano.</p></td>
</tr>
<tr>
<td rowspan="4"><p><strong>Excepciones (flujo alterno)</strong></p></td>
<td colspan="4"></td>
</tr>
<tr>
<td rowspan="3"></td>
<td><p><strong>Paso</strong></p></td>
<td><p><strong>Acción</strong></p></td>
<td rowspan="3"></td>
</tr>
<tr>
<td><p><strong>1</strong></p></td>
<td><p>Correo no registrado</p></td>
</tr>
<tr>
<td><p><strong>2</strong></p></td>
<td><p>El sistema muestra mensaje de error</p></td>
</tr>
<tr>
<td><p><strong>Actores</strong></p></td>
<td colspan="4"><p>Usuario</p></td>
</tr>
<tr>
<td><p><strong>Comentarios</strong></p></td>
<td colspan="4"></td>
</tr>
</table>




## Encabezados y pies de página del DOCX

<p>PAGE 10</p>
