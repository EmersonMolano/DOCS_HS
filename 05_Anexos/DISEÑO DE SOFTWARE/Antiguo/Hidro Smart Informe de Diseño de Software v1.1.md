> **Documento histórico.** Conversión de [Hidro Smart Informe de Diseño de Software v1.1.docx](<Hidro Smart Informe de Diseño de Software v1.1.docx>); se conserva su contenido fuente sin actualizarlo.

<p><strong>Hidro Smart</strong></p>

<p><strong> Informe de diseño de software</strong></p>









<p>Emerson Calet Molano Cardozo</p>

<p>José Alejandro Montealegre Rodríguez</p>

<p>José David Amaya Mosquera</p>









<p>Instructor</p>

<p>José de Jesús Motta Vargas</p>









<p>Servicio Nacional de Aprendizaje - SENA</p>

<p>Análisis y Desarrollo de Software - ADSO</p>

<p>Ficha - 3145555</p>

<p>2026</p>

<p><strong>Resumen</strong></p>

<p>El presente Informe de Diseño de Software describe la arquitectura, módulos, base de datos, diagramas UML y especificaciones técnicas del sistema Hidro Smart, una solución IoT móvil para el monitoreo inteligente del consumo de agua en hogares. El sistema permite visualización en tiempo real, alertas automáticas, recomendaciones de ahorro y reportes exportables. Se utilizó Flutter para la aplicación móvil, Node.js para el backend y PostgreSQL como base de datos. El diseño se basa en el SRS v1 y fue validado mediante encuesta a usuarios.</p>

<p><em><strong>Palabras clave</strong></em><strong>:</strong> Consumo de agua, IoT, Flutter, Node.js, sostenibilidad, alertas inteligentes</p>





























<p><strong>Tabla de Contenido</strong></p>

<p><a href="#_heading=h.d1hleetmj24j">Introducción&emsp;4</a></p><p><a href="#_heading=h.3rsn0jftcn3f">Descripción general del sistema&emsp;7</a></p><p><a href="#_heading=h.7kvhk1f0253r">Arquitectura del Software&emsp;9</a></p><p><a href="#_heading=h.togpoklal21b">Tipo de Arquitectura&emsp;10</a></p><p><a href="#_heading=h.bbe6jwndolzx">Arquitectura en Capas&emsp;10</a></p><p><a href="#_heading=h.jkcxctbto64u">Flujo general de datos&emsp;11</a></p><p><a href="#_heading=h.g1mxuwqhjso">Diseño de Componentes o Módulos&emsp;11</a></p><p><a href="#_heading=h.tk6k6wtjjlqh">Diagramas del Sistema (UML)&emsp;13</a></p><p><a href="#_heading=h.hesvj2tnhzlg">Diagrama de Casos de Uso&emsp;14</a></p><p><a href="#_heading=h.ktlodyv2xkn5">Diagrama de Clases (Diagrama de Dominio)&emsp;14</a></p><p><a href="#_heading=h.ul0qdypr6xs7">Diagrama de Actividad&emsp;14</a></p><p><a href="#_heading=h.bduzeskg5w4r">Diagrama de Transición de Estados&emsp;14</a></p><p><a href="#_heading=h.3hxvlh27awmn">Diagrama de Secuencia&emsp;15</a></p><p><a href="#_heading=h.dkkjw8u9lj3f">Diagrama de Componentes&emsp;15</a></p><p><a href="#_heading=h.tep437g1snbm">Diagrama de Despliegue&emsp;15</a></p><p><a href="#_heading=h.aj61xybg5poc">Diseño de Base de Datos&emsp;16</a></p><p><a href="#_heading=h.wij1q3ebfrht">Modelo Entidad - Relación&emsp;16</a></p><p><a href="#_heading=h.3cf2lug8z0uv">Tablas principales&emsp;16</a></p><p><a href="#_heading=h.q0t8st7ik29t">Detalles de tablas principales (campos, llaves primarias y foráneas)&emsp;17</a></p><p><a href="#_heading=h.avcf1ghjhcob">Relaciones entre tablas&emsp;18</a></p><p><a href="#_heading=h.z931srpigzs2">Diseño de Interfaces&emsp;20</a></p><p><a href="#_heading=h.i8k0yf6xcobv">Prototipos de pantallas principales&emsp;20</a></p><p><a href="#_heading=h.qx4x2t5vukr2">Formularios principales&emsp;21</a></p><p><a href="#_heading=h.oixm0bteg8k1">Menús y navegación&emsp;21</a></p><p><a href="#_heading=h.1czvkc5kpe8l">Reglas de negocio&emsp;22</a></p><p><a href="#_heading=h.3akbsz46qze0">Seguridad del Sistema&emsp;24</a></p><p><a href="#_heading=h.uc37bgz2s0b9">Autenticación&emsp;24</a></p><p><a href="#_heading=h.4088ho9wzy1b">Autorización&emsp;24</a></p><p><a href="#_heading=h.rex3q8o18mqt">Control de acceso&emsp;24</a></p><p><a href="#_heading=h.cgryjwpjfyzm">Protección de datos&emsp;25</a></p><p><a href="#_heading=h.ogsevlvqk0er">Manejo de contraseñas&emsp;25</a></p><p><a href="#_heading=h.4itk8aeiqzr3">Especificaciones Técnicas&emsp;26</a></p><p><a href="#_heading=h.2zefyb2hq98b">Concideraciones de Implementación&emsp;28</a></p><p><a href="#_heading=h.shqznm85ulay">Estándares de codificación&emsp;28</a></p><p><a href="#_heading=h.1eho384lxhh7">Estructura del proyecto&emsp;28</a></p><p><a href="#_heading=h.k2o3tpk7a20w">Manejo de errores&emsp;29</a></p><p><a href="#_heading=h.33b5au71g8tr">Pruebas del sistema&emsp;29</a></p><p><a href="#_heading=h.sgim7gmab38c">Otras consideraciones&emsp;29</a></p><p><a href="#_heading=h.bvdaamrnil02">Referencias&emsp;31</a></p>











