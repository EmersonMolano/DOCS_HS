> **Documento histórico.** Conversión de [SRS v1.1.docx](<SRS v1.1.docx>); se conserva su contenido fuente sin actualizarlo.

<h3>ESPECIFICACIÓN DE REQUISITOS DE SOFTWARE</h3>











<p><strong>PROYECTO: Hidro Smart</strong></p>











<p><strong>INTEGRANTES:</strong></p>





<p><strong>Emerson Calet Molano Cardozo </strong></p>

<p><strong>José David Amaya Mosquera</strong></p>

<p><strong>José Alejandro Montealegre Rodríguez</strong></p>













<p><strong>INSTRUCTOR:</strong></p>

<p><strong>MOTTA VARGAS JOSÉ DE JESÚS</strong></p>















<p><strong>SERVICIO NACIONAL DE APRENDIZAJE – SENA PROGRAMACIÓN DE SOFTWARE – 3145555</strong></p>











<h4>2025</h4>

<p>Tabla de contenido</p>

1. <a href="#_heading=h.1ff5uocd5h7x">Introducción&emsp;</a>3

  1. <a href="#_heading=h.64tpyoh4vl8e">Planteamiento del problema&emsp;</a>3

  1. <a href="#_heading=h.az8byui75hbc">Propósito&emsp;</a>4

  1. <a href="#_heading=h.2baetvikd7d5">Justificación&emsp;</a>4

  1. <a href="#_heading=h.73dutj5b9ost">Objetivo General&emsp;</a>4

    1. <a href="#_heading=h.9bjg4lucef5q">Objetivos específicos&emsp;</a>4

  1. <a href="#_heading=h.bdphss51rc7q">Alcance&emsp;5</a>

  1. <a href="#_heading=h.mbyr8ybdajl">Personal involucrado&emsp;</a>6

  1. <a href="#_heading=h.7e5q3vwtr1e4">Definiciones, acrónimos y abreviaturas&emsp;</a>7

  1. <a href="#_heading=h.tvm5948kydjj">Referencias&emsp;</a>8

  1. <a href="#_heading=h.4i2xyer3qvtd">Resumen&emsp;</a>8

1. <a href="#_heading=h.5d2t5vn6dy3i">Descripción General&emsp;</a>9

  1. <a href="#_heading=h.u5iou7pdmi58">Perspectiva del producto&emsp;</a>6

  1. <a href="#_heading=h.u6w1l6wawagu">Características de los usuarios&emsp;</a>9

  1. <a href="#_heading=h.zd1myf5lrfoe">Restricciones&emsp;</a>10

  1. <a href="#_heading=h.2a1v3ucevhdr">Suposiciones y dependencias&emsp;</a>10

1. <a href="#_heading=h.qivl7yk49ghy">Requisitos Específicos&emsp;</a>11

  1. <a href="#_heading=h.3155viaud0q2">Requisitos comunes de las interfaces&emsp;</a>11

    1. <a href="#_heading=h.dy897w6hf21i">Interfaces de usuario&emsp;</a>11

    1. <a href="#_heading=h.pu4nc565rw3v">Interfaces de hardware&emsp;</a>11

    1. <a href="#_heading=h.b47s13nolil">Interfaces de software&emsp;</a>12

    1. <a href="#_heading=h.g45wdcaaanor">Interfaces de comunicación&emsp;</a>13

  1. <a href="#_heading=h.rug4oh5bvdno">Requerimientos Funcionales&emsp;</a>14

  1. <a href="#_heading=h.596x1akjv5xz">Requerimientos No Funcionales&emsp;</a>49

1. <a href="#_heading=h.z13l97d05ozz">Requisitos de Casos de Uso&emsp;</a>67

  1. <a href="#_heading=h.5nlt3vruay0g">Diagrama UML de casos de Uso&emsp;</a>67

  1. Caracterización de Casos de Uso&emsp;67

<h1>Introducción.</h1>



<p><strong>Bienvenidos </strong></p>

<p>El consumo eficiente y responsable del agua es uno de los principales desafíos ambientales y sociales en los hogares modernos. En Colombia, gran parte de la población desconoce cuánta agua utiliza diariamente y en qué actividades específicas se gasta. La ausencia de información detallada en las facturas y las limitaciones de los medidores tradicionales impiden que los usuarios tomen decisiones informadas sobre su consumo.</p>

<p>Según datos de la <em>Personería de Bogotá (2024)</em>, hasta un <strong>40 % del agua potable</strong> se pierde en la capital, y a nivel nacional, la cifra asciende al <strong>48 %</strong> (<em>Universidad de los Andes, 2024</em>). Esta situación demuestra la necesidad urgente de soluciones tecnológicas que faciliten el monitoreo, control y análisis del consumo doméstico.</p>

<p><strong>Hidro Smart</strong> surge como una solución innovadora orientada al desarrollo sostenible. Se trata de un sistema inteligente que combina <strong>tecnología IoT (Internet of Things)</strong> con una <strong>aplicación móvil</strong>, permitiendo a los usuarios monitorear su consumo de agua en tiempo real, recibir alertas, analizar estadísticas y adoptar hábitos más conscientes. El propósito es optimizar el uso del recurso hídrico, reducir el desperdicio y contribuir a la sostenibilidad ambiental desde el hogar.</p>





<h2>Planteamiento del problema.</h2>



<p>En la mayoría de los hogares colombianos no se dispone de herramientas que permitan identificar cómo, cuándo y en qué se consume el agua. Los medidores convencionales solo registran el total mensual, sin ofrecer un desglose detallado por actividad (ducha, lavado, cocina, aseo, etc.).</p>

<p>Esta falta de información provoca desperdicio, costos elevados y un bajo nivel de conciencia sobre el impacto ambiental del consumo doméstico.</p>

<p>Por tanto, se plantea la siguiente pregunta de investigación:</p>

<p><strong>¿Cómo puede una solución tecnológica basada en medidores inteligentes e integración móvil ayudar a los usuarios domésticos a conocer, controlar y optimizar su consumo de agua diario para reducir el desperdicio?</strong></p>

<h2>Propósito.</h2>

<p>El propósito del proyecto <strong>Hidro Smart</strong> es diseñar e implementar una herramienta tecnológica integral que permita <strong>registrar, analizar y visualizar el consumo de agua</strong> en los hogares de manera automática y detallada. La aplicación móvil recibirá datos desde medidores inteligentes conectados por IoT, mostrando estadísticas, recomendaciones y reportes que ayuden a los usuarios a mejorar sus hábitos de consumo.</p>

<p>El sistema busca promover el ahorro, la sostenibilidad ambiental y el uso consciente del recurso hídrico, contribuyendo a la gestión eficiente del agua a nivel doméstico.</p>



<h2>Justificación.</h2>

<p>En Colombia, el desperdicio de agua continúa siendo un problema significativo. Se estima que <strong>solo el 33 % de los ciudadanos adopta prácticas de ahorro hídrico</strong> (<em>DANE, 2024</em>). La falta de conocimiento sobre el consumo real en el hogar impide implementar medidas efectivas para reducir el uso innecesario del recurso.</p>

<p><strong>Hidro Smart</strong> busca cerrar esta brecha mediante una solución tecnológica accesible y funcional. Al integrar sensores de flujo, conectividad IoT y una interfaz móvil intuitiva, el sistema ofrece al usuario información en tiempo real sobre su consumo, alertas ante anomalías y recomendaciones personalizadas para optimizar el uso del agua.</p>

<p>El proyecto no solo tiene un impacto ecológico, sino también <strong>económico y educativo</strong>, al incentivar una cultura de sostenibilidad y responsabilidad ambiental en los hogares.</p>







<h2>Objetivo General.</h2>

<p>Diseñar e implementar una solución tecnológica compuesta por un <strong>medidor inteligente de agua</strong> y una <strong>aplicación móvil</strong> que permita a los usuarios monitorear, controlar y optimizar su consumo diario, proporcionando información detallada, alertas preventivas y estrategias prácticas para fomentar el uso responsable del agua.</p>



<h3>Objetivos específicos.</h3>



- Desarrollar una <strong>aplicación móvil</strong> que muestre los datos recibidos desde un medidor inteligente en tiempo real.<br />

- Registrar, procesar y clasificar el consumo de agua por actividad doméstica.<br />

- Generar <strong>informes y gráficos periódicos</strong> para que el usuario evalúe sus patrones de consumo.<br />

- Proporcionar <strong>alertas y recomendaciones</strong> para reducir el desperdicio.

- Implementar un sistema de metas y presupuesto mensual que permita al usuario establecer objetivos de ahorro.



- <strong>Desarrollar herramientas de gestión del consumo</strong>, como metas de ahorro, presupuesto mensual y modo vacaciones, que promuevan el uso eficiente del agua.



- <strong>Implementar mecanismos de administración y monitoreo de dispositivos IoT</strong>, permitiendo su registro, calibración, configuración, suspensión, reactivación y consulta del historial de conectividad.



- <strong>Incorporar un sistema de soporte técnico basado en tickets</strong>, que facilite la atención, seguimiento y resolución de incidencias reportadas por los usuarios.



- <strong>Garantizar la seguridad, disponibilidad y confiabilidad del sistema</strong>, mediante mecanismos de autenticación segura, control de acceso, auditoría, cifrado de datos y tolerancia a fallos.<br />

- Evaluar el rendimiento y la usabilidad del sistema durante su implementación piloto.





<p><strong>1.5 Alcance</strong></p>

<p>Este documento de Especificación de Requisitos de Software (SRS) define los requerimientos funcionales y no funcionales del sistema <strong>Hidro Smart</strong>, una solución tecnológica orientada al monitoreo, análisis y gestión inteligente del consumo doméstico de agua mediante dispositivos IoT y una aplicación web desarrollada con <strong>React + Vite</strong>.</p>

<p>El alcance del proyecto comprende los siguientes aspectos:</p>

- Diseño, desarrollo, implementación y validación de una plataforma para el monitoreo inteligente del consumo doméstico de agua.



- Integración con dispositivos IoT para la captura y transmisión de datos de consumo en tiempo real mediante el protocolo MQTT.<strong><br /></strong>