<h1>Introducción</h1>

<p>El presente documento constituye el Informe de Diseño de Software del proyecto Hidro Smart, desarrollado como parte del Tecnólogo en Análisis y Desarrollo de Software del Servicio Nacional de Aprendizaje (SENA), ficha 3145555.</p>

<p>Propósito del documento: Este documento tiene como propósito principal describir de forma detallada y técnica cómo se va a construir el sistema Hidro Smart, tomando como base la Especificación de Requisitos de Software (SRS v1). Sirve como guía oficial para el equipo de desarrollo durante las fases de construcción de la base de datos, desarrollo del frontend móvil, implementación del backend, codificación de la lógica de negocio, integración de IoT y realización de pruebas funcionales. Así mismo, garantiza la trazabilidad entre los requerimientos definidos y su implementación técnica.</p>

<p>Alcance del sistema Hidro Smart es una solución tecnológica compuesta por un medidor inteligente de agua conectado mediante IoT y una aplicación móvil multiplataforma. El sistema permite a los usuarios domésticos monitorear su consumo de agua en tiempo real, clasificarlo por actividades (ducha, lavado, aseo, etc.), recibir alertas automáticas por consumo excesivo o posibles fugas, generar recomendaciones personalizadas de ahorro y exportar reportes en PDF y Excel.</p>

<p>El alcance del proyecto incluye:</p>

<p>•&emsp;Gestión completa de usuarios, roles y autenticación.</p>

<p>•&emsp;Creación y administración de hogares (proyectos).</p>

<p>•&emsp;Vinculación y control de dispositivos IoT.</p>

<p>•&emsp;Visualización de consumo en tiempo real y histórico.</p>

<p>•&emsp;Configuración de topes, alertas y recomendaciones.</p>

<p>•&emsp;Generación de reportes y análisis (incluyendo hábitos de consumo y modelo predictivo básico).</p>

<p>Quedan fuera del alcance inicial la integración con sistemas externos de acueductos públicos y la versión iOS completa (se prioriza Android 9+).</p>

<p>Definiciones y términos</p>

<p>•&emsp;IoT (Internet of Things): Red de dispositivos físicos (medidores de agua) conectados a internet que envían datos de consumo en tiempo real.</p>

<p>•&emsp;Hogar/Proyecto: Entidad que agrupa usuarios, dispositivos y configuraciones de consumo dentro del sistema.</p>

<p>•&emsp;Estrato socioeconómico: Clasificación usada para establecer valores base de referencia de consumo.</p>

<p>•&emsp;Token Access/Refresh: Mecanismos de autenticación JWT para gestionar sesiones seguras.</p>

<p>•&emsp;Lectura: Registro individual de caudal y consumo enviado por el dispositivo IoT.</p>

<p>•&emsp;Alerta: Notificación automática generada cuando se supera un tope configurado o se detecta una anomalía.</p>

<p><strong>Referencias de documentos relacionados</strong></p>

<p>•&emsp;Amaya Mosquera, J. D., Molano Cardozo, E. C. &amp; Montealegre Rodríguez, J. A. (2025). Diseño conceptual y arquitectura de información. SENA.</p>

<p><a href="https://drive.google.com/drive/folders/1O1brvYi-oYlElVLB6hLb7HU881uh8dJU?usp=sharing"><u>https://drive.google.com/drive/folders/1O1brvYi-oYlElVLB6hLb7HU881uh8dJU?usp=sharing</u></a></p>

<p>•&emsp;Motta Vargas, J. de J. (2025). Acta General del Proceso del Proyecto Hidro Smart. SENA.</p>

<p><a href="https://drive.google.com/drive/folders/1Ts6xxuiW3DcT0RjO286Ns21UE2N0LR2N?usp=drive_link"><u>https://drive.google.com/drive/folders/1Ts6xxuiW3DcT0RjO286Ns21UE2N0LR2N?usp=drive_link</u></a></p>

<p>•&emsp;Amaya Mosquera, J. D. et al. (2026). Encuesta sobre el Consumo de Agua – Hidro Smart [Formulario Google].</p>

<p><a href="https://forms.gle/er5mLrWgxdPGptHL9"><u>https://forms.gle/er5mLrWgxdPGptHL9</u></a></p>

<p>•&emsp;Equipo Hidro Smart. (2026). Mapa de Procesos.</p>

<p><a href="https://drive.google.com/drive/folders/1l84t0bhXedeTjBIChnlTzT97f-v6jG-g?usp=drive_link"><u>https://drive.google.com/drive/folders/1l84t0bhXedeTjBIChnlTzT97f-v6jG-g?usp=drive_link</u></a></p>

<p>•&emsp;Equipo Hidro Smart. (2026). Modelo Entidad-Relación (MER).</p>

<p><a href="https://drive.google.com/drive/folders/10q-U9_k-FVHzPtbMjG2GP4O6VEaU28QJ?usp=drive_link"><u>https://drive.google.com/drive/folders/10q-U9_k-FVHzPtbMjG2GP4O6VEaU28QJ?usp=drive_link</u></a></p>

<p>•&emsp;Equipo Hidro Smart. (2026). Wireframes de Interfaz – Figma [Prototipo web y móvil].</p>

<p><a href="https://drive.google.com/drive/folders/1W8b38qeR7oNWkIHniYXydKEc5ZTbtNnn?usp=drive_link"><u>https://drive.google.com/drive/folders/1W8b38qeR7oNWkIHniYXydKEc5ZTbtNnn?usp=drive_link</u></a></p>

















<h1>Descripción general del sistema</h1>

<p>Hidro Smart es un sistema inteligente diseñado para resolver el problema de la falta de visibilidad y control del consumo de agua en los hogares colombianos. Combina un medidor físico inteligente (IoT) con una aplicación móvil que procesa, analiza y presenta la información en tiempo real.</p>

<p>El objetivo del sistema es diseñar e implementar una solución tecnológica que permita a los usuarios domésticos monitorear, controlar y optimizar su consumo diario de agua, proporcionando información detallada por actividad, alertas preventivas y recomendaciones prácticas para reducir el desperdicio y promover el uso responsable del recurso hídrico.</p>

<p>El sistema contempla tres tipos de usuarios principales:</p>

<p>•&emsp;Usuario doméstico: Persona que utiliza la aplicación para consultar su consumo, recibir alertas y seguir recomendaciones.</p>

<p>•&emsp;Administrador: Supervisa hogares, usuarios y dispositivos dentro del sistema.</p>

<p>•&emsp;Soporte Técnico: Realiza mantenimiento, calibraciones y soporte de conectividad.</p>

<p>El sistema se organiza en los siguientes módulos principales:</p>


<table>
<tr>
<td><p>Módulo</p></td>
<td><p>Función principal</p></td>
</tr>
<tr>
<td><p>Gestión de Usuarios y Roles</p></td>
<td><p>Registro, autenticación, recuperación de contraseña y asignación de roles.</p></td>
</tr>
<tr>
<td><p>Gestión de Hogares (Proyectos)</p></td>
<td><p>Creación, asignación de titular y miembros, estratificación y suspensión.</p></td>
</tr>
<tr>
<td><p>Vinculación de Dispositivos IoT</p></td>
<td><p>Registro, activación y control de medidores inteligentes.</p></td>
</tr>
<tr>
<td><p>Monitoreo en Tiempo Real</p></td>
<td><p>Visualización del consumo actual y por actividad.</p></td>
</tr>
<tr>
<td><p>Alertas y Recomendaciones</p></td>
<td><p>Detección automática de excesos, fugas y sugerencias de ahorro.</p></td>
</tr>
<tr>
<td><p>Reportes y Análisis</p></td>
<td><p>Gráficos comparativos, hábitos de consumo, modelo predictivo y exportación PDF/Excel.</p></td>
</tr>
<tr>
<td><p>Configuraciones del Sistema</p></td>
<td><p>Topes de consumo, idioma, moneda, tema y controles de auditoría.</p></td>
</tr>
</table>




<p>Hidro Smart opera en un entorno doméstico conectado. El flujo principal es el siguiente:</p>

<p>•&emsp;Los medidores inteligentes (IoT) instalados en la tubería de agua envían datos de caudal de forma continua.</p>

<p>•&emsp;Estos datos viajan por internet (protocolo MQTT) hacia el servidor backend.</p>

<p>•&emsp;El backend procesa la información, la almacena en la base de datos y la envía en tiempo real a la aplicación móvil del usuario.</p>

<p>•&emsp;El usuario interactúa únicamente a través de su teléfono móvil (Android 9+).</p>

<p>El sistema no interactúa con servicios externos de acueductos o facturación en esta versión, pero está diseñado para futuras integraciones. Todo el procesamiento y almacenamiento ocurre en la nube, garantizando acceso 24/7 desde cualquier lugar con conexión a internet.</p>



























<h1>Arquitectura del software</h1>

<p>El sistema Hidro Smart adopta una arquitectura cliente-servidor con integración IoT, organizada en capas claramente separadas. Esta estructura permite escalabilidad, mantenimiento sencillo y una clara separación de responsabilidades entre la interfaz de usuario, la lógica de negocio y el almacenamiento de datos.</p>

<p>Se utiliza principalmente el patrón MVC (Model-View-Controller) adaptado al desarrollo móvil con Flutter, combinado con una arquitectura en capas y comunicación en tiempo real mediante WebSockets y MQTT.</p>

<h2>Tipo de Arquitectura</h2>

<p>•&emsp;Arquitectura cliente-servidor: La aplicación móvil (cliente) se comunica con un servidor backend a través de API REST y WebSockets.</p>

<p>•&emsp;Arquitectura en capas: Separación lógica en tres capas principales más una capa de integración IoT.</p>

<p>•&emsp;Patrón MVC: Implementado en el frontend (Flutter) y backend (Node.js).</p>

<h3>Arquitectura en Capas</h3>


<table>
<tr>
<td><p>Capa</p></td>
<td><p>Descripción</p></td>
<td><p>Tecnologías principales</p></td>
</tr>
<tr>
<td><p>1. Capa de Presentación</p></td>
<td><p>Interfaz de usuario donde el usuario interactúa con el sistema.</p></td>
<td><p>Flutter (Dart) – App móvil Android 9+</p></td>
</tr>
<tr>
<td><p>2. Capa Lógica de Negocio</p></td>
<td><p>Procesa reglas de negocio, cálculos, alertas y orquestación de datos.</p></td>
<td><p>Node.js + Express + Socket.io</p></td>
</tr>
<tr>
<td><p>3. Capa de Datos</p></td>
<td><p>Almacenamiento persistente de toda la información del sistema.</p></td>
<td><p>PostgreSQL</p></td>
</tr>
<tr>
<td><p>4. Capa de Integración IoT</p></td>
<td><p>Comunicación con los medidores físicos de agua.</p></td>
<td><p>MQTT (protocolo) + ESP32</p></td>
</tr>
</table>




<h2>Flujo general de datos</h2>

<p>1.&emsp;El medidor IoT envía lecturas de consumo → MQTT → Backend.</p>