- Visualización en tiempo real del consumo de agua, estado de los dispositivos y estadísticas mediante una interfaz web desarrollada con React + Vite.<br />

- Gestión de usuarios, autenticación segura, administración de perfiles y control de acceso basado en roles.<br />

- Administración de hogares, dispositivos IoT y configuraciones asociadas a cada usuario.

- Configuración de límites de consumo, generación de alertas automáticas y detección de posibles fugas de agua.

- Generación de reportes estadísticos, gráficos comparativos e historial de consumo.

- Gestión de metas de ahorro, presupuestos mensuales y configuración del modo vacaciones.

- Administración del historial de conectividad de los dispositivos IoT para facilitar tareas de monitoreo y diagnóstico.

- Implementación de un sistema de soporte técnico basado en tickets para el reporte y seguimiento de incidencias.

- Desarrollo del backend utilizando <strong>Node.js</strong> y <strong>Express</strong>, con <strong>PostgreSQL</strong> como sistema gestor de bases de datos, <strong>Redis</strong> para el procesamiento asíncrono y <strong>Firebase Cloud Messaging</strong> para el envío de notificaciones.

- Implementación de una arquitectura de <strong>Microservicios</strong>, utilizando <strong>Arquitectura Hexagonal (Ports and Adapters)</strong> para el backend y <strong>Arquitectura Basada en Componentes (Component-Based Architecture)</strong> para el frontend desarrollado con <strong>React + Vite</strong>.

- Comunicación entre los diferentes componentes del sistema mediante <strong>API REST</strong>, <strong>WebSockets</strong> y el protocolo <strong>MQTT</strong>, garantizando una comunicación eficiente y en tiempo real.

- Diseño del sistema bajo principios de escalabilidad, mantenibilidad, seguridad, disponibilidad y facilidad de integración con futuros servicios.<br />

<p>El sistema no incluirá inicialmente integración con redes externas de servicios públicos, pero quedará preparado para futuras extensiones.</p>





<h2>Personal involucrado.</h2>




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


<h2>Definiciones, acrónimos y abreviaturas.</h2>




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
<tr>
<td><p><strong>IoT</strong></p></td>
<td><p>Internet of Things: red de dispositivos físicos (sensores) conectados a internet.</p></td>
</tr>
<tr>
<td><p><strong>ESP32</strong></p></td>
<td><p>Microcontrolador con Wi-Fi y Bluetooth usado como medidor inteligente.</p></td>
</tr>
<tr>
<td><p><strong>MQTT</strong></p></td>
<td><p>Protocolo de mensajería ligero para IoT, basado en publicación/suscripción.</p></td>
</tr>
<tr>
<td><p><strong>JWT</strong></p></td>
<td><p>JSON Web Token: estándar para autenticación stateless.</p></td>
</tr>
<tr>
<td><p><strong>Hogar/Proyecto</strong></p></td>
<td><p>Entidad que agrupa usuarios, dispositivos y configuraciones de consumo.</p></td>
</tr>
<tr>
<td><p><strong>Estrato</strong></p></td>
<td><p>Clasificación socioeconómica colombiana (1 a 6) para asignar valores base.</p></td>
</tr>
<tr>
<td><p><strong>Lectura</strong></p></td>
<td><p>Registro individual de caudal y consumo enviado por el sensor.</p></td>
</tr>
<tr>
<td><p><strong>Alerta</strong></p></td>
<td><p>Notificación automática generada al superar un tope o detectar una fuga.</p></td>
</tr>
<tr>
<td><p><strong>Fuga</strong></p></td>
<td><p>Flujo continuo de agua detectado durante más de 30 minutos sin uso aparente.</p></td>
</tr>
<tr>
<td><p><strong>SaaS</strong></p></td>
<td><p>Software as a Service: modelo de negocio por suscripción.</p></td>
</tr>
<tr>
<td><p><strong>ARCO</strong></p></td>
<td><p>Derechos de Acceso, Rectificación, Cancelación y Oposición (Ley 1581 de 2012).</p></td>
</tr>
<tr>
<td><p><strong>Circuit Breaker</strong></p></td>
<td><p>Patrón de tolerancia a fallos que evita llamadas a servicios caídos.</p></td>
</tr>
<tr>
<td><p><strong>Event Bus</strong></p></td>
<td><p>Sistema de comunicación asíncrona basado en eventos (publicador/suscriptor).</p></td>
</tr>
<tr>
<td><p><strong>UoW</strong></p></td>
<td><p>Unit of Work: patrón que agrupa operaciones en una transacción ACID.</p></td>
</tr>
<tr>
<td><p><strong>DTO</strong></p></td>
<td><p>Data Transfer Object: objeto que estructura datos entre capas.</p></td>
</tr>
<tr>
<td><p><strong>RBAC</strong></p></td>
<td><p>Role-Based Access Control: control de acceso basado en roles.</p></td>
</tr>
<tr>
<td><p><strong>RLS</strong></p></td>
<td><p>Row Level Security: seguridad a nivel de fila en PostgreSQL.</p></td>
</tr>
</table>












<h2>Referencias.</h2>


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
<tr>
<td><p>Ley 1581 de 2012</p></td>
<td><p>Congreso de Colombia. (2012). Ley de Protección de Datos Personales.</p></td>
</tr>
<tr>
<td><p>ISO/IEC 27001:2022</p></td>
<td><p>Information Security Management Systems.</p></td>
</tr>
<tr>
<td><p>WCAG 2.1</p></td>
<td><p>Web Content Accessibility Guidelines (W3C).</p></td>
</tr>
<tr>
<td><p>Documentación interna</p></td>
<td><p>Acta General del Proyecto (10 feb 2025), Informe de Diseño v2.0, MER actualizado.</p></td>
</tr>
</table>


<h2>Resumen.</h2>

<p>El sistema <strong>Hidro Smart</strong> permitirá a los usuarios visualizar su consumo de agua de forma clara, identificar fugas o patrones anómalos, y recibir sugerencias para optimizar el uso del recurso. El usuario accederá a través de un <strong>inicio de sesión seguro</strong>, donde podrá consultar estadísticas, reportes, configurar metas de ahorro, activar el modo vacaciones, gestionar dispositivos y solicitar soporte técnico.</p>

<p>El proyecto busca integrar tecnología y conciencia ambiental, ofreciendo una solución práctica para la gestión inteligente del agua en el hogar, con un enfoque en la <strong>escalabilidad</strong>, la <strong>tolerancia a fallos</strong> y el <strong>cumplimiento normativo</strong>.</p>







<h1>Descripción General.</h1>

<p><strong>Hidro Smart es una aplicación móvil conectada a dispositivos IoT de medición inteligente. Su función principal es recopilar datos de consumo, analizarlos y mostrarlos mediante una interfaz amigable e intuitiva.</strong>El sistema se compone de:</p>

- Un <strong>medidor inteligente</strong> (ESP32) que registra el caudal de agua y métricas de salud (señal, batería, voltaje, temperatura)<br />

- Una <strong>API IoT</strong> (MQTT sobre TLS) para comunicación segura entre dispositivo y servidor.

- Un <strong>backend</strong> en Node.js que procesa la lógica de negocio, autenticación, alertas y notificaciones.

- Una <strong>aplicación móvil multiplataforma</strong> (React-vite) para la visualización de información, generación de reportes, configuración de metas y gestión de soporte.

- Una <strong>base de datos</strong> PostgreSQL con políticas de seguridad a nivel de fila (RLS).<br />

<p>El sistema puede integrarse con servicios en la nube (AWS IoT Core, Firebase FCM, Redis para colas) para almacenamiento, análisis avanzado y procesamiento asíncrono.</p>







<h2>Características de los usuarios.</h2>








<table>
<tr>
<td><p><strong>Nombre de usuario</strong></p></td>
<td><p>Administrador</p></td>
</tr>
<tr>
<td><p><strong>Formación</strong></p></td>
<td><p>Personal autorizado con conocimientos técnicos.</p></td>
</tr>
<tr>
<td><p><strong>Actividades</strong></p></td>
<td><p>Supervisa hogares, usuarios y dispositivos dentro del sistema; gestiona suspensiones/reactivaciones; revisa auditorías y logs de errores.</p></td>
</tr>
</table>







<table>
<tr>
<td><p><strong>Nombre de usuario</strong></p></td>
<td><p>Soporte Técnico</p></td>
</tr>
<tr>
<td><p><strong>Formación</strong></p></td>
<td><p>Desarrollador de Software o técnico IoT.</p></td>
</tr>
<tr>
<td><p><strong>Actividades</strong></p></td>
<td><p>Realiza mantenimiento, calibraciones y soporte de conectividad; revisa historial de conectividad de dispositivos; gestiona tickets de soporte.</p></td>
</tr>
</table>





<table>
<tr>
<td><p><strong>Nombre de usuario</strong></p></td>
<td><p>Usuario doméstico</p></td>
</tr>
<tr>
<td><p><strong>Formación</strong></p></td>
<td><p>Persona natural.</p></td>
</tr>
<tr>
<td><p><strong>Actividades</strong></p></td>
<td><p>Monitorea el consumo, genera reportes, sigue ayudas de ahorro, configura metas, activa modo vacaciones, gestiona sus dispositivos y hogares, y solicita soporte técnico.</p></td>
</tr>
</table>




















<h2>Restricciones.</h2>



    1. Requiere conexión a internet estable para la sincronización IoT (aunque se contempla un modo offline parcial para el ESP32).<br />

    1. Compatible únicamente con <strong>Android 9 o superior</strong> en su versión inicial (se planea soporte para iOS en futuras versiones.<br />

    1. Dependencia de hardware compatible con sensores de flujo (YF-S201 o similares) y transmisión Wi-Fi (2.4 GHz).<br />

    1. La precisión de datos depende de la calibración del dispositivo (factor K y offset), que debe realizarse periódicamente por el soporte técnico.

    1. El desarrollo se realiza con recursos limitados (equipo de 3 aprendices), priorizando herramientas open source y freemium.<br />



<h2>Suposiciones y dependencias.</h2>



    1. Los usuarios cuentan con dispositivos móviles actualizados y conexión a internet.<br />

    1. Los medidores IoT están correctamente instalados y calibrados.<br />

    1. Los requerimientos definidos permanecerán estables durante el desarrollo.<br />

    1. Las pruebas iniciales se realizarán en un entorno doméstico controlado.

    1. El equipo de desarrollo tiene acceso a las herramientas y plataformas necesarias (GitHub, AWS, Firebase, Redis).

    1. La disponibilidad de los servicios en la nube (AWS IoT Core, RDS, S3) y Firebase es estable durante el desarrollo y producción.<br />



<h1>Requisitos Específicos.</h1>



<h3>Requisitos comunes de las interfaces</h3>

<h4>Interfaces de Usuario</h4>

<p>La aplicación contará con una interfaz web moderna, intuitiva, responsiva y de fácil navegación, desarrollada con <strong>React + Vite</strong>, que permitirá a los usuarios interactuar con las diferentes funcionalidades del sistema Hidro Smart. La interfaz estará conformada por los siguientes módulos:</p>

- <strong>Inicio de sesión y autenticación:</strong> Permite el registro de usuarios, inicio de sesión, recuperación de contraseña y verificación de identidad.

- <strong>Dashboard:</strong> Muestra el consumo total de agua, flujo actual, estado de los dispositivos IoT, alertas activas, indicadores principales y recomendaciones de ahorro en tiempo real.

- <strong>Gestión de hogares:</strong> Permite crear, consultar, editar, suspender, reactivar y administrar los hogares registrados, así como gestionar sus miembros y permisos.

- <strong>Gestión de dispositivos IoT:</strong> Facilita el registro, configuración, calibración, suspensión, reactivación, desvinculación y consulta del historial de conectividad de los dispositivos inteligentes.

- <strong>Metas y presupuesto:</strong> Permite definir metas de ahorro, establecer presupuestos de consumo, visualizar el progreso y consultar el historial de metas establecidas.

- <strong>Reportes y estadísticas:</strong> Presenta gráficos comparativos, tendencias de consumo, estadísticas históricas y permite exportar la información en formatos PDF y Excel.

- <strong>Notificaciones y alertas:</strong> Administra el historial de notificaciones, la configuración de canales de comunicación y los diferentes tipos de alertas generadas por el sistema.

- <strong>Soporte técnico:</strong> Permite crear, consultar y realizar seguimiento a los tickets de soporte, así como visualizar las respuestas emitidas por el equipo técnico.

- <strong>Configuración del sistema:</strong> Permite administrar el perfil del usuario, preferencias de la aplicación, seguridad de la cuenta, autenticación en dos factores (2FA), privacidad, modo vacaciones y opciones de eliminación de la cuenta.



<p><strong>Interfaces de Hardware</strong></p>

<p><strong>El sistema Hidro Smart interactúa con los siguientes componentes de hardware para la adquisición y transmisión de datos del consumo de agua:</strong></p>

- <strong>Sensor de caudal (YF-S201 o equivalente): Encargado de medir el flujo de agua y enviar las lecturas al microcontrolador.</strong>

- <strong>Microcontrolador ESP32: Dispositivo responsable de procesar las lecturas del sensor, gestionar la conectividad Wi-Fi (2.4 GHz) y transmitir la información al servidor mediante el protocolo MQTT.</strong>

- <strong>Red Wi-Fi: Medio de comunicación utilizado por el ESP32 para enviar la telemetría al backend.</strong>

- <strong>Equipo cliente: Computador, portátil o dispositivo móvil con un navegador web moderno compatible con la aplicación desarrollada en React + Vite.</strong>

- <strong>Conexión a Internet: Requerida para la sincronización de datos entre el navegador, el backend y los dispositivos IoT.</strong>

- <strong>Pantalla OLED 0.96" (Opcional): Permite visualizar localmente información del dispositivo, como el consumo instantáneo, estado de conexión y mensajes de diagnóstico.</strong>



<p><strong>3.1.3 Interfaces de Software</strong></p>

<p><strong>Sistema Operativo (Cliente)</strong></p>

- <strong>Windows 10 o superior.</strong>

- <strong>Android  mediante navegadores web modernos.</strong>

<p><strong>Navegadores Compatibles</strong></p>

- <strong>Google Chrome.</strong>

<p><strong>Frontend</strong></p>

- <strong>React 19.</strong>

- <strong>Vite.</strong>

- <strong>JavaScript (ES6+) o TypeScript.</strong>

- <strong>React Router DOM.</strong>

- <strong>Axios.</strong>

- <strong>Tailwind CSS o CSS Modules.</strong>

<p><strong>Backend</strong></p>

- <strong>Node.js.</strong>

- <strong>Express.js.</strong>

<p><strong>Base de Datos</strong></p>

- <strong>PostgreSQL 15 o superior.</strong>

<p><strong>Broker MQTT</strong></p>

- <strong>Eclipse Mosquitto (desarrollo).</strong>

- <strong>AWS IoT Core (producción).</strong>

<p><strong>Procesamiento Asíncrono</strong></p>

- <strong>Redis.</strong>

- <strong>Bull.</strong>

<p><strong>Notificaciones</strong></p>

- <strong>Firebase Cloud Messaging (FCM).</strong>

<p><strong>Control de Versiones</strong></p>

- <strong>Git.</strong>

- <strong>GitHub.</strong>



<p><strong>3.1.4 Interfaces de Comunicación</strong></p>

<p><strong>La comunicación entre los diferentes componentes del sistema se realizará mediante los siguientes protocolos y servicios:</strong></p>

<p><strong>API REST (HTTPS)</strong></p>

<p><strong>Permite la comunicación entre la aplicación web desarrollada con React + Vite y el backend mediante conexiones seguras HTTPS. La autenticación se realizará utilizando JWT (JSON Web Token) en el encabezado:</strong></p>

<p><strong>Authorization: Bearer &lt;token&gt;</strong></p>

<p><strong>WebSockets (WSS)</strong></p>

<p><strong>Se utilizarán conexiones WebSocket seguras para actualizar en tiempo real el Dashboard, las alertas y el estado de los dispositivos IoT sin necesidad de recargar la aplicación.</strong></p>

<p><strong>MQTT sobre TLS</strong></p>

<p><strong>El microcontrolador ESP32 enviará la telemetría al broker MQTT mediante conexiones seguras TLS (puerto 8883).</strong></p>

<p><strong>Los principales tópicos utilizados serán:</strong></p>

- <strong>hidrosmart/devices/{device_id}/telemetry – Lecturas de consumo de agua y métricas del dispositivo.</strong>

- <strong>hidrosmart/devices/{device_id}/status – Estado de conexión, disponibilidad y versión del firmware.</strong>

- <strong>hidrosmart/devices/{device_id}/config – Configuración remota y actualización de parámetros del dispositivo.</strong>



<p><strong>Firebase Cloud Messaging (FCM)</strong></p>

<p><strong>Servicio utilizado para el envío de notificaciones push desde el backend hacia los usuarios registrados cuando se detecten eventos importantes, como consumos excesivos, fugas o incidencias.</strong></p>

<p><strong>Servicio SMTP</strong></p>



<p><strong>Utilizado para el envío de correos electrónicos relacionados con recuperación de contraseña, confirmación de registro, notificaciones de soporte y alertas del sistema.</strong></p>

<p><strong>Redis (TCP)</strong></p>



<p><strong>Se utilizará Redis como mecanismo de comunicación para el procesamiento de colas mediante Bull, permitiendo ejecutar tareas asíncronas como generación de reportes, envío de notificaciones y procesamiento de eventos sin afectar el rendimiento del sistema.</strong></p>







<h2>Requerimientos Funcionales</h2>



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

<p>ERF 1.5.1 Reactivar Usuario</p>

<p>RF1.6 Eliminar cuenta propia (Autogestión)&emsp;</p>



<p><strong>RF2. Vincular dispositivos</strong></p>

<p>RF 2.1 Registrar dispositivo</p>

<p>ERF 2.1.1 Valor único ID</p>

<p>RF 2.2 Suspender dispositivos</p>

<p>2.2.1 Reactivar dispositivo</p>

<p>2.2.2 Calibrar Dispositivo</p>

<p>2.2.3 Desvincular Dispositivo</p>

<p>2.2.4 Configurar umbral de alertas</p>

<p>2.2.5 Ver historial de conectividad</p>



<p><strong>RF3. Implementación de nuevo proyecto (hogar)</strong></p>

<p>RF 3.1 Crear Proyecto (Hogar)</p>

<p>ERF 3.1.1 Asignar estratificación</p>

<p>ERF 3.1.1.1 Asignar valor base por estrato</p>

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

<p>RF 4.7 Modo vacaciones</p>



<p><strong>RF5. Consultas y/o Reportes PDF y EXCEL</strong></p>

<p>RF 5.1. Gráficos comparativos</p>

<p>ERF 5.1.1 Gráficos comparativos en tiempo real</p>

<p>ERF 5.1.2 Gráficos comparativos Anuales</p>

<p>ERF 5.1.3 Gráficos comparativos Mensuales</p>

<p>ERF 5.1.4 Gráficos comparativos Semanales</p>

<p>ERF 5.1.5 Gráficos comparativos Diarios</p>

<p>RF 5.2 Hábitos de consumo</p>

<p>RF 5.3 Modelo predictivo</p>

<p>RF 5.4 Alertas</p>

<p>RF 5.5 Recomendaciones</p>

<p>RF 5.6 Proyectos (hogares) asociados al Usuario.</p>

<p>RF 5.7 Metas y presupuesto mensual</p>

<p>RF 5.8 Sistema de soporte técnico</p>



<h2><br />Requerimientos Funcionales</h2>





<h4>RF1 – Ingreso, autenticación y seguridad Usuarios</h4>



<h4>RF1.1 – Crear Usuario</h4>


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
<td><p>- • Nombre completo<br />• Correo electrónico (único)<br />• Contraseña (segura)<br />• Tipo de documento (CC, CE)<br />• Número de documento (único)<br />• Teléfono (opcional)<br />• Ciudad (opcional)</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Confirmación de registro exitoso o mensaje de error por datos inválidos.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Validación de datos y almacenamiento en la base de datos de Validación de datos, hash de contraseña (bcrypt, costo 12), almacenamiento en BD, asignación de rol por defecto (Usuario Doméstico), generación de JWT (Access + Refresh.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• Todos los campos obligatorios deben estar completos.<br />• No debe existir duplicidad de correo ni documento.<br />• La contraseña debe cumplir con ERF 1.1.2.<br />• El usuario recibe correo de bienvenida</p></td>
</tr>
</table>




<p><strong>ERF1.1.1 – Generación de tokens de sesión (Access y Refresh)</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Sistema</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Genera tokens JWT para autenticación stateless después del registro o inicio de sesión.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Credenciales validadas (usuario ID, rol).</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>- Access Token (expira en 15 minutos) y Refresh Token (expira en 7 días).</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Creación de tokens cifrados con firma HS256 (secreto JWT), almacenamiento de refresh token en BD para revocación y control de sesiones.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• Los tokens deben ser únicos y firmados.<br />• El access token debe tener tiempo limitado (15 min).<br />• El refresh token permite renovación sin re-login.<br />• Los tokens pueden ser revocados individualmente.</p></td>
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
<td><p>Aplica políticas de seguridad para la creación de contraseñas robustas.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Contraseña ingresada por el usuario.</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Validación correcta o mensaje de error con los requisitos.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Evaluación de longitud (≥8), complejidad (mayúscula, minúscula, número, símbolo) y cifrado con bcrypt.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• Mínimo 8 caracteres.<br />• Debe incluir al menos una mayúscula, una minúscula, un número y un símbolo.<br />• La contraseña se almacena hasheada (nunca en texto plano).<br />• No se permiten contraseñas comunes (ej. "12345678", "password").</p></td>
</tr>
</table>


<p><strong> </strong></p>



<p><strong>ERF1.1.3 – Asignar roles</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Sistema</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Asigna un rol específico al usuario para definir permisos y accesos dentro del sistema.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Rol seleccionado (solo administradores pueden modificar).</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Rol asignado correctamente</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Asociación del rol al usuario en la tabla user_role.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El rol debe existir previamente en la tabla roles (Administrador, Soporte Técnico, Usuario Doméstico).<br />• El usuario queda con permisos definidos según el rol.<br />• El rol por defecto al registrarse es "Usuario Doméstico".</p></td>
</tr>
</table>




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
<td><p>- Correo electrónico</p><p>- Contraseña</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Tokens JWT (access + refresh) y datos básicos del perfil (sin hash ni información sensible).</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Validación de credenciales (bcrypt compare), verificación de estado de la cuenta (Activa/Suspendida/Bloqueada), actualización de ultimo_acceso, generación de tokens (ERF 1.1.1).</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• Credenciales correctas → acceso concedido.<br />• Cuenta suspendida → mensaje de error "Cuenta suspendida".<br />• Credenciales incorrectas → mensaje de error genérico (evita enumeración de usuarios).<br />• La sesión expira tras 15 minutos de inactividad.</p></td>
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
<td><p>Bloquea temporalmente la cuenta del usuario tras múltiples intentos fallidos de inicio de sesión para prevenir ataques de fuerza bruta.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Número de intentos fallidos (contador en login_attempt).</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Cuenta bloqueada temporalmente (15 minutos).</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Conteo de intentos en login_attempt, bloqueo cuando supera 5 fallos consecutivos, registro de blocked_until. Se reinicia el contador tras un login exitoso.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• La cuenta se bloquea tras 5 intentos fallidos consecutivos.<br />• Se muestra mensaje "Demasiados intentos fallidos. Intente de nuevo en 15 minutos".<br />• El bloqueo se levanta automáticamente tras 15 minutos.<br />• La acción queda registrada en audit_log.</p></td>
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
<td><p>Permite al usuario restablecer su contraseña mediante un enlace temporal enviado a su correo electrónico registrado.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Correo electrónico</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Enlace de recuperación enviado (con token) o mensaje de confirmación.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Generación de token único (hash), almacenamiento en password_reset_token con expiración (1 hora), envío de correo con enlace a la URL de restablecimiento (/reset-password?token=...).</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El enlace debe expirar después de 1 hora.<br />• El correo debe existir en el sistema (por seguridad, no se indica si existe o no, solo se envía el correo).<br />• El token debe ser de un solo uso (se marca used = TRUE al utilizarlo).<br />• La nueva contraseña debe cumplir con ERF 1.1.2.</p></td>
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
<td><p>- • Nombre completo<br />• Teléfono<br />• Ciudad<br />• (Opcional) Foto de perfil (formato JPG/PNG, máximo 2MB)</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Confirmación de actualización o mensaje de error.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Validación y actualización de user_profile. Si se sube foto, se almacena en AWS S3 (o local) y se actualiza la URL en user_profile.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• Los datos deben guardarse correctamente en BD.<br />• Cambios sensibles (ej. correo electrónico) requieren verificación por correo.<br />• La foto de perfil se almacena de forma segura y se asocia al usuario.<br />• La acción queda registrada en audit_log.</p></td>
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
<td><p>Permite a un administrador suspender o reactivar cuentas de usuario para restringir o restaurar el acceso al sistema.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Usuario seleccionado<br />• Motivo de suspensión (obligatorio)</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Cuenta suspendida o reactivada con confirmación.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Cambio de estado en user_account (status: 'Suspended' / 'Active'), registro de suspension_reason, suspended_by y suspended_at.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El usuario suspendido no puede iniciar sesión.<br />• El usuario reactivado recupera acceso inmediato.<br />• La acción queda registrada en audit_log con el motivo y el administrador responsable.<br />• Se envía notificación por correo al usuario afectado</p></td>
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
<td><p>Permite reactivar una cuenta de usuario previamente suspendida, restaurando su acceso al sistema.</p></td>
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
<td><p>Cambio de estado a 'Active' y limpieza de suspension_reason y suspended_at.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El usuario reactivado puede iniciar sesión normalmente.<br />• La reactivación queda registrada en audit_log con el administrador responsable.<br />• Se envía notificación por correo al usuario.</p></td>
</tr>
</table>


<p><strong> </strong></p>



<p><strong>ERF1.6 – Reactivar usuario</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite al usuario eliminar su cuenta de forma permanente (soft delete), anonimizando sus datos personales y revocando todos los tokens de acceso, en cumplimiento del derecho al olvido (Ley 1581 de 2012).</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Confirmación de eliminación (checkbox de aceptación y doble verificación de contraseña).</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Confirmación de eliminación, cierre de sesión automático y correo de notificación.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Marca deleted_at en user_account, anonimiza datos personales en user_profile (nombre → "Usuario eliminado", correo → deleted_{id}@hidrosmart.com, documento → 0000000000), revoca todos los tokens JWT activos en token y cierra todas las sesiones en session.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• La cuenta queda marcada como eliminada y no permite inicio de sesión.<br />• Los datos personales se anonimizan irreversiblemente.<br />• Los hogares donde el usuario era titular deben ser reasignados a otro miembro (o suspendidos).<br />• Los dispositivos asociados se desvinculan automáticamente.<br />• El historial de consumo se conserva anonimizado para estadísticas agregadas.<br />• La acción es irreversible y queda registrada en audit_log.<br />• Se envía correo de confirmación al usuario.<br />• El usuario tiene un período de gracia de 7 días para cancelar la solicitud (opcional, si se implementa).</p></td>
</tr>
</table>






<h4>RF2 – Vincular Dispositivos</h4>



<p><strong>RF2.1 – Registrar dispositivo</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario (Titular del hogar)</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite registrar un dispositivo IoT (ESP32) en el sistema y vincularlo a un hogar específico para su monitoreo y control.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>- • Código único del dispositivo (MAC o UUID)<br />• Nombre descriptivo<br />• Tipo de dispositivo (caudal, nivel, humedad)<br />• Hogar (ID)<br />• Ubicación específica (opcional)<br />• Umbral de alerta (m³/hora, opcional – ver RF2.5)</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Confirmación de registro exitoso con ID generado (UUID) y datos del dispositivo registrado.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Validación de unicidad del código, creación del dispositivo en device (estado 'Active'), vinculación al hogar en home_device (estado 'Active') y registro en device_history con el evento "Registro inicial".</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td><p>• El código del dispositivo debe ser único en todo el sistema.<br />• El dispositivo no debe estar previamente registrado en otro hogar.<br />• El hogar debe existir y el usuario debe ser titular o miembro con permisos.<br />• La acción queda registrada en audit_log.</p></td>
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
<td><p>Datos del dispositivo (código, nombre, tipo).</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>ID único asignado (UUID).</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Generación automática de UUID mediante gen_random_uuid() (PostgreSQL) o asignación desde el código del dispositivo.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td><p>• El ID no debe repetirse en toda la base de datos.<br />• El ID queda asociado al dispositivo permanentemente.<br />• El ID se utiliza como referencia en todas las operaciones posteriores.</p></td>
</tr>
</table>
</td>
</tr>
<tr>
<td></td>
<td></td>
</tr>
</table>




<p><strong>RF2.2 – Suspender dispositivo</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario (Titular del hogar) / Administrador</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite suspender un dispositivo para detener temporalmente su monitoreo y generación de alertas, sin eliminar su registro.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Dispositivo seleccionado<br />• Motivo de suspensión (opcional)</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Confirmación de suspensión con fecha y motivo.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Cambio de estado en device (status: 'Suspended'), registro en device_history con estado anterior y nuevo, y motivo.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El dispositivo suspendido no debe enviar datos ni generar alertas.<br />• Las lecturas históricas del dispositivo permanecen en la BD.<br />• La acción queda registrada en audit_log y device_history.<br />• Solo el titular del hogar o administrador puede suspender.</p></td>
</tr>
</table>




<p><strong>ERF2.2.1 – Reactivar dispositivo</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario (Titular del hogar) / Administrador</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite reactivar un dispositivo previamente suspendido para reanudar su monitoreo y generación de alertas.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Dispositivo suspendido</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Confirmación de reactivación.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Cambio de estado en device (status: 'Active'), registro en device_history con estado anterior y nuevo.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El dispositivo reactivado debe reanudar el envío de telemetría.<br />• Las reglas de alerta vuelven a aplicarse al dispositivo.<br />• La acción queda registrada en audit_log y device_history.<br />• Solo el titular del hogar o administrador puede reactivar.</p></td>
</tr>
<tr>
<td></td>
<td></td>
</tr>
</table>




<p><strong>RF2.3 – Calibrar dispositivo (Factor K y Offset)</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Soporte Técnico / Administrador</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite ajustar los parámetros de calibración del sensor (factor de calibración K y offset) para mejorar la precisión de las lecturas de caudal.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Factor de calibración (K) – decimal positivo<br />• Offset – decimal (puede ser negativo)<br />• Motivo de la calibración</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Dispositivo calibrado con nuevos parámetros y confirmación de actualización.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Actualiza calibration_factor y calibration_offset en device, y registra el cambio en calibration_history con valores anteriores, nuevos, motivo y usuario responsable.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• Solo soporte técnico o administradores pueden calibrar.<br />• El historial de calibraciones debe mantenerse para auditoría (tabla calibration_history).<br />• Los nuevos valores afectan las lecturas futuras en tiempo real.<br />• El factor K debe ser &gt; 0.<br />• La acción queda registrada en audit_log.</p></td>
</tr>
</table>






<p><strong> RF2.4 – Desvincular dispositivo del hogar</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario (Titular del hogar)</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite desvincular un dispositivo IoT de un hogar, dejándolo disponible para ser asignado a otro hogar, sin eliminar su registro ni su historial de lecturas.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>•  Hogar ID<br />• Dispositivo ID</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Confirmación de desvinculación exitosa.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Cambia el estado de la relación en home_device a 'Suspended' (o elimina la relación) y registra fecha_desasignacion. El dispositivo queda sin hogar asignado.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El dispositivo deja de estar asociado al hogar y no genera más lecturas para ese hogar.<br />• El dispositivo puede ser reasignado a otro hogar sin conflicto.<br />• Las lecturas históricas del dispositivo permanecen en la BD.<br />• La acción queda registrada en audit_log.<br />• Solo el titular del hogar puede desvincular.</p></td>
</tr>
</table>






<p><strong>RF2.5 – Configurar umbral de alerta por dispositivo</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario (Titular del hogar)</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite configurar un umbral de alerta individual para cada dispositivo (en litros/minuto o m³/hora), que prevalece sobre el umbral general del hogar cuando está definido.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Dispositivo ID<br />• Valor del umbral (m³/h)</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Umbral guardado en device.umbral_alerta y confirmación de configuración.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Actualiza la columna umbral_alerta en device. Al recibir una lectura, se evalúa primero el umbral del dispositivo; si no existe, se usa el umbral general del hogar.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El umbral por dispositivo prevalece sobre el umbral general del hogar si está configurado.<br />• Si no se configura, se usa el umbral del hogar o el valor por defecto.<br />• El valor debe ser &gt; 0.<br />• La acción queda registrada en audit_log.</p></td>
</tr>
</table>






<p><strong>RF2.6 – Ver historial de conectividad del dispositivo</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario / Soporte Técnico</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite consultar el historial de métricas de salud del dispositivo (calidad de señal, nivel de batería, voltaje y temperatura) para diagnóstico técnico y visualización gráfica en el frontend (React + Vite con gráficos de recharts).</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Dispositivo ID<br />• Rango de fechas (opcional, por defecto últimos 7 días)</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Datos históricos agrupados por día/hora para graficar tendencias (señal, batería, voltaje, temperatura).</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Consulta a la tabla device_telemetry_history con filtros por device_id y rango de fechas. Los datos se devuelven en formato JSON para ser renderizados en el frontend.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El historial debe conservarse al menos 30 días.<br />• Debe permitir consultas por rango de fechas (últimos 7 días, 30 días, etc.).<br />• Los datos se devuelven en formato JSON con estructura [{ recorded_at, signal_quality, battery_level, voltage, temperature }].<br />• Solo usuarios con acceso al hogar pueden ver el historial de sus dispositivos.<br />• La consulta debe ser eficiente (índices por device_id y recorded_at).<br />• El historial se actualiza automáticamente cada vez que el dispositivo envía telemetría MQTT.</p></td>
</tr>
</table>








<h4>RF3 – Implementación de nuevo proyecto (hogar)</h4>



<p><strong>RF3.1 – Crear proyecto (hogar)</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite crear un nuevo hogar dentro del sistema, que agrupará usuarios, dispositivos y configuraciones de consumo.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Nombre del hogar<br />• Dirección<br />• Ciudad<br />• Estrato socioeconómico (1-6)<br />• Tope de consumo mensual (opcional)</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Hogar creado con ID asignado y confirmación.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Inserción en home, asignación automática del usuario creador como Titular en home_user (rol 'Owner'), y registro en audit_log.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td><p>• Todos los campos obligatorios deben completarse.<br />• El hogar queda activo por defecto (status 'Active').<br />• El usuario creador es el titular (Owner) automáticamente.<br />• No puede existir otro hogar con el mismo nombre para el mismo usuario.<br />• La acción queda registrada en audit_log.</p></td>
</tr>
</table>
</td>
</tr>
</table>




<h4>ERF3.1.1 – Asignar estratificación</h4>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p><strong>Sistema</strong></p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Asigna el estrato socioeconómico al hogar para fines de análisis, cálculo de tarifas y subsidios.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Estrato (1-6).</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Estrato asignado en home.tier.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Actualización de la columna tier en home con el valor seleccionado.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El estrato debe estar entre 1 y 6.<br />• El sistema asigna automáticamente un valor base de tarifa según el estrato (definido en estratos).<br />• El estrato puede ser modificado posteriormente por el titular.</p></td>
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
<td><p>Asigna un valor base de tarifa (costo por m³) según el estrato socioeconómico del hogar.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Estrato asignado</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Valor base definido en home_rate (tabla de tarifas).</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Al crear el hogar, el sistema consulta la tabla estratos y crea automáticamente un registro en home_rate con el valor_m3 correspondiente y la fecha de vigencia.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td><p>• El valor debe corresponder al estrato seleccionado.<br />• La tarifa se crea con vigencia desde la fecha de creación del hogar.<br />• El titular puede modificar la tarifa manualmente si lo desea (RF4.4.1).</p></td>
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
<td><p><strong>Sistema</strong></p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Define un usuario titular (Owner) responsable del hogar, con permisos de administración total sobre el mismo.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Hogar ID<br />• Usuario ID</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Usuario asignado como titular.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Inserción o actualización en home_user con home_role = 'Owner'. Si ya existe un titular, se puede transferir la titularidad (solo el titular actual puede hacerlo).</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El usuario debe existir en el sistema.<br />• Solo puede existir un titular (Owner) por hogar.<br />• El titular puede invitar, eliminar miembros y administrar el hogar.<br />• La asignación queda registrada en audit_log.</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>ERF3.2.1 – Asignar usuarios miembros</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p><strong>Usuario (Titular)</strong></p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite agregar otros usuarios como miembros (Member, Guest) del hogar, otorgándoles diferentes niveles de acceso.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Correo electrónico del usuario a invitar<br />• Rol (Member o Guest)</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Usuario asociado al hogar con el rol asignado.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Inserción en home_user con home_role definido ('Member' o 'Guest') y registro de added_by (usuario que invitó).</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El usuario invitado debe existir en el sistema.<br />• No se puede duplicar la misma relación usuario-hogar.<br />• El invitado recibe una notificación por correo.<br />• La acción queda registrada en audit_log.</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>ERF3.2.1.1 – Asignar funciones especiales</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p><strong>Usuario (Titular)</strong></p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite asignar funciones o permisos especiales a determinados miembros del hogar, otorgándoles capacidades adicionales más allá de las de su rol base.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Miembro (ID de home_user)<br />• Función (ej. 'administrar_device', 'ver_reportes', 'configurar_alertas')</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Función asignada correctamente al miembro.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Inserción en home_user_function con la función y el usuario que la asignó (assigned_by).</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• Las funciones deben estar predefinidas en el sistema (catálogo).<br />• Un miembro puede tener múltiples funciones.<br />• Las funciones pueden ser revocadas por el titular.<br />• La asignación queda registrada en audit_log.</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>RF3.3 – Asignar dispositivos</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p><strong>Usuario (Titular)</strong></p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite asociar dispositivos IoT previamente registrados al hogar correspondiente, activando su monitoreo para ese hogar.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Hogar ID<br />• Dispositivo ID</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Dispositivo vinculado al hogar.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Inserción o actualización en home_device con estado 'Active' y fecha de asignación.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El dispositivo debe estar registrado en el sistema.<br />• El dispositivo no puede estar activo en otro hogar simultáneamente.<br />• Si el dispositivo ya estaba en otro hogar, debe ser desvinculado primero (RF2.4).<br />• La acción queda registrada en audit_log.</p></td>
</tr>
</table>




<p><strong>RF3.4 – Suspender proyecto (hogar)</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p><strong>Usuario (Titular)</strong></p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite suspender temporalmente un hogar, deteniendo la generación de alertas y notificaciones, pero manteniendo el almacenamiento de lecturas.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Hogar seleccionado<br />• Motivo de suspensión (opcional)</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Hogar suspendido con confirmación.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Cambio de estado en home.status ('Active' → 'Suspended'), registro de suspension_reason, changed_at_status y suspended_by.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El hogar suspendido no debe generar alertas ni notificaciones.<br />• Las lecturas de los dispositivos siguen almacenándose.<br />• Los usuarios miembros no pueden realizar acciones en el hogar suspendido (solo el titular puede reactivar).<br />• La acción queda registrada en audit_log.</p></td>
</tr>
</table>




<p><strong>ERF3.4.1 – Reactivar proyecto (hogar)</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p><strong>Usuario (Titular del hogar)</strong></p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite reactivar un hogar previamente suspendido, restaurando su funcionamiento normal y la generación de alertas.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Hogar suspendido</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Hogar reactivado y funcionando normalmente.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Cambio de estado en home.status ('Suspended' → 'Active'), limpieza de suspension_reason y registro en audit_log.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El hogar reactivado vuelve a generar alertas y notificaciones.<br />• Los usuarios miembros recuperan acceso al hogar.<br />• La reactivación queda registrada en audit_log.</p></td>
</tr>
</table>






<h4>RF4 – Configuraciones del sistema</h4>



<h4>RF4.1 – Configurar topes de consumo</h4>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario (Titular del hogar)</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Define límites máximos de consumo de agua para un hogar (diario y mensual), con el fin de controlar y prevenir consumos excesivos y activar alertas automáticas.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Tope diario (m³)<br />• Tope mensual (m³)</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Configuración guardada en threshold_configuration y confirmación.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Inserción o actualización en threshold_configuration. Los topes se utilizan para evaluar alertas en tiempo real cuando se reciben lecturas del sensor.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• Los valores deben ser numéricos y positivos.<br />• Al menos uno de los dos topes debe estar definido.<br />• Los topes pueden ser modificados en cualquier momento por el titular.<br />• La acción queda registrada en audit_log.</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>RF4.2 – Configurar alertas</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario (Titular del hogar)</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite configurar reglas de alerta personalizadas para el hogar, definiendo umbrales, tipos de alerta y su activación.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Tipo de alerta (consumo_excesivo, fuga_detectada, tope_mensual, tope_diario, sin_lectura)<br />• Umbral (valor numérico)<br />• Unidad (m3_dia, m3_mes, lpm)<br />• Activa/Inactiva (booleano)</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Regla de alerta creada en alert_rule y confirmación.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Inserción en alert_rule con los parámetros definidos. El sistema evalúa las reglas activas cada vez que se recibe una nueva lectura.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td><p>• El umbral debe ser un número positivo.<br />• La unidad debe coincidir con el tipo de alerta.<br />• La regla se activa automáticamente si activa = true.<br />• Las reglas pueden ser desactivadas sin ser eliminadas.<br />• La acción queda registrada en audit_log.</p></td>
</tr>
</table>
</td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>RF4.3 – Configurar recomendaciones</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Sistema (Automático)</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite configurar la generación automática de recomendaciones de ahorro basadas en los hábitos de consumo del hogar, analizando patrones históricos.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Datos históricos de consumo (lecturas de sensor_reading).</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Recomendaciones personalizadas generadas en user_recommendation.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Análisis de patrones de consumo (horas pico, días de mayor consumo, actividades) y comparación con umbrales definidos en recommendation. Se ejecuta diariamente a las 6:00 AM mediante un job programado (cron).</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• Las recomendaciones deben corresponder al consumo real del hogar.<br />• No se repiten recomendaciones en menos de 7 días para el mismo usuario.<br />• Las recomendaciones incluyen ahorro estimado en litros y dinero.<br />• El usuario puede marcar la utilidad de cada recomendación.</p></td>
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
<td><p>Permite seleccionar el idioma de visualización de la plataforma según la preferencia del usuario, aplicando la traducción a toda la interfaz (React + Vite).</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Idioma seleccionado (es, en, pt, fr).</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Idioma configurado en user_preference.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Actualización de language_id en user_preference. El frontend (React + Vite) consume esta preferencia y aplica las traducciones mediante i18n (react-i18next).</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El idioma debe aplicarse en toda la interfaz (web y móvil).<br />• La preferencia persiste entre sesiones.<br />• Los idiomas disponibles deben estar en la tabla language.</p></td>
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
<td><p>Permite definir la moneda utilizada para mostrar valores de consumo y estimaciones económicas en reportes y gráficos.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Moneda seleccionada (COP, USD, EUR, MXN).</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Moneda configurada en user_preference.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Actualización de currency_id en user_preference. El frontend (React + Vite) consume esta preferencia y formatea los valores monetarios según la moneda seleccionada.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• La moneda se refleja correctamente en reportes y gráficos.<br />• La preferencia persiste entre sesiones.<br />• Las monedas disponibles deben estar en la tabla currency.</p></td>
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
<td><p>Permite personalizar la paleta de colores de la interfaz para mejorar la experiencia visual del usuario, seleccionando entre temas predefinidos.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Tema o colores seleccionados</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Estilo visual aplicado en user_preference.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Actualización de theme_id en user_preference. El frontend (React + Vite) consume esta preferencia y aplica el tema mediante CSS-in-JS o Tailwind CSS.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>Los colores deben aplicarse de forma global en toda la interfaz.<br />• El tema debe persistir entre sesiones.<br />• Los temas disponibles deben estar en la tabla theme.<br />• El tema por defecto es "Light".</p></td>
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
<td><p>Registra y consulta acciones relevantes realizadas por los usuarios dentro del sistema para fines de auditoría, cumplimiento normativo y seguridad.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Acciones del usuario (Login, Logout, INSERT, UPDATE, DELETE, EXPORT, IMPORT).</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Registro de auditoría en audit_log con todos los detalles.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Middleware que captura cada petición HTTP (método, URL, usuario, IP, user-agent) y los datos modificados (valor anterior y nuevo), y almacena en audit_log.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td><p>• Todas las acciones críticas deben quedar registradas.<br />• Los logs deben conservarse al menos 1 año.<br />• Solo administradores pueden consultar auditorías.<br />• La auditoría incluye IP de origen y user-agent.<br />• Los registros no pueden ser eliminados (solo archivo).</p></td>
<td></td>
</tr>
</table>
</td>
</tr>
</table>






<p>&emsp;&emsp;<strong>RF4.7 – Modo Vacaciones / Ausencias</strong></p>




<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario (Titular del hogar)</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite activar un modo "Vacaciones" que suspende notificaciones de consumo normal y ajusta alertas a solo eventos críticos (fugas, desconexión de dispositivos) durante la ausencia del usuario, reduciendo la saturación de notificaciones.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Fecha de inicio<br />• Fecha de fin<br />• Objetivo de consumo diario (opcional, en m³)<br />• Notificar al regreso (booleano)</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Estado del modo vacaciones activado/desactivado en vacation_mode.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Inserción/actualización en vacation_mode con active = true. El sistema cambia el comportamiento de las reglas de alerta: solo se envían alertas de severidad "Alta" o "Crítica". Al finalizar la fecha de fin, el sistema desactiva automáticamente el modo.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td><p>• Solo el titular del hogar puede activar/desactivar.<br />• Durante el modo, solo se envían alertas de severidad "Alta" o "Crítica" (fugas, desconexión de dispositivos).<br />• Al finalizar, las notificaciones vuelven a la normalidad automáticamente.<br />• Las fechas de fin deben ser posteriores a inicio.<br />• Se registra en audit_log la activación y desactivación.<br />• Se puede desactivar manualmente en cualquier momento antes de la fecha de fin.</p></td>
<td></td>
</tr>
</table>
</td>
</tr>
</table>






<h4>RF5 – Consultas y/o Reportes PDF y EXCEL</h4>



<h4>RF5.1 – Gráficos comparativos</h4>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite visualizar gráficos comparativos del consumo de agua para analizar variaciones y tendencias en distintos periodos de tiempo (diario, semanal, mensual, anual), con opción de exportación a PDF/Excel.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Hogar seleccionado<br />• Periodo (diario, semanal, mensual, anual)<br />• Rango de fechas (inicio y fin)</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Gráficos de barras, líneas o circulares renderizados en el frontend (React + Vite con recharts).</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Consulta a la base de datos (tablas sensor_reading, daily_consumption_summary, monthly_consumption_history, hourly_consumption_history) y procesamiento de datos para generar la información agregada.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• Los gráficos deben reflejar datos reales y actualizados.<br />• La información debe ser clara y legible (colores, etiquetas, leyendas).<br />• Debe permitir comparar periodos (ej. este mes vs mes anterior).<br />• Los datos deben poder exportarse a PDF/Excel (ver RF5.1.x).</p></td>
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
<td><p>Muestra gráficos actualizados automáticamente con datos de consumo en tiempo real mediante WebSockets (Socket.io).</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Datos en tiempo real del dispositivo (MQTT procesado por el backend).</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Gráfico actualizado cada 5 segundos en el frontend (React + Vite).</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>El backend emite eventos de actualización vía Socket.io a todos los clientes suscritos al hogar. El frontend recibe los datos y actualiza el gráfico sin recargar la página.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• Los datos deben actualizarse automáticamente sin recarga de página.<br />• Latencia menor a 3 segundos.<br />• La conexión WebSocket debe ser resiliente (reconexión automática).<br />• Solo los usuarios con acceso al hogar reciben las actualizaciones.</p></td>
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
<td><p>Descripción</p></td>
<td><p>Permite comparar el consumo de agua entre diferentes años, mostrando todos los meses del año seleccionado.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Año seleccionado</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Gráfico comparativo anual con todos los meses.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Consulta a monthly_consumption_history para el año seleccionado.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El gráfico debe incluir todos los meses del año seleccionado.<br />• Debe permitir comparar con años anteriores (superposición o cambio de año).<br />• Debe mostrar el consumo total anual y el promedio mensual.</p></td>
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
<td><p>Permite visualizar y comparar el consumo mensual de agua, mostrando el detalle día a día del mes seleccionado.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Mes seleccionado</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Gráfico Gráfico comparativo mensual con los días del mes.mensual</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Consulta a daily_consumption_summary para el mes seleccionado.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El consumo debe corresponder al mes seleccionado.<br />• Debe permitir comparar con meses anteriores.<br />• Debe mostrar el consumo total del mes y el promedio diario.</p></td>
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
<td><p>Permite comparar el consumo de agua por semanas, mostrando el detalle día a día de la semana seleccionada.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Semana seleccionada (número de semana y año).</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Gráfico comparativo semanal con los días de la semana.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Consulta a daily_consumption_summary agrupando por semana (función EXTRACT(WEEK FROM date)).</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• La semana debe calcularse correctamente según el calendario (ISO 8601).<br />• Debe permitir comparar con semanas anteriores.<br />• Debe mostrar el consumo total de la semana y el promedio diario.</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>ERF5.1.5 – Gráficos comparativos diarios</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p>Usuario</p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite visualizar el consumo diario de agua por hora, mostrando el detalle horario del día seleccionado.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Fecha seleccionada</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Gráfico diario con valores por hora (0-23).</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Consulta a hourly_consumption_history para la fecha seleccionada.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• El gráfico debe mostrar valores por hora (0-23).<br />• Debe permitir comparar con días anteriores.<br />• Debe mostrar el consumo total del día y la hora pico.</p></td>
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
<td><p>Permite analizar los patrones y hábitos de consumo de agua del usuario o del hogar, identificando comportamientos recurrentes y oportunidades de ahorro.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Datos históricos de consumo (últimos 30 días).</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Informe de hábitos: horas pico, días de mayor consumo, actividades más frecuentes, comparativa con el promedio del hogar.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Consulta a sensor_reading agrupando por actividad, hora del día y día de la semana. Se aplican algoritmos de análisis estadístico (media, moda, percentiles).</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• Los hábitos deben basarse en datos reales (últimos 30 días).<br />• Debe mostrar recomendaciones asociadas a los hábitos detectados (ver RF5.5).<br />• Debe permitir filtrar por periodo (últimos 7 días, 30 días, 90 días).<br />• Los resultados se presentan en gráficos y tablas en el frontend (React + Vite).</p></td>
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
<td><p>Estima el consumo futuro de agua con base en el historial registrado, aplicando algoritmos de regresión lineal simple o media móvil.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Datos históricos de consumo (últimos 30 días).</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Predicción de consumo para el próximo mes (m³ y costo estimado), con nivel de confianza.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Aplicación de algoritmo de regresión lineal o media móvil sobre los datos históricos de daily_consumption_summary. El resultado se almacena en consumption_prediction.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• La predicción debe usar al menos 30 días de datos históricos.<br />• Debe incluir un nivel de confianza (porcentaje).<br />• La predicción se actualiza automáticamente cada semana (job programado).<br />• Debe mostrar la tendencia (creciente, decreciente o estable)</p></td>
</tr>
</table>


<p><strong> </strong></p>

<p><strong>RF5.4 – Alertas</strong></p>


<table>
<tr>
<td><p>Tipo</p></td>
<td><p><strong>Sistema / Usuario</strong></p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Genera alertas automáticas cuando se detectan consumos anómalos o se superan los topes configurados, notificando al usuario en tiempo real.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Datos de consumo (lecturas)<br />• Topes configurados y reglas de alerta (RF4.1 y RF4.2)Topes configurados</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Notificación en app (push), correo electrónico y/o SMS (según preferencias del usuario).</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Evaluación de reglas (alert_rule) y generación de eventos (alert_event) con notificaciones asociadas (alert_notification). Las alertas se evalúan en tiempo real al recibir cada lectura MQTT.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• La alerta se genera al superar el umbral definido.<br />• El usuario puede marcar la alerta como leída o descartada.<br />• Las notificaciones se envían por los canales configurados (push, email, SMS).<br />• Las alertas se agrupan por tipo y hogar.<br />• Se registra en audit_log la generación y lectura de alertas.</p></td>
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
<td><p>Genera recomendaciones personalizadas para el ahorro de agua basadas en los hábitos de consumo detectados, con estimación de ahorro potencial.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Hábitos de consumo detectados (RF5.2).</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Recomendaciones específicas con ahorro estimado (litros y dinero) y nivel de prioridad (baja, media, alta).</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Evaluación de recommendation con umbrales y asignación a user_recommendation con estado 'Pendiente'. Se genera automáticamente mediante un job diario a las 6:00 AM.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td><p>• Las recomendaciones deben ser coherentes con los hábitos reales.<br />• El usuario puede marcar la utilidad de cada recomendación (útil/no útil).<br />• Las recomendaciones se presentan en el dashboard y en la sección de recomendaciones.<br />• No se repiten recomendaciones en menos de 7 días para el mismo usuario.</p></td>
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
<td><p>Permite consultar los hogares asociados a la cuenta del usuario, mostrando el rol de cada uno (Owner, Member, Guest) y sus métricas básicas.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>Usuario autenticado</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Listado de hogares con roles (Owner, Member, Guest), número de dispositivos, miembros y consumo actual.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Consulta a home_user con JOIN a home y agregación de métricas (dispositivos activos, miembros, consumo del mes).</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td><p>• Solo se muestran hogares asociados al usuario.<br />• Se muestra el rol de cada hogar (Owner, Member, Guest).<br />• Se muestra el consumo actual del mes, número de dispositivos y miembros.<br />• Se puede acceder a la vista detallada de cada hogar.</p></td>
</tr>
</table>
</td>
</tr>
</table>






<p><strong>RF5.7 – Metas y presupuesto mensual (Saving Goals)</strong></p>




<table>
<tr>
<td><p>Tipo</p></td>
<td><p><strong>Usuario (Titular o miembro con permisos)</strong></p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite al usuario definir metas mensuales de ahorro de agua (en m³) y límites de presupuesto (en COP), con seguimiento visual de progreso y proyecciones de fin de mes.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Límite de consumo (m³)<br />• Presupuesto máximo (COP)<br />• Período de la meta (mensual, semanal, anual)<br />• Fecha de inicio y fin (opcional)</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Progreso actual (porcentaje usado), proyección de consumo final, estado de cumplimiento (alcanzada/no alcanzada).</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Inserción/actualización en saving_goal. El sistema calcula el consumo actual vs la meta y genera alertas si se supera el 80% y 90% del límite. La proyección de fin de mes se calcula en base al consumo diario promedio.</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td><p>Solo aplica a hogares donde el usuario es titular o miembro con permisos.<br />• Las metas deben ser positivas y mayores a cero.<br />• El sistema debe mostrar el historial de metas anteriores (últimos 6 meses).<br />• La proyección de fin de mes se actualiza diariamente.<br />• Las alertas se generan al alcanzar el 80% y 90% del límite.<br />• La acción queda registrada en audit_log.</p></td>
</tr>
</table>
</td>
</tr>
</table>










<p><strong>RF5.8 – Sistema de Soporte Técnico (Tickets)</strong></p>




<table>
<tr>
<td><p>Tipo</p></td>
<td><p><strong>Usuario / Soporte Técnico</strong></p></td>
</tr>
<tr>
<td><p>Descripción</p></td>
<td><p>Permite a los usuarios reportar incidencias o consultas técnicas a través de un sistema de tickets, y al equipo de soporte gestionar su resolución con seguimiento de estado.</p></td>
</tr>
<tr>
<td><p>Entradas</p></td>
<td><p>• Título del problema<br />• Categoría (Dispositivo, Reportes, Tarifas, Detección, Otros)<br />• Prioridad (Baja, Media, Alta)<br />• Descripción detallada<br />• Archivos adjuntos (opcional, hasta 5MB)</p></td>
</tr>
<tr>
<td><p>Salidas</p></td>
<td><p>Ticket creado con ID único, historial de respuestas, estado de resolución y notificaciones de seguimiento.</p></td>
</tr>
<tr>
<td><p>Acción</p></td>
<td><p>Inserción en ticket con estado 'Abierto'. El soporte puede actualizar estado (En Proceso, Resuelto, Cerrado) y agregar respuestas en ticket_response. El sistema notifica al usuario cuando el ticket es respondido o resuelto (vía correo y/o push).</p></td>
</tr>
<tr>
<td><p>Criterio de aceptación</p></td>
<td>
<table>
<tr>
<td><p>• Los tickets deben tener categorías y prioridades predefinidas (tablas catálogo).<br />• El soporte puede cambiar el estado: Abierto, En Proceso, Resuelto, Cerrado.<br />• El usuario puede dar seguimiento a sus tickets desde la app (React + Vite).<br />• Los tickets cerrados se archivan automáticamente después de 30 días.<br />• Cada cambio de estado queda registrado en audit_log.<br />• Se envía notificación por correo al usuario cuando el ticket es respondido o resuelto.<br />• Los tickets pueden tener archivos adjuntos (almacenados en AWS S3 o local).</p></td>
</tr>
</table>
</td>
</tr>
</table>
































<p><strong>BOSETO DE REQUERIMIENTOS FUNCIONALES</strong></p>



<p><strong>Mockup móvil: </strong><a href="https://www.figma.com/make/R5Yhy0Jh6SOBGT4ApaBO5y/M%C3%B3vil?node-id=0-1&amp;fullscreen=1&amp;t=1qqLwJS7DidIt8aX-1"><u><strong>https://www.figma.com/make/R5Yhy0Jh6SOBGT4ApaBO5y/M%C3%B3vil?node-id=0-1&amp;fullscreen=1&amp;t=1qqLwJS7DidIt8aX-1</strong></u></a></p>



<p><strong>Mockup web:  </strong><a href="https://www.figma.com/make/0zOBmy5JuETUlknQ8Sv91p/Web?node-id=0-1&amp;fullscreen=1&amp;t=HU0K98manyTK96L6-1"><u><strong>https://www.figma.com/make/0zOBmy5JuETUlknQ8Sv91p/Web?node-id=0-1&amp;fullscreen=1&amp;t=HU0K98manyTK96L6-1</strong></u></a></p>

<h2>Requerimientos No Funcionales.</h2>

<p><strong>Requerimientos No Funcionales.</strong></p>

<p><strong>RNF1. Rendimiento</strong></p>

- <strong>RNF1.1 Tiempo de inicio</strong>

- <strong>RNF1.2 Rendimiento general</strong>

- <strong>RNF1.3 Gestión de capacidad</strong>

- <strong>RNF1.4 Escalabilidad </strong><em><strong>(Actualizado: stateless para escalado horizontal)</strong></em>

<p><strong>RNF2. Usabilidad</strong></p>

- <strong>RNF2.1 Facilidad de uso</strong>

- <strong>RNF2.2 Claridad de la información</strong>

- <strong>RNF2.3 Lenguaje </strong><em><strong>(Actualizado: react-i18next)</strong></em>

- <strong>RNF2.4 Adaptabilidad</strong>

<p><strong>RNF3. Compatibilidad</strong></p>

- <strong>RNF3.1 Compatibilidad Web </strong><em><strong>(Actualizado: React + Vite en navegadores modernos)</strong></em>

- <strong>RNF3.2 Compatibilidad con navegadore.</strong>

<p><strong>RNF4. Disponibilidad y Confiabilidad</strong></p>

- <strong>RNF4.1 Disponibilidad</strong>

- <strong>RNF4.2 Persistencia de datos</strong>

- <strong>RNF4.3 Notificaciones en tiempo real</strong>

- <strong>RNF4.4 Recuperación ante fallos</strong>

<p><strong>RNF5. Seguridad</strong></p>

- <strong>RNF5.1 Control de acceso</strong>

- <strong>RNF5.2 Autenticación segura </strong><em><strong>(Actualizado: JWT + Redis)</strong></em>

- <strong>RNF5.3 Cifrado de datos</strong>

- <strong>RNF5.4 Copias de seguridad</strong>

<p><strong>RNF6. Gestión y Operación</strong></p>

- <strong>RNF6.1 Roles y responsabilidades</strong>

- <strong>RNF6.2 Gestión de incidentes</strong>

- <strong>RNF6.3 Mantenibilidad </strong><em><strong>(Actualizado: arquitectura hexagonal)</strong></em>

<p><strong>RNF7. Portabilidad y Accesibilidad</strong></p>

- <strong>RNF7.1 Portabilidad</strong>

- <strong>RNF7.2 Accesibilidad </strong><em><strong>(Actualizado: WCAG 2.1 AA)</strong></em>

- <strong>RNF7.3 Multiplataforma </strong><em><strong>(Actualizado: responsive con React + Vite)</strong></em>

<p><strong>RNF8. Cumplimiento Normativo y Monitoreo</strong></p>

- <strong>RNF8.1 Eficiencia energética</strong>

- <strong>RNF8.2 Cumplimiento normativo</strong>

- <strong>RNF8.3 Auditoría</strong>

- <strong>RNF8.4 Monitoreo del rendimiento</strong>

<p><strong> RNF9. Tolerancia a Fallos y Resiliencia </strong><em><strong>(Nuevo)</strong></em></p>

- <strong>RNF9.1 Circuit Breaker </strong><em><strong>(Nuevo)</strong></em>

- <strong>RNF9.2 Procesamiento Asíncrono (Colas) </strong><em><strong>(Nuevo)</strong></em>

- <strong>RNF9.3 Retry Pattern </strong><em><strong>(Nuevo)</strong></em>

<p><strong> RNF10. Escalabilidad Horizontal </strong><em><strong>(Nuevo)</strong></em></p>

- <strong>RNF10.1 Stateless </strong><em><strong>(Nuevo)</strong></em>

- <strong>RNF10.2 Gestión de Colas </strong><em><strong>(Nuevo)</strong></em>

<p><strong>RNF11. Requerimientos Técnicos </strong><em><strong>(Corregido, antes RNF6 duplicado)</strong></em></p>

- <strong>RNF11.1 Visualización responsiva</strong>

- <strong>RNF11.2 Soporte técnico</strong>

- <strong>RNF11.3 Mantenimiento técnico</strong>





<p>RNF1 Rendimiento</p>


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
<td colspan="4"><p>Manejo de situaciones anormales</p><p><br /></p><p>- Si el rendimiento cae por debajo del 80% de eficiencia, el sistema debe activar un proceso de redistribución de carga.</p><p>- En caso de sobrecarga, el sistema debe priorizar las solicitudes críticas y encolar las secundarias.</p></td>
</tr>
<tr>
<td colspan="4"><p>Criterios de aceptación</p><p>- El tiempo promedio de respuesta por solicitud no debe superar los 3 segundos.</p><p>- El sistema debe soportar al menos 100 usuarios concurrentes sin degradación perceptible.</p></td>
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
<td colspan="4"><p>Criterios de aceptación</p><p>- Mantener un rendimiento constante con el doble de usuarios promedio.</p><p>- Soportar hasta 10.000 registros adicionales sin errores.</p></td>
</tr>
</table>


<p><br /><br /></p>

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
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- La aplicación debe garantizar que toda la información que se presente sea clara, comprensible y libre de ambigüedades. Los textos, botones, íconos y mensajes de error deben tener una redacción precisa y un significado evidente para el usuario, evitando interpretaciones erróneas que puedan afectar su interacción con el sistema.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si se detectan campos o mensajes ambiguos, el sistema deberá registrar el error y notificarlo al equipo de diseño.</p><p>- En caso de que el usuario no comprenda una acción, se mostrará automáticamente una breve ayuda contextual.</p></td>
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
<td colspan="4"><p>Manejo de situaciones anormales</p><p><br /></p><p>- Si la resolución del dispositivo no es soportada, el sistema mostrará una advertencia de compatibilidad.</p><p>- En caso de error de visualización, el usuario podrá reajustar manualmente el modo de vista.</p></td>
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
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- El sistema debe ser completamente funcional desde navegadores modernos, garantizando la correcta ejecución de sus componentes y la compatibilidad con los principales motores de renderizado.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si el usuario intenta ingresar desde un navegador obsoleto, se mostrará un mensaje de advertencia.</p><p>- Los errores de compatibilidad deberán registrarse automáticamente en los logs del sistema.</p></td>
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
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- Los registros, historiales y configuraciones deben almacenarse de forma segura y sin riesgo de pérdida. Se deben aplicar mecanismos de respaldo automático y redundancia de datos.</p></td>
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
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Ante una caída del sistema, debe activarse el proceso de restauración automática y notificar al administrador.</p></td>
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
<td colspan="4"><p>Descripción:</p><p>- El sistema debe permitir el acceso solo a usuarios con privilegios autorizados. Cada perfil debe tener permisos definidos que limiten las acciones que puede ejecutar dentro de la plataforma.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si un usuario intenta acceder a un módulo restringido, se mostrará un mensaje de acceso denegado.</p><p>- Cualquier intento de acceso no permitido debe registrarse automáticamente con hora y dirección IP.</p></td>
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
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- Toda la información sensible debe transmitirse bajo protocolos HTTPS y almacenarse cifrada en la base de datos. El cifrado garantizará la confidencialidad e integridad de los datos.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si se detecta una transmisión insegura, el sistema debe bloquear la comunicación y registrar el evento.</p></td>
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
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- Los roles del sistema deben estar claramente definidos, estableciendo qué funciones y permisos tiene cada usuario técnico y operativo. Esta estructura permite una gestión segura y organizada del sistema.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si un usuario intenta ejecutar una acción fuera de su rol, el sistema la denegará.</p><p>- Se deben generar reportes automáticos de cambios en permisos.</p></td>
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
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- El sistema debe estar diseñado de forma modular y documentada, facilitando actualizaciones, correcciones y mejoras sin afectar el funcionamiento general.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si una actualización causa error, debe existir la opción de reversión inmediata.</p><p>- Se registrarán todas las modificaciones realizadas al código.</p></td>
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
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- La interfaz debe cumplir con las normas WCAG 2.1 para garantizar el acceso a usuarios con discapacidad visual o auditiva.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si se detectan barreras de accesibilidad, deben corregirse antes del despliegue.</p></td>
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
<td colspan="4"><p>Descripción:</p><p><br /></p><p>- El software debe minimizar el consumo de recursos en segundo plano, favoreciendo el ahorro energético.</p></td>
</tr>
<tr>
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- Si el consumo excede los límites esperados, el sistema debe reducir tareas no esenciales.</p></td>
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
<td colspan="4"><p>Manejo de situaciones anormales</p><p>- En caso de fallo en el registro, debe activarse un respaldo alternativo.</p></td>
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
<td colspan="4"><p>Criterios de aceptación</p><p>- La interfaz se visualiza correctamente en distintos tamaños de pantalla.</p><p>- No se presentan desbordamientos ni elementos ocultos.</p></td>
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










<h1>Requisitos de Casos de Uso.</h1>

<h2>Diagrama UML de casos de uso.</h2>

<p><a href="https://drive.google.com/open?id=1_S3C4k7N0oDvtXIebcFDupXPOaXKEgQU&amp;usp=drive_copy"><u><strong>https://drive.google.com/open?id=1_S3C4k7N0oDvtXIebcFDupXPOaXKEgQU&amp;usp=drive_copy</strong></u></a></p>





  1. <strong>Caracterización de Casos de Uso</strong>




<table>
<tr>
<td></td>
<td colspan="3"><p><strong>Caso de Uso  N° 1</strong></p></td>
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
<td colspan="3"><p><strong>Caso de Uso N° 2</strong></p></td>
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
<td><p><strong>Postcondición</strong></p></td>
<td colspan="4"><p>El usuario debe estar registrado.</p></td>
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
<td></td>
</tr>
<tr>
<td><p>2</p></td>
<td></td>
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
<td colspan="3"><p><strong>Caso de Uso N° 3</strong></p></td>
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
<td colspan="2"><p><strong>Caso de Uso N° 4</strong></p></td>
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
<td colspan="2"><p><strong>Caso de Uso N° 5</strong></p></td>
<td colspan="2"></td>
</tr>
<tr>
<td><p><strong>Nombre</strong></p></td>
<td colspan="4"><p>Consultas y/o Reportes (PDF y Exel)</p></td>
</tr>
<tr>
<td><p><strong>Descripción</strong></p></td>
<td colspan="4"><p>Permite al usuario consultar y ver los reportes que ha generado.</p></td>
</tr>
<tr>
<td><p><strong>Prioridad</strong></p></td>
<td colspan="4"><p>Baja</p></td>
</tr>
<tr>
<td><p><strong>Precondición</strong></p></td>
<td colspan="4"><p>Debe haber reporte generados con anterioridad para su visualización</p></td>
</tr>
<tr>
<td rowspan="5"><p><strong>Secuencia normal</strong></p></td>
<td><p><strong>Paso</strong></p></td>
<td colspan="2"><p><strong>Acción</strong></p></td>
<td><p><strong>Sistema</strong></p></td>
</tr>
<tr>
<td><p><strong>1</strong></p></td>
<td colspan="2"><p>El usuario ingresa a la consulta de sus datos registrados</p></td>
<td><p>Genera gráficos de acuerdo a los datos recopilados hasta el momento</p></td>
</tr>
<tr>
<td><p><strong>2</strong></p></td>
<td colspan="2"></td>
<td><p>Guarda y Muestra sus hábitos de consumo</p></td>
</tr>
<tr>
<td><p><strong>3</strong></p></td>
<td colspan="2"></td>
<td><p>Genera predicciones para mejor administración de dispositivos</p></td>
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