<p>2.&emsp;El backend procesa la información (capa lógica) y la guarda en PostgreSQL.</p>

<p>3.&emsp;La aplicación móvil (Flutter) recibe los datos actualizados en tiempo real mediante WebSockets.</p>

<p>4.&emsp;El usuario visualiza la información y configura alertas/topes desde la capa de presentación.</p>



<p>Esta arquitectura garantiza:</p>

<p>•&emsp;Separación clara de responsabilidades.</p>

<p>•&emsp;Fácil escalabilidad (se puede agregar más servidores o dispositivos IoT).</p>

<p>•&emsp;Mantenimiento independiente de cada capa.</p>

<p>•&emsp;Soporte para tiempo real (lecturas y alertas instantáneas).</p>









<h1>Diseño de Componentes o Módulos</h1>

<p>A continuación se describen los módulos principales del sistema Hidro Smart. Cada módulo incluye su nombre, descripción, entradas, procesos principales y salidas esperadas.</p>


<table>
<tr>
<td><p>Módulo</p></td>
<td><p>Descripción</p></td>
<td><p>Entradas</p></td>
<td><p>Procesos principales</p></td>
<td><p>Salidas</p></td>
</tr>
<tr>
<td><p>Autenticación y Usuarios (RF1)</p></td>
<td><p>Gestiona el registro, inicio de sesión, roles y seguridad de los usuarios.</p></td>
<td><p>Correo electrónico, contraseña, datos personales</p></td>
<td><p>Validación de credenciales, generación de tokens JWT, asignación de roles, bloqueo por intentos fallidos</p></td>
<td><p>Token de sesión (Access + Refresh), perfil de usuario, mensaje de error</p></td>
</tr>
<tr>
<td><p>Vincular Dispositivos IoT (RF2)</p></td>
<td><p>Permite registrar y asociar medidores inteligentes al sistema.</p></td>
<td><p>Código único del dispositivo, nombre, tipo</p></td>
<td><p>Validación de unicidad del ID, asociación al hogar, cambio de estado (activo/suspendido)</p></td>
<td><p>Dispositivo registrado, confirmación de vinculación, estado actualizado</p></td>
</tr>
<tr>
<td><p>Gestión de Hogares (Proyectos) (RF3)</p></td>
<td><p>Administra la creación y configuración de hogares y sus usuarios.</p></td>
<td><p>Nombre del hogar, dirección, estrato, usuarios</p></td>
<td><p>Creación de hogar, asignación de titular y miembros, configuración de estratificación y topes</p></td>
<td><p>Hogar creado, lista de usuarios asociados, confirmación de asignación</p></td>
</tr>
<tr>
<td><p>Configuraciones del Sistema (RF4)</p></td>
<td><p>Permite personalizar alertas, topes de consumo y preferencias generales.</p></td>
<td><p>Topes de consumo, umbrales de alerta, idioma, moneda, tema</p></td>
<td><p>Validación de valores, almacenamiento por hogar/usuario, activación de reglas</p></td>
<td><p>Configuración guardada, alertas activadas, preferencias aplicadas</p></td>
</tr>
<tr>
<td><p>Monitoreo en Tiempo Real y Alertas (RF5)</p></td>
<td><p>Visualiza consumo actual y genera alertas automáticas.</p></td>
<td><p>Datos de caudal del dispositivo IoT</p></td>
<td><p>Procesamiento de lecturas, clasificación por actividad, comparación con topes, generación de alertas</p></td>
<td><p>Consumo en tiempo real, gráfico actualizado, notificaciones push</p></td>
</tr>
<tr>
<td><p>Reportes y Análisis (RF5)</p></td>
<td><p>Genera informes históricos, gráficos y predicciones de consumo.</p></td>
<td><p>Rango de fechas, hogar seleccionado</p></td>
<td><p>Consulta de datos históricos, generación de gráficos, cálculo de hábitos y predicción, exportación</p></td>
<td><p>Reportes PDF/Excel, gráficos comparativos, hábitos de consumo, predicción</p></td>
</tr>
</table>




<h1>Diagramas del Sistema (UML)</h1>

<p>Los diagramas UML representan gráficamente el diseño del sistema Hidro Smart, facilitando la comprensión de su estructura, comportamiento y componentes. A continuación se presentan los diagramas más relevantes elaborados para este proyecto.</p>

<h2>Diagrama de Casos de Uso</h2>

<p>Representa los actores (Usuario, Administrador, Soporte Técnico y Sistema IoT) y los casos de uso principales del sistema. Archivo fuente: Diagramas de Casos de Uso.drawio</p>

<p><a href="https://drive.google.com/drive/folders/1_S3C4k7N0oDvtXIebcFDupXPOaXKEgQU?usp=drive_link"><u>https://drive.google.com/drive/folders/1_S3C4k7N0oDvtXIebcFDupXPOaXKEgQU?usp=drive_link</u></a></p>

<h2>Diagrama de Clases (Diagrama de Dominio)</h2>

<p>Muestra las principales entidades del sistema y sus relaciones (usuarios, hogares, dispositivos, lecturas, alertas, etc.). Archivo fuente: diagrama de dominio.drawio + Copia de MER.png</p>

<p><a href="https://drive.google.com/drive/folders/1KfAR3c4ENyvTRjR08R2E1Au3oeB63phK?usp=drive_link"><u>https://drive.google.com/drive/folders/1KfAR3c4ENyvTRjR08R2E1Au3oeB63phK?usp=drive_link</u></a></p>

<h2>Diagrama de Actividad</h2>

<p>Describe el flujo detallado de los procesos principales (RF1 a RF5). Archivo fuente: Diagramas de Actividades.drawio (5 diagramas: RF1, RF2, RF3, RF4 y RF5)</p>

<p><a href="https://drive.google.com/drive/folders/1lq7OcCKL2-YpipC9u8UQzUvz7BH7togz?usp=drive_link"><u>https://drive.google.com/drive/folders/1lq7OcCKL2-YpipC9u8UQzUvz7BH7togz?usp=drive_link</u></a></p>

<h2>Diagrama de Transición de Estados</h2>

<p>Ilustra los diferentes estados por los que pueden pasar los objetos clave (sesión de usuario, dispositivo, hogar, alerta). Archivo fuente: diagrama de trancicion de estados.drawio</p>

<p><a href="https://drive.google.com/drive/folders/1YRPdO0aztE2tG7kAMc2_wJRs9acPrxF-?usp=drive_link"><u>https://drive.google.com/drive/folders/1YRPdO0aztE2tG7kAMc2_wJRs9acPrxF-?usp=drive_link</u></a></p>

<h2>Diagrama de Secuencia</h2>

<p>Representará el flujo temporal de mensajes entre objetos para los casos más críticos (Login, Lectura en tiempo real y Generación de alerta). Estado: Pendiente (se recomienda crear en Draw.io o PlantUML).</p>

<p>[Insertar imagen del Diagrama de Transición de Estados aquí]</p>

<h2>Diagrama de Componentes</h2>

<p>Muestra la organización física de los componentes del sistema (App Flutter, Backend Node.js, Base de datos PostgreSQL y dispositivos IoT). Estado: Pendiente.</p>

<p>[Insertar imagen del Diagrama de Transición de Estados aquí]</p>

<h2>Diagrama de Despliegue</h2>

<p>Ilustra la infraestructura donde se ejecutarán los componentes (dispositivos IoT, servidor en la nube y dispositivos móviles del usuario). Estado: Pendiente.</p>

<p>[Insertar imagen del Diagrama de Transición de Estados aquí]</p>

















<h1>Diseño de Base de Datos</h1>

<p>El diseño de la base de datos se realizó bajo el modelo relacional, garantizando la integridad de los datos, la normalización y el cumplimiento de todos los requerimientos funcionales y no funcionales definidos en el SRS v1.</p>

<h2>Modelo Entidad - Relación</h2>

<p>El modelo Entidad-Relación (MER) representa todas las entidades principales del sistema y sus relaciones.</p>

<p>Archivo fuente: Copia de MER.png</p>

<p><a href="https://drive.google.com/drive/folders/10q-U9_k-FVHzPtbMjG2GP4O6VEaU28QJ?usp=drive_link"><u>https://drive.google.com/drive/folders/10q-U9_k-FVHzPtbMjG2GP4O6VEaU28QJ?usp=drive_link</u></a></p>

<h2>Tablas principales</h2>


<table>
<tr>
<td><p>Tabla</p></td>
<td><p>Descripción</p></td>
</tr>
<tr>
<td><p>usuarios</p></td>
<td><p>Información de todos los usuarios del sistema (domésticos, administradores y soporte).</p></td>
</tr>
<tr>
<td><p>roles</p></td>
<td><p>Definición de roles y permisos del sistema.</p></td>
</tr>
<tr>
<td><p>hogares</p></td>
<td><p>Entidad que representa cada hogar o proyecto registrado.</p></td>
</tr>
<tr>
<td><p>dispositivos</p></td>
<td><p>Registro de medidores inteligentes IoT.</p></td>
</tr>
<tr>
<td><p>lecturas (consumos)</p></td>
<td><p>Registro detallado de cada lectura de consumo enviada por los dispositivos.</p></td>
</tr>
<tr>
<td><p>alertas</p></td>
<td><p>Registro de todas las alertas generadas por el sistema.</p></td>
</tr>
<tr>
<td><p>recomendaciones</p></td>
<td><p>Sugerencias automáticas de ahorro generadas según los hábitos.</p></td>
</tr>
<tr>
<td><p>auditorias</p></td>
<td><p>Bitácora completa de todas las acciones críticas realizadas por los usuarios.</p></td>
</tr>
<tr>
<td><p>estratos</p></td>
<td><p>Tabla de referencia para estratos socioeconómicos y valores base.</p></td>
</tr>
<tr>
<td><p>usuarios_hogares</p></td>
<td><p>Relación muchos a muchos entre usuarios y hogares.</p></td>
</tr>
<tr>
<td><p>dispositivos_hogares</p></td>
<td><p>Relación muchos a muchos entre dispositivos y hogares.</p></td>
</tr>
</table>




<h2>Detalles de tablas principales (campos, llaves primarias y foráneas)</h2>

<p>Tabla: usuarios</p>

<p>•&emsp;Llave primaria:id_usuario (SERIAL)</p>

<p>•&emsp;Campos principales: nombre, correo_electronico (UNIQUE), contrasena_hash, tipo_documento, numero_documento (UNIQUE), telefono, ciudad, id_rol (FK), estado, access_token, refresh_token, fecha_creacion</p>

<p>•&emsp;Llaves foráneas:id_rol → roles(id_rol)</p>

<p>Tabla: hogares</p>

<p>•&emsp;Llave primaria:id_hogar (SERIAL)</p>

<p>•&emsp;Campos principales: nombre_hogar, direccion, ciudad, id_estrato (FK), id_usuario_titular (FK), tope_consumo_mensual, fecha_creacion, estado</p>

<p>•&emsp;Llaves foráneas:id_estrato → estratos(id_estrato), id_usuario_titular → usuarios(id_usuario)</p>

<p>Tabla: dispositivos</p>

<p>•&emsp;Llave primaria:id_dispositivo (SERIAL)</p>

<p>•&emsp;Campos principales: codigo_dispositivo (UNIQUE), nombre_dispositivo, tipo_dispositivo, marca, modelo, ubicacion, fecha_instalacion, ultima_calibracion, estado</p>

<p>•&emsp;Llaves foráneas: Ninguna (se relaciona mediante tabla intermedia)</p>

<p>Tabla: lecturas</p>

<p>•&emsp;Llave primaria:id_lectura (SERIAL)</p>

<p>•&emsp;Campos principales: id_dispositivo (FK), fecha_hora, consumo_litros, tipo_actividad, temperatura_agua, presion_agua, datos_raw</p>

<p>•&emsp;Llaves foráneas:id_dispositivo → dispositivos(id_dispositivo)</p>

<p>Tabla: alertas</p>

<p>•&emsp;Llave primaria:id_alerta (SERIAL)</p>

<p>•&emsp;Campos principales: id_hogar (FK), tipo_alerta, severidad, mensaje, consumo_actual, tope_configurado, fecha_generacion, leida, estado</p>

<p>•&emsp;Llaves foráneas:id_hogar → hogares(id_hogar)</p>

<p>Tabla: usuarios_hogares (relación muchos a muchos)</p>

<p>•&emsp;Llave primaria:id_usuario_hogar (SERIAL)</p>

<p>•&emsp;Campos principales: id_usuario (FK), id_hogar (FK), tipo_usuario, funciones_especiales, fecha_vinculacion, estado</p>

<h2>Relaciones entre tablas</h2>

<p>•&emsp;Un usuario puede pertenecer a muchos hogares (N:N) → tabla usuarios_hogares</p>

<p>•&emsp;Un hogar puede tener muchos dispositivos (1:N) → tabla intermedia dispositivos_hogares</p>

<p>•&emsp;Un dispositivo genera muchas lecturas (1:N)</p>

<p>•&emsp;Un hogar puede generar muchas alertas y recomendaciones (1:N)</p>

<p>•&emsp;Toda acción crítica queda registrada en auditorias</p>

<p>Todas las relaciones están implementadas con llaves foráneas y restricciones de integridad referencial.</p>

































<h1>Diseño de Interfaces</h1>

<p>El diseño de interfaces de Hidro Smart busca ofrecer una experiencia intuitiva, moderna y responsive, optimizada principalmente para dispositivos móviles (Android 9+). Todos los prototipos fueron creados en Figma y siguen los principios de usabilidad y accesibilidad.</p>

<p><a href="https://drive.google.com/drive/folders/1Ittp-5IzEM4EQfMXPU3OtklOq3dttgvD?usp=drive_link"><u>https://drive.google.com/drive/folders/1Ittp-5IzEM4EQfMXPU3OtklOq3dttgvD?usp=drive_link</u></a></p>

<h2>Prototipos de pantallas principales</h2>

<p>A continuación se describen las interfaces clave del sistema:</p>

<p>•&emsp;Login / Registro Pantalla inicial con pestañas “Iniciar Sesión” y “Registrarse”. Incluye campos de correo, contraseña, opción “Olvidaste tu contraseña?” y botón de recuperación.</p>

<p>•&emsp;Recuperar Contraseña Modal o pantalla dedicada donde el usuario ingresa su correo y recibe un enlace temporal (válido por 1 hora).</p>

<p>•&emsp;Panel Principal (Dashboard) Muestra el consumo actual en tiempo real (gauge), consumo por actividad (gráfico circular), consumo del día/mes y alertas destacadas.</p>

<p>•&emsp;Gestión de Hogares Lista de hogares asociados al usuario, botón para crear nuevo hogar, asignación de miembros y configuración de estratificación.</p>

<p>•&emsp;Vincular Dispositivos Formulario para registrar nuevo medidor IoT (código único, nombre, ubicación).</p>

<p>•&emsp;Monitoreo en Tiempo Real Pantalla con gráfico de consumo en vivo y breakdown por actividad (ducha, lavado, aseo, etc.).</p>

<p>•&emsp;Reportes y Análisis Selector de período (diario, semanal, mensual, anual), gráficos comparativos y botones de exportación (PDF y Excel).</p>

<p>•&emsp;Configuraciones Ajustes de topes de consumo, alertas, idioma, moneda, tema visual y controles de auditoría.</p>

<p>•&emsp;Alertas Lista de notificaciones con filtro por estado (leídas / no leídas) y detalle de cada alerta.</p>

<h2>Formularios principales</h2>

<p>•&emsp;Formulario de registro de usuario (nombre, correo, contraseña, documento).</p>

<p>•&emsp;Formulario de creación de hogar (nombre, dirección, estrato).</p>

<p>•&emsp;Formulario de vinculación de dispositivo (código único).</p>

<p>•&emsp;Formulario de configuración de alertas y topes de consumo.</p>

<h2>Menús y navegación</h2>

<p>•&emsp;Menú inferior (Bottom Navigation): Inicio, Hogares, Dispositivos, Reportes, Configuración.</p>

<p>•&emsp;Menú lateral (Drawer): Perfil de usuario, Ayuda, Cerrar sesión y auditoría (para administradores).</p>

<p>•&emsp;Flujo de navegación principal:</p>

<p>1.&emsp;Login → Dashboard</p>

<p>2.&emsp;Dashboard → Menú inferior (Hogares / Dispositivos / Reportes)</p>

<p>3.&emsp;Desde cualquier pantalla → Acceso rápido a Alertas (icono de campana)</p>

<p>Todas las interfaces son responsivas y siguen un diseño consistente con colores institucionales (azules y verdes) que transmiten confianza y sostenibilidad.</p>







<h1>Reglas de negocio</h1>

<p>Las reglas de negocio definen las condiciones, restricciones y políticas que debe cumplir el sistema Hidro Smart para garantizar su correcto funcionamiento, integridad de datos y cumplimiento de los requerimientos funcionales establecidos en el SRS.</p>

<p>A continuación se detallan las reglas principales:</p>

<p>•&emsp;Un usuario no puede registrarse con un correo electrónico o número de documento ya existente en el sistema.</p>

<p>•&emsp;La contraseña debe tener mínimo 8 caracteres e incluir letras y números; se almacena siempre cifrada en la base de datos.</p>

<p>•&emsp;Solo puede existir un usuario titular por hogar; el resto de miembros pueden tener roles adicionales con permisos específicos.</p>

<p>•&emsp;Un dispositivo IoT solo puede estar vinculado a un único hogar al mismo tiempo y su código identificador debe ser único.</p>

<p>•&emsp;No se permite registrar un dispositivo que ya se encuentre activo en otro hogar.</p>

<p>•&emsp;El consumo solo se registra si el dispositivo está activo y el hogar no se encuentra suspendido.</p>

<p>•&emsp;Toda alerta se genera automáticamente cuando el consumo supera el tope configurado por el usuario o se detecta un flujo continuo sospechoso (posible fuga).</p>

<p>•&emsp;Un hogar suspendido no genera alertas ni notificaciones hasta que sea reactivado.</p>

<p>•&emsp;Los reportes y gráficos solo pueden generarse para hogares y dispositivos asociados al usuario autenticado.</p>

<p>•&emsp;El valor del tope de consumo debe ser un número positivo y mayor a cero.</p>

<p>•&emsp;Las recomendaciones de ahorro se generan exclusivamente a partir de datos históricos reales del hogar.</p>

<p>•&emsp;Toda acción crítica realizada por un usuario (creación de hogar, suspensión de dispositivo, cambio de tope, etc.) queda registrada en la tabla de auditoría.</p>

<p>Estas reglas se aplican en todas las capas del sistema (frontend, backend y base de datos) mediante validaciones y restricciones para garantizar la consistencia y el cumplimiento de los requerimientos funcionales RF1 a RF5.</p>

































<h1>Seguridad del Sistema</h1>

<p>El sistema Hidro Smart implementa múltiples capas de seguridad para proteger la información de los usuarios, garantizar la integridad de los datos y cumplir con la normativa colombiana (Ley 1581 de 2012). Los mecanismos de protección se aplican en todas las capas del sistema (frontend, backend y base de datos).</p>

<h2>Autenticación</h2>

<p>•&emsp;Se utiliza JWT (JSON Web Tokens) con tokens de acceso (Access Token) y tokens de refresco (Refresh Token).</p>

<p>•&emsp;El Access Token tiene una duración corta (15 minutos) y el Refresh Token permite renovarlo automáticamente sin volver a iniciar sesión.</p>

<p>•&emsp;Autenticación de dos factores (2FA) opcional en futuras versiones.</p>

<p>•&emsp;Bloqueo temporal de cuenta después de 5 intentos fallidos (15 minutos).</p>

<h2>Autorización</h2>

<p>•&emsp;Se implementa RBAC (Role-Based Access Control) con tres roles principales:</p>

<p>o&emsp;Usuario doméstico</p>

<p>o&emsp;Administrador</p>

<p>o&emsp;Soporte Técnico</p>

<p>•&emsp;Cada rol tiene permisos específicos definidos en la tabla roles y permisos.</p>

<p>•&emsp;El middleware del backend valida el rol en cada solicitud protegida.</p>

<h2>Control de acceso</h2>

<p>•&emsp;Todas las rutas sensibles están protegidas por middleware de autenticación.</p>

<p>•&emsp;Control de acceso basado en el hogar: un usuario solo puede ver y modificar los datos de los hogares a los que está vinculado.</p>

<p>•&emsp;Rate limiting para prevenir ataques de fuerza bruta y DDoS.</p>

<p>•&emsp;Registro completo de todas las acciones críticas en la tabla auditorias (quién, qué, cuándo y desde qué IP).</p>

<h2>Protección de datos</h2>

<p>•&emsp;Todas las comunicaciones se realizan mediante HTTPS/TLS 1.3.</p>

<p>•&emsp;Protección contra SQL Injection mediante consultas parametrizadas (prepared statements).</p>

<p>•&emsp;Datos sensibles (contraseñas, tokens) se almacenan cifrados.</p>

<p>•&emsp;Copias de seguridad automáticas diarias con cifrado AES-256.</p>

<p>•&emsp;Cumplimiento total de la Ley 1581 de 2012 (protección de datos personales).</p>

<h2>Manejo de contraseñas</h2>

<p>•&emsp;Las contraseñas nunca se almacenan en texto plano.</p>

<p>•&emsp;Se aplican reglas de complejidad: mínimo 8 caracteres, al menos una letra y un número.</p>

<p>•&emsp;Hashing con bcrypt (cost factor 12) para mayor seguridad.</p>

<p>•&emsp;Opción de recuperación de contraseña mediante enlace temporal enviado al correo (válido por 1 hora).</p>

<p>•&emsp;Opción de cambio obligatorio de contraseña en el primer inicio de sesión.</p>











<h1>Especificaciones Técnicas</h1>

<p>A continuación, se detallan las tecnologías seleccionadas para el desarrollo de Hidro Smart, garantizando alto rendimiento, escalabilidad, seguridad y facilidad de mantenimiento.</p>


<table>
<tr>
<td><p>Componente</p></td>
<td><p>Tecnología utilizada</p></td>
<td><p>Justificación</p></td>
</tr>
<tr>
<td><p>Frontend (App móvil)</p></td>
<td><p>Flutter (Dart)</p></td>
<td><p>Multiplataforma, alto rendimiento y excelente experiencia de usuario en Android 9+</p></td>
</tr>
<tr>
<td><p>Backend</p></td>
<td><p>Node.js + Express + Socket.io</p></td>
<td><p>Rápido, escalable y nativo para tiempo real (WebSockets)</p></td>
</tr>
<tr>
<td><p>Base de datos</p></td>
<td><p>PostgreSQL</p></td>
<td><p>Relacional robusta, soporta grandes volúmenes de lecturas IoT y consultas complejas</p></td>
</tr>
<tr>
<td><p>Comunicación IoT</p></td>
<td><p>MQTT (protocolo)</p></td>
<td><p>Ligero, eficiente y diseñado especialmente para dispositivos de bajo consumo</p></td>
</tr>
<tr>
<td><p>Notificaciones push</p></td>
<td><p>Firebase Cloud Messaging (FCM)</p></td>
<td><p>Entrega instantánea y confiable de alertas</p></td>
</tr>
<tr>
<td><p>Generación de reportes</p></td>
<td><p>pdf-lib + exceljs</p></td>
<td><p>Exportación nativa a PDF y Excel desde el backend</p></td>
</tr>
<tr>
<td><p>Autenticación</p></td>
<td><p>JWT (JSON Web Tokens) + bcrypt</p></td>
<td><p>Seguridad estándar en aplicaciones modernas</p></td>
</tr>
<tr>
<td><p>Control de versiones</p></td>
<td><p>Git + GitHub</p></td>
<td><p>Colaboración en equipo y control de cambios</p></td>
</tr>
<tr>
<td><p>Entorno de desarrollo</p></td>
<td><p>Visual Studio Code + Android Studio</p></td>
<td><p>Herramientas gratuitas y altamente productivas</p></td>
</tr>
<tr>
<td><p>Despliegue</p></td>
<td><p>Railway / Render (backend) + Play Store (app)</p></td>
<td><p>Fácil, económico y escalable</p></td>
</tr>
</table>
































<h1>Concideraciones de Implementación</h1>

<p>Esta sección describe los aspectos prácticos y técnicos que se tendrán en cuenta durante la fase de construcción del sistema Hidro Smart, con el fin de garantizar calidad, mantenibilidad, seguridad y cumplimiento de los estándares del SENA.</p>

<h2>Estándares de codificación</h2>

<p>•&emsp;Frontend (Flutter): Uso de camelCase, reglas de Dart (effective_dart) y formato automático con dart format.</p>

<p>•&emsp;Backend (Node.js): ESLint + Prettier con configuración Airbnb. Nombres de variables y funciones en camelCase, constantes en UPPER_SNAKE_CASE.</p>

<p>•&emsp;Base de datos: snake_case para nombres de tablas y columnas.</p>

<p>•&emsp;Comentarios obligatorios en funciones críticas y commits descriptivos en Git.</p>

<h2>Estructura del proyecto</h2>

<p>Frontend (Flutter):</p>

<p>text</p>

<p>/lib</p>

<p>├── core/              (configuración, temas, constantes)</p>

<p>├── features/          (autenticación, hogares, reportes, etc.)</p>

<p>├── models/            (clases de datos)</p>

<p>├── services/          (API, MQTT, notificaciones)</p>

<p>├── widgets/           (componentes reutilizables)</p>

<p>└── main.dart</p>

<p>Backend (Node.js):</p>

<p>text</p>

<p>/src</p>

<p>├── config/            (base de datos, JWT, entorno)</p>

<p>├── controllers/       (lógica de cada módulo)</p>

<p>├── routes/            (definición de endpoints)</p>

<p>├── middleware/        (autenticación, validaciones)</p>

<p>├── models/            (modelos Sequelize o raw SQL)</p>

<p>├── services/          (MQTT, alertas, reportes)</p>

<p>└── utils/             (manejo de errores, logs)</p>

<h2>Manejo de errores</h2>

<p>•&emsp;Sistema centralizado de excepciones en backend (clase AppError).</p>

<p>•&emsp;Respuestas HTTP estandarizadas (400, 401, 403, 500) con mensajes claros pero seguros.</p>

<p>•&emsp;Logging completo con Winston (nivel error, warn e info).</p>

<p>•&emsp;Manejo de errores en Flutter con try-catch y mensajes amigables al usuario.</p>

<p>•&emsp;Todos los errores críticos se registran en la tabla auditorias.</p>

<h2>Pruebas del sistema</h2>

<p>•&emsp;Pruebas unitarias: Jest (backend) y flutter_test (frontend).</p>

<p>•&emsp;Pruebas de integración: Postman para endpoints y pruebas MQTT.</p>

<p>•&emsp;Pruebas manuales: En dispositivos reales Android 9+ y simuladores.</p>

<p>•&emsp;Pruebas de aceptación: Validación de cada RF con el instructor.</p>

<p>•&emsp;Cobertura mínima objetivo: 80 % en lógica crítica.</p>

<h2>Otras consideraciones</h2>

<p>•&emsp;Control de versiones con Git + GitHub (branches feature/, develop y main).</p>

<p>•&emsp;Despliegue inicial en Railway/Render (backend) y APK interno (app).</p>

<p>•&emsp;Licencia comercial tipo SaaS ya redactada (ver documento “licenciamiento.docx”).</p>

<p>•&emsp;Documentación técnica actualizada después de cada sprint.</p>







































<h1>Referencias</h1>

<p>Servicio Nacional de Aprendizaje. (2025). <em>Especificación de requisitos de software – Hidro Smart</em> (Versión 1).</p>

<p>Motta Vargas, J. de J. (2025). <em>Acta general del proceso del proyecto Hidro Smart</em>.</p>

<p>Amaya Mosquera, J. D., Molano Cardozo, E. C., &amp; Montealegre Rodríguez, J. A. (2026). <em>Encuesta sobre el consumo de agua</em>. Google Forms.</p>
