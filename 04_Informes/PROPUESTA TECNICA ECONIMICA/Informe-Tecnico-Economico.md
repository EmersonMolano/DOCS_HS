> **Nota de conversión.** Copia Markdown de [Informe-Tecnico-Economico.docx](<Informe-Tecnico-Economico.docx>); el original se conserva y su contenido no se actualizó.



<p><strong>INFORME TÉCNICO-ECONÓMICO</strong></p>

<p><strong>PROYECTO: HIDRO SMART</strong></p>

<p><strong>INTEGRANTES:</strong></p>

<p>Emerson Calet Molano Cardozo</p>

<p>José David Amaya Mosquera</p>

<p>José Alejandro Montealegre Rodríguez</p>

<p><strong>INSTRUCTOR:</strong></p>

<p>MOTTA VARGAS JOSÉ DE JESÚS</p>

<p>SERVICIO NACIONAL DE APRENDIZAJE – SENA</p>

<p>PROGRAMACIÓN DE SOFTWARE – 3145555</p>

<p><strong>2025</strong></p>

<p><br /></p>

<p><strong><br />1. RESUMEN EJECUTIVO</strong></p>



<p>El proyecto Hidro Smart (2025) propone una solución tecnológica orientada al monitoreo inteligente del consumo de agua en hogares colombianos, mediante la integración de dispositivos IoT, sensores de caudal, conectividad Wi-Fi/Bluetooth y una aplicación móvil multiplataforma.</p>



<p>Su propósito es optimizar el uso del agua, reducir el desperdicio y generar conciencia ambiental en los usuarios, aportando datos en tiempo real, alertas preventivas y recomendaciones personalizadas. El sistema es escalable, seguro y de bajo costo operativo.</p>



<p>En el plano económico, este informe demuestra la viabilidad técnica y financiera del proyecto, con una inversión total estimada en $ 80.305.000 COP (sin equipos personales de los integrantes), y un potencial de ahorro hídrico del 15% al 25% anual por hogar, alineándose con los Objetivos de Desarrollo Sostenible ODS 6 y ODS 13.</p>



<p>-<strong> </strong><strong>Nombre del proyecto</strong><strong>:</strong> <strong>Hidro Smart – Sistema de Monitoreo Inteligente del Agua</strong><strong>.</strong></p>

<p><strong>-</strong><strong> </strong><strong>Tipo de solución</strong><strong>: </strong><strong>Aplicación móvil multiplataforma + dispositivos </strong><strong>IoT</strong><strong> + </strong><strong>backend</strong><strong> en la nube</strong></p>

<p><strong>-</strong><strong> </strong><strong>Plataforma objetivo</strong><strong>: </strong><strong>Android 9 o superior (hasta Android 14) / Navegadores web (Chrome, Edge, Firefox)</strong></p>

<p><strong>-</strong><strong> </strong><strong>Stack </strong><strong>tecnológico</strong><strong>: React Native · Node.js/Express · PostgreSQL/Firebase · AWS IoT Core</strong></p>

<p><strong>-</strong><strong> </strong><strong>Presupuesto total</strong><strong>: </strong><strong>$ 80.305.000 COP (operativo) | $ 110.595.000 COP (incluyendo equipos de desarrollo)</strong></p>

<p><strong>-</strong><strong> </strong><strong>Duración del proyecto</strong><strong>: </strong><strong>6 meses – Metodología ágil Scrum (</strong><strong>sprints</strong><strong> de 2 semanas)</strong></p>



<p><strong>2. INTRODUCCIÓN</strong></p>



<p>El acceso al agua potable y la gestión eficiente del recurso hídrico son desafíos prioritarios en Colombia. Según datos de la Personería de Bogotá (2024), hasta el 40% del agua potable se pierde en la capital, y a nivel nacional esta cifra asciende al 48% (Universidad de los Andes, 2024). A su vez, el DANE (2024) estima que solo el 33% de los ciudadanos adopta prácticas de ahorro hídrico.</p>



<p>Esta problemática evidencia la urgente necesidad de soluciones tecnológicas accesibles que permitan a los hogares conocer, controlar y optimizar su consumo diario. Los medidores convencionales únicamente registran el total mensual sin ofrecer desglose por actividad, lo que impide la toma de decisiones informadas.</p>



<p>Hidro Smart surge como respuesta innovadora a esta necesidad. El sistema combina sensores IoT de caudal con una aplicación móvil que muestra el consumo en tiempo real, clasificado por actividad doméstica (ducha, lavado, cocina, aseo), y genera alertas y recomendaciones personalizadas para fomentar el uso responsable del agua.</p>



<p><br />Este documento consolida los aspectos técnicos y económicos del desarrollo: requerimientos del sistema, arquitectura tecnológica, recursos humanos, presupuesto detallado, cronograma, plan de mantenimiento, impacto ambiental y análisis de viabilidad del proyecto.</p>



<p><strong>3. DESCRIPCIÓN DEL PROYECTO</strong></p>



<p>Hidro Smart es un sistema inteligente de monitoreo hídrico compuesto por tres capas tecnológicas integradas:</p>



- Capa de sensores IoT: dispositivos de medición de caudal conectados vía Wi-Fi o Bluetooth que capturan datos de consumo en tiempo real y los transmiten al servidor mediante protocolos seguros.

- Capa de backend y nube: API REST desarrollada en Node.js/Express que recibe, procesa y almacena los datos en PostgreSQL o Firebase Cloud, con integración a AWS IoT Core para la conectividad segura de dispositivos.

- Capa de aplicación móvil/web: interfaz multiplataforma desarrollada en React Native (JavaScript) para Android 9 o superior (hasta Android 14), y versión web compatible con Chrome, Edge y Firefox, que permite al usuario visualizar estadísticas, configurar alertas, gestionar hogares y descargar reportes en PDF o Excel.



<p>El sistema soporta tres tipos de usuarios con roles diferenciados: Administrador (supervisa hogares y dispositivos), Soporte Técnico (mantenimiento IoT y calibraciones) y Usuario Doméstico (monitorea consumo y sigue recomendaciones). La gestión de accesos se controla mediante autenticación segura con tokens JWT (Access y Refresh), cifrado AES-256 y comunicaciones HTTPS/TLS.</p>



<p><strong>4. OBJETIVOS</strong></p>



<p><strong>4.1 Objetivo General</strong></p>

<p>Desarrollar e implementar un sistema IoT para el monitoreo y control inteligente del consumo de agua en hogares colombianos, mejorando la eficiencia hídrica, reduciendo el desperdicio y fomentando hábitos sostenibles mediante tecnología móvil accesible.</p>



<p><strong>4.2 Objetivos Específicos</strong></p>

1. Desarrollar una aplicación móvil multiplataforma (Android 9 o superior (hasta Android 14)) que muestre datos de consumo en tiempo real desde sensores IoT.

1. Registrar, procesar y clasificar el consumo de agua por actividad doméstica (ducha, lavado, cocina, aseo).

1. Generar gráficos comparativos y reportes periódicos (diario, semanal, mensual, anual) en formato PDF y Excel.

1. <br />Implementar un modelo predictivo de consumo basado en historial registrado.

1. Proporcionar alertas automáticas y recomendaciones personalizadas de ahorro hídrico.

1. Integrar infraestructura en la nube con disponibilidad mínima del 99% anual y cifrado de extremo a extremo.

1. Evaluar el impacto económico y ambiental del sistema durante su fase piloto.



<p><strong>5. ALCANCE Y METODOLOGÍA</strong></p>



<p><strong>5.1 Alcance del Sistema</strong></p>

<p>El sistema Hidro Smart, según lo definido en el SRS, abarca los siguientes módulos funcionales:</p>

- Módulo RF1 – Autenticación y gestión de usuarios: registro, inicio de sesión seguro, tokens JWT, recuperación de contraseña, roles y suspensión de cuentas.

- Módulo RF2 – Gestión de dispositivos IoT: registro de sensores, asignación de ID único, suspensión y reactivación de dispositivos.

- Módulo RF3 – Proyectos / Hogares: creación de hogares con estratificación, asignación de usuarios titulares/miembros y dispositivos.

- Módulo RF4 – Configuraciones del sistema: topes de consumo, alertas, recomendaciones, idiomas, moneda y controles de auditoría.

- Módulo RF5 – Reportes y análisis: gráficos en tiempo real, históricos, hábitos de consumo, modelo predictivo, alertas y proyectos asociados al usuario.



<p>El sistema no incluirá en su versión inicial integración con redes externas de servicios públicos, pero quedará preparado para futuras extensiones. Compatibilidad confirmada: Android 9–14 y navegadores Chrome, Edge, Firefox y Opera.</p>



<p><strong>5.2 Metodología de Desarrollo</strong></p>

<p>El proyecto se desarrolla bajo el enfoque ágil Scrum, organizado en sprints de 2 semanas con ceremonias de revisión, retrospectiva y planificación. Las fases principales son:</p>




<table>
<tr>
<td><p><strong>Fase</strong></p></td>
<td><p><strong>Actividad Principal</strong></p></td>
<td><p><strong>Sprint</strong></p></td>
<td><p><strong>Duración</strong></p></td>
</tr>
<tr>
<td><p>1</p></td>
<td><p>Análisis de requerimientos y documentación SRS</p></td>
<td><p>Sprint 1</p></td>
<td><p>2 semanas</p></td>
</tr>
<tr>
<td><p>2</p></td>
<td><p>Diseño técnico, arquitectura y prototipado Figma</p></td>
<td><p>Sprint 2</p></td>
<td><p>2 semanas</p></td>
</tr>
<tr>
<td><p>3</p></td>
<td><p>Desarrollo frontend móvil y web (RF1–RF3)</p></td>
<td><p>Sprint 3–4</p></td>
<td><p>4 semanas</p></td>
</tr>
<tr>
<td><p>4</p></td>
<td><p>Desarrollo backend, IoT, base de datos (RF4–RF5)</p></td>
<td><p>Sprint 5–6</p></td>
<td><p>4 semanas</p></td>
</tr>
<tr>
<td><p><br />5</p></td>
<td><p>Pruebas, validación, correcciones y QA</p></td>
<td><p>Sprint 7</p></td>
<td><p>2 semanas</p></td>
</tr>
<tr>
<td><p>6</p></td>
<td><p>Implementación piloto, entrega y documentación final</p></td>
<td><p>Sprint 8</p></td>
<td><p>2 semanas</p></td>
</tr>
</table>




<p><strong>6. PROPUESTA TÉCNICA</strong></p>



<p><strong>6.1 Arquitectura del Sistema</strong></p>

<p>La arquitectura de Hidro Smart sigue un modelo de tres capas (Dispositivo – Servidor – Cliente) con los siguientes componentes:</p>




<table>
<tr>
<td><p><strong>Capa</strong></p></td>
<td><p><strong>Componente</strong></p></td>
<td><p><strong>Tecnología / Herramienta</strong></p></td>
<td><p><strong>Función</strong></p></td>
</tr>
<tr>
<td><p>Dispositivo IoT</p></td>
<td><p>Sensor de caudal + microcontrolador</p></td>
<td><p>ESP32 + Wi-Fi/BT</p></td>
<td><p>Medición y transmisión de datos</p></td>
</tr>
<tr>
<td><p>Comunicación</p></td>
<td><p>Protocolo de mensajería</p></td>
<td><p>MQTT sobre TLS</p></td>
<td><p>Transmisión segura sensor–nube</p></td>
</tr>
<tr>
<td><p>Backend</p></td>
<td><p>API REST</p></td>
<td><p>Node.js / Express</p></td>
<td><p>Lógica de negocio y endpoints</p></td>
</tr>
<tr>
<td><p>Base de datos</p></td>
<td><p>Almacenamiento persistente</p></td>
<td><p>PostgreSQL / Firebase Cloud</p></td>
<td><p>Datos de usuarios, hogares, consumo</p></td>
</tr>
<tr>
<td><p>Nube / IoT Core</p></td>
<td><p>Conectividad dispositivos</p></td>
<td><p>AWS IoT Core / Firebase</p></td>
<td><p>Gestión de dispositivos IoT</p></td>
</tr>
<tr>
<td><p>Frontend móvil</p></td>
<td><p>Aplicación Android</p></td>
<td><p>React Native (JavaScript)</p></td>
<td><p>Interfaz multiplataforma para usuarios</p></td>
</tr>
<tr>
<td><p>Frontend web</p></td>
<td><p>Panel de administración</p></td>
<td><p>HTML5 + CSS3 + JS</p></td>
<td><p>Gestión desde navegador</p></td>
</tr>
<tr>
<td><p>Diseño UI/UX</p></td>
<td><p>Prototipado</p></td>
<td><p>Figma</p></td>
<td><p>Interfaces y flujos de usuario</p></td>
</tr>
<tr>
<td><p>Control versiones</p></td>
<td><p>Gestión de código</p></td>
<td><p>Git / GitHub</p></td>
<td><p>Trabajo colaborativo del equipo</p></td>
</tr>
</table>




<p><strong>6.2 Requerimientos de Hardware para el Equipo de Desarrollo</strong></p>

- Computadores con procesadores Ryzen 7 / Intel i7, mínimo 16 GB RAM y SSD 512 GB.

- Dispositivos móviles Android (versión 9 o superior) para pruebas de la aplicación.

- Sensores de caudal compatibles con Wi-Fi/Bluetooth para simulaciones IoT.

- Router Wi-Fi 2.4/5 GHz para pruebas de conectividad de dispositivos.



<p><strong>6.3 Requerimientos Técnicos del Sistema (No Funcionales)</strong></p>

<p>Según el SRS, los principales RNF que impactan el diseño técnico y económico son:</p>




<table>
<tr>
<td><p><strong>Categoría</strong></p></td>
<td><p><strong>Requisito Clave</strong></p></td>
<td><p><strong>Criterio de Aceptación</strong></p></td>
</tr>
<tr>
<td><p>Rendimiento</p></td>
<td><p>Tiempo de inicio y respuesta</p></td>
<td><p>App inicia en &lt; 5 s; respuesta por solicitud &lt; 3 s</p></td>
</tr>
<tr>
<td><p>Escalabilidad</p></td>
<td><p>Soporte de usuarios concurrentes</p></td>
<td><p>≥ 100 usuarios simultáneos sin degradación</p></td>
</tr>
<tr>
<td><p>Disponibilidad</p></td>
<td><p>Uptime del sistema</p></td>
<td><p>≥ 99% anual; recuperación &lt; 15 minutos</p></td>
</tr>
<tr>
<td><p>Seguridad</p></td>
<td><p>Cifrado y autenticación</p></td>
<td><p>HTTPS/TLS, AES-256, tokens JWT únicos</p></td>
</tr>
<tr>
<td><p>Compatibilidad</p></td>
<td><p>Plataformas soportadas</p></td>
<td><p>Android 9–14; Chrome, Edge, Firefox, Opera</p></td>
</tr>
<tr>
<td><p>Notificaciones</p></td>
<td><p>Tiempo real de alertas</p></td>
<td><p>Envío &lt; 3 s, tasa de entrega ≥ 98%</p></td>
</tr>
<tr>
<td><p>Cumplimiento</p></td>
<td><p>Marco legal colombiano</p></td>
<td><p>Ley 1581 de 2012 – Protección de datos personales</p></td>
</tr>
<tr>
<td><p>Portabilidad</p></td>
<td><p>Responsive y multiplataforma</p></td>
<td><p>Compatible en pantallas 5" a 24"</p></td>
</tr>
</table>




<p><strong>6.4 Infraestructura en la Nube</strong></p>


<table>
<tr>
<td><p><strong>Servicio</strong></p></td>
<td><p><strong>Función Principal</strong></p></td>
<td><p><strong>Costo Mensual (COP)</strong></p></td>
<td><p><strong>Costo 6 Meses (COP)</strong></p></td>
</tr>
<tr>
<td><p>AWS IoT Core / Firebase IoT</p></td>
<td><p>Conectividad y monitoreo de sensores</p></td>
<td><p>$ 150.000</p></td>
<td><p>$ 900.000</p></td>
</tr>
<tr>
<td><p>AWS Lambda / Cloud Functions</p></td>
<td><p>Automatización de eventos y alertas</p></td>
<td><p>$ 50.000</p></td>
<td><p>$ 300.000</p></td>
</tr>
<tr>
<td><p>Amazon RDS / Firestore</p></td>
<td><p>Base de datos gestionada en la nube</p></td>
<td><p>$ 50.000</p></td>
<td><p>$ 300.000</p></td>
</tr>
<tr>
<td><p>Amazon S3 / Cloud Storage</p></td>
<td><p>Almacenamiento de reportes y backups</p></td>
<td><p>$ 50.000</p></td>
<td><p>$ 300.000</p></td>
</tr>
<tr>
<td><p><strong>TOTAL</strong><strong> INFRAESTRUCTURA (6 meses)</strong></p></td>
<td></td>
<td></td>
<td><p><strong>$ 1.800.000</strong></p></td>
</tr>
</table>




<p><strong>7. EQUIPO DE TRABAJO Y RECURSOS HUMANOS</strong></p>



<p><strong>7.1 Equipo de Desarrollo</strong></p>


<table>
<tr>
<td><p><strong><br />Integrante</strong></p></td>
<td><p><strong>Rol en el Proyecto</strong></p></td>
<td><p><strong>Responsabilidades Principales</strong></p></td>
<td><p><strong>Duración</strong></p></td>
<td><p><strong>Salario/mes</strong></p></td>
<td><p><strong>Total (COP)</strong></p></td>
</tr>
<tr>
<td><p>José Alejandro Montealegre Rodríguez</p></td>
<td><p>Líder / Base de Datos / QA</p></td>
<td><p>Planificación, gestión BD, control de calidad, documentación técnica</p></td>
<td><p>6 meses</p></td>
<td><p>$ 2.500.000</p></td>
<td><p>$ 15.000.000</p></td>
</tr>
<tr>
<td><p>Emerson Calet Molano Cardozo</p></td>
<td><p>Programador / Backend / IoT</p></td>
<td><p>Desarrollo de código, integración de sensores IoT, lógica de negocio</p></td>
<td><p>6 meses</p></td>
<td><p>$ 2.300.000</p></td>
<td><p>$ 13.800.000</p></td>
</tr>
<tr>
<td><p>José David Amaya Mosquera</p></td>
<td><p>Analista / Frontend / Documentación</p></td>
<td><p>Análisis de requerimientos, interfaces web/móvil, documentación del proyecto</p></td>
<td><p>6 meses</p></td>
<td><p>$ 2.300.000</p></td>
<td><p>$ 13.800.000</p></td>
</tr>
<tr>
<td><p><strong>TOTAL</strong><strong> RECURSOS HUMANOS (equipo)</strong></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p><strong>$ 42.600.000</strong></p></td>
</tr>
</table>




<p><strong>7.2 Mano de Obra Técnica Complementaria</strong></p>


<table>
<tr>
<td><p><strong>Rol</strong></p></td>
<td><p><strong>Actividad</strong></p></td>
<td><p><strong>Horas Estimadas</strong></p></td>
<td><p><strong>Valor/Hora (COP)</strong></p></td>
<td><p><strong>Total (COP)</strong></p></td>
</tr>
<tr>
<td><p>Programador IoT</p></td>
<td><p>Firmware ESP32 y comunicación MQTT</p></td>
<td><p>60 h</p></td>
<td><p>$ 25.000</p></td>
<td><p>$ 1.500.000</p></td>
</tr>
<tr>
<td><p>Diseñador UI/UX</p></td>
<td><p>Prototipado en Figma y guías de estilo</p></td>
<td><p>40 h</p></td>
<td><p>$ 20.000</p></td>
<td><p>$ 800.000</p></td>
</tr>
<tr>
<td><p>Tester / QA</p></td>
<td><p>Validación de software, pruebas funcionales y no funcionales</p></td>
<td><p>30 h</p></td>
<td><p>$ 18.000</p></td>
<td><p>$ 540.000</p></td>
</tr>
<tr>
<td><p><strong>SUBTOTAL MANO DE OBRA TÉCNICA</strong></p></td>
<td></td>
<td></td>
<td></td>
<td><p><strong>$ 2.840.000</strong></p></td>
</tr>
</table>




<p><strong>8. PRESUPUESTO TÉCNICO Y ECONÓMICO</strong></p>



<p><strong>8.1 Hardware y Componentes </strong><strong>IoT</strong></p>


<table>
<tr>
<td><p><strong>Ítem</strong></p></td>
<td><p><strong>Descripción</strong></p></td>
<td><p><strong>Cant</strong><strong>.</strong></p></td>
<td><p><strong>Costo </strong><strong>Unit</strong><strong>. (COP)</strong></p></td>
<td><p><strong>Costo Total (COP)</strong></p></td>
</tr>
<tr>
<td><p>Sensor de caudal</p></td>
<td><p>Medición de flujo de agua (Wi-Fi/BT)</p></td>
<td><p>3</p></td>
<td><p>$ 25.000</p></td>
<td><p>$ 75.000</p></td>
</tr>
<tr>
<td><p><br />Microcontrolador ESP32</p></td>
<td><p>Procesamiento y conectividad IoT</p></td>
<td><p>3</p></td>
<td><p>$ 60.000</p></td>
<td><p>$ 180.000</p></td>
</tr>
<tr>
<td><p>Válvula solenoide 12V</p></td>
<td><p>Control remoto del flujo de agua</p></td>
<td><p>3</p></td>
<td><p>$ 30.000</p></td>
<td><p>$ 90.000</p></td>
</tr>
<tr>
<td><p>Módulo relé doble 5V</p></td>
<td><p>Activación de válvulas y actuadores</p></td>
<td><p>3</p></td>
<td><p>$ 20.000</p></td>
<td><p>$ 60.000</p></td>
</tr>
<tr>
<td><p>Pantalla OLED 0.96"</p></td>
<td><p>Visualización local de datos del sensor</p></td>
<td><p>3</p></td>
<td><p>$ 35.000</p></td>
<td><p>$ 105.000</p></td>
</tr>
<tr>
<td><p>Fuente de poder 5V 2A</p></td>
<td><p>Alimentación de microcontroladores</p></td>
<td><p>3</p></td>
<td><p>$ 25.000</p></td>
<td><p>$ 75.000</p></td>
</tr>
<tr>
<td><p>Materiales varios</p></td>
<td><p>PVC, silicona, conectores, tornillos, cables</p></td>
<td><p>1</p></td>
<td><p>—</p></td>
<td><p>$ 190.000</p></td>
</tr>
<tr>
<td><p><strong>SUBTOTAL COMPONENTES </strong><strong>IoT</strong></p></td>
<td></td>
<td></td>
<td></td>
<td><p><strong>$ 775.000</strong></p></td>
</tr>
</table>




<p><strong>8.2 Equipos de Trabajo de los Integrantes</strong></p>


<table>
<tr>
<td><p><strong>Integrante</strong></p></td>
<td><p><strong>Tipo</strong></p></td>
<td><p><strong>Especificaciones</strong></p></td>
<td><p><strong>Costo (COP)</strong></p></td>
</tr>
<tr>
<td><p>Emerson Calet Molano Cardozo</p></td>
<td><p>PC de escritorio</p></td>
<td><p>Ryzen 7 5700G / 32 GB RAM / SSD 1 TB / Monitor LG 24"</p></td>
<td><p>$ 3.830.000</p></td>
</tr>
<tr>
<td><p>Emerson Calet Molano Cardozo</p></td>
<td><p>Portátil</p></td>
<td><p>HP Pavilion Ryzen 7 7730U / 16 GB / SSD 512 GB</p></td>
<td><p>$ 3.500.000</p></td>
</tr>
<tr>
<td><p>Emerson Calet Molano Cardozo</p></td>
<td><p>Celular Android</p></td>
<td><p>Xiaomi Redmi Note 13 Pro+ / Android 14 / 8 GB / 256 GB</p></td>
<td><p>$ 2.100.000</p></td>
</tr>
<tr>
<td><p>José David Amaya Mosquera</p></td>
<td><p>PC de escritorio</p></td>
<td><p>Intel i7-12700F / 32 GB / GTX 1660S / SSD 1 TB / Samsung 24"</p></td>
<td><p>$ 5.390.000</p></td>
</tr>
<tr>
<td><p>José David Amaya Mosquera</p></td>
<td><p>Portátil</p></td>
<td><p>Dell Inspiron i7 1355U / 16 GB / SSD 512 GB</p></td>
<td><p>$ 3.700.000</p></td>
</tr>
<tr>
<td><p>José David Amaya Mosquera</p></td>
<td><p>Celular Android</p></td>
<td><p>Samsung Galaxy A35 / Android 14 / 8 GB / 256 GB</p></td>
<td><p>$ 1.950.000</p></td>
</tr>
<tr>
<td><p>José Alejandro Montealegre Rodríguez</p></td>
<td><p>PC de escritorio</p></td>
<td><p>Ryzen 5 5600 / 16 GB / RX 6600 / SSD 512 GB / LG 27"</p></td>
<td><p>$ 4.420.000</p></td>
</tr>
<tr>
<td><p>José Alejandro Montealegre Rodríguez</p></td>
<td><p>Portátil</p></td>
<td><p>Lenovo IdeaPad 5 Ryzen 7 7735HS / 16 GB / SSD 1 TB</p></td>
<td><p>$ 3.600.000</p></td>
</tr>
<tr>
<td><p>José Alejandro Montealegre Rodríguez</p></td>
<td><p>Celular Android</p></td>
<td><p>Motorola Edge 40 Neo / Android 14 / 8 GB / 256 GB</p></td>
<td><p>$ 1.800.000</p></td>
</tr>
<tr>
<td><p><strong><br />TOTAL</strong><strong> EQUIPOS DE DESARROLLO</strong></p></td>
<td></td>
<td></td>
<td><p><strong>$ 30.290.000</strong></p></td>
</tr>
</table>




<p><strong>8.3 Presupuesto Consolidado Global</strong></p>


<table>
<tr>
<td><p><strong>N°</strong></p></td>
<td><p><strong>Categoría</strong></p></td>
<td><p><strong>Descripción</strong></p></td>
<td><p><strong>Costo (COP)</strong></p></td>
<td><p><strong>% del Total</strong></p></td>
</tr>
<tr>
<td><p>1</p></td>
<td><p>Recursos humanos del equipo</p></td>
<td><p>Salarios de los 3 integrantes × 6 meses</p></td>
<td><p>$ 42.600.000</p></td>
<td><p>53,0%</p></td>
</tr>
<tr>
<td><p>2</p></td>
<td><p>Equipos de desarrollo</p></td>
<td><p>PCs, portátiles y celulares de los integrantes</p></td>
<td><p>$ 30.290.000</p></td>
<td><p>37,7%</p></td>
</tr>
<tr>
<td><p>3</p></td>
<td><p>Mano de obra técnica</p></td>
<td><p>Programador IoT, diseñador UX, tester QA</p></td>
<td><p>$ 2.840.000</p></td>
<td><p>3,5%</p></td>
</tr>
<tr>
<td><p>4</p></td>
<td><p>Infraestructura en la nube</p></td>
<td><p>AWS IoT Core, Lambda, RDS, S3 (6 meses)</p></td>
<td><p>$ 1.800.000</p></td>
<td><p>2,2%</p></td>
</tr>
<tr>
<td><p>5</p></td>
<td><p>Costos operativos</p></td>
<td><p>Energía, internet, mantenimiento, imprevistos</p></td>
<td><p>$ 2.000.000</p></td>
<td><p>2,5%</p></td>
</tr>
<tr>
<td><p>6</p></td>
<td><p>Componentes IoT y materiales</p></td>
<td><p>Sensores, microcontroladores, válvulas, PVC</p></td>
<td><p>$ 775.000</p></td>
<td><p>1,0%</p></td>
</tr>
<tr>
<td></td>
<td><p><strong>TOTAL</strong><strong> GENERAL DEL PROYECTO</strong></p></td>
<td><p><strong>(incluye equipos de desarrollo)</strong></p></td>
<td><p><strong>$ 80.305.000*</strong></p></td>
<td><p><strong>100%</strong></p></td>
</tr>
</table>




<p><em>* El total de $ 80.305.000 COP incluye todos los costos del proyecto, sin descontar los equipos de los integrantes que se usarán también para uso personal. Si se consolida el total con equipos: $ 110.595.000 COP.</em></p>



<p><strong>9. PLAN DE MANTENIMIENTO Y SOPORTE</strong></p>



<p>El plan de mantenimiento de Hidro Smart cubre un período de 6 meses posteriores a la entrega del sistema, bajo tres modalidades:</p>




<table>
<tr>
<td><p><strong>Tipo</strong></p></td>
<td><p><strong>Actividades</strong></p></td>
<td><p><strong>Frecuencia</strong></p></td>
<td><p><strong>Responsable</strong></p></td>
</tr>
<tr>
<td><p>Preventivo</p></td>
<td><p>Revisión de firmware, calibración de sensores, actualización de dependencias, backup de base de datos</p></td>
<td><p>Mensual</p></td>
<td><p>Programador IoT / Líder del proyecto</p></td>
</tr>
<tr>
<td><p>Correctivo</p></td>
<td><p>Sustitución de módulos defectuosos, corrección de bugs, ajuste de parámetros de caudal</p></td>
<td><p>A demanda (&lt; 2 h respuesta crítica)</p></td>
<td><p>Programador IoT / Backend</p></td>
</tr>
<tr>
<td><p><br />Evolutivo</p></td>
<td><p>Nuevas funcionalidades, optimización de rendimiento, integración con nuevas plataformas</p></td>
<td><p>Trimestral</p></td>
<td><p>Equipo completo</p></td>
</tr>
<tr>
<td><p>Seguridad</p></td>
<td><p>Renovación de certificados SSL/TLS, revisión de auditorías, actualización de tokens</p></td>
<td><p>Semestral</p></td>
<td><p>Líder / Backend</p></td>
</tr>
</table>




<p>El sistema cuenta con mecanismos automáticos de recuperación ante fallos (RNF4.4): en caso de caída, el tiempo de recuperación no debe superar los 5 minutos y no se perderá información registrada antes del fallo.</p>



<p><strong>10. IMPACTO AMBIENTAL Y SOSTENIBILIDAD</strong></p>



<p>Hidro Smart contribuye activamente al desarrollo sostenible mediante los siguientes impactos medibles:</p>




<table>
<tr>
<td><p><strong>Indicador de Impacto</strong></p></td>
<td><p><strong>Valor Estimado</strong></p></td>
<td><p><strong>Fundamento</strong></p></td>
</tr>
<tr>
<td><p>Reducción del consumo de agua por hogar</p></td>
<td><p>15% – 25% anual</p></td>
<td><p>Uso de alertas, recomendaciones y modelo predictivo</p></td>
</tr>
<tr>
<td><p>Hogares colombianos potencialmente beneficiados</p></td>
<td><p>Millones (solo el 33% ahorra agua actualmente)</p></td>
<td><p>DANE 2024</p></td>
</tr>
<tr>
<td><p>Reducción del desperdicio hídrico nacional</p></td>
<td><p>Contribución a reducir el 48% de pérdidas</p></td>
<td><p>Universidad de los Andes 2024</p></td>
</tr>
<tr>
<td><p>Huella de carbono del sistema</p></td>
<td><p>Mínima – sensores de bajo consumo, app ligera</p></td>
<td><p>Diseño eficiente (RNF8.1: CPU en background &lt; 15%)</p></td>
</tr>
<tr>
<td><p>Cumplimiento ODS</p></td>
<td><p>ODS 6 (Agua limpia), ODS 9 (Innovación), ODS 13 (Clima)</p></td>
<td><p>Objetivos de Desarrollo Sostenible ONU</p></td>
</tr>
</table>




<p>A futuro, el sistema puede ampliarse con integración de paneles solares para alimentar los dispositivos IoT, logrando autonomía energética parcial y reduciendo la huella de carbono del proyecto. También se prevé la integración futura con redes externas de servicios públicos y plataformas de gestión municipal del agua.</p>



<p><strong>11. CRONOGRAMA DE EJECUCIÓN Y PAGOS</strong></p>




<table>
<tr>
<td><p><strong>Fase</strong></p></td>
<td><p><strong>Descripción</strong></p></td>
<td><p><strong>Duración</strong></p></td>
<td><p><strong>% de Pago</strong></p></td>
<td><p><strong>Monto Aprox. (COP)</strong></p></td>
</tr>
<tr>
<td><p>1</p></td>
<td><p>Análisis de requerimientos, SRS y planificación del proyecto</p></td>
<td><p>2 semanas</p></td>
<td><p>15%</p></td>
<td><p>$ 12.045.750</p></td>
</tr>
<tr>
<td><p>2</p></td>
<td><p>Diseño técnico, arquitectura del sistema y prototipado UI/UX (Figma)</p></td>
<td><p>2 semanas</p></td>
<td><p>20%</p></td>
<td><p>$ 16.061.000</p></td>
</tr>
<tr>
<td><p>3</p></td>
<td><p>Desarrollo frontend móvil/web: módulos RF1, RF2 y RF3</p></td>
<td><p>4 semanas</p></td>
<td><p>20%</p></td>
<td><p>$ 16.061.000</p></td>
</tr>
<tr>
<td><p>4</p></td>
<td><p>Desarrollo backend, IoT e integración nube: módulos RF4 y RF5</p></td>
<td><p>4 semanas</p></td>
<td><p>25%</p></td>
<td><p>$ 20.076.250</p></td>
</tr>
<tr>
<td><p>5</p></td>
<td><p>Pruebas de sistema, validación funcional/no funcional y correcciones QA</p></td>
<td><p>2 semanas</p></td>
<td><p>10%</p></td>
<td><p>$ 8.030.500</p></td>
</tr>
<tr>
<td><p>6</p></td>
<td><p>Implementación piloto, entrega final y documentación técnica</p></td>
<td><p>2 semanas</p></td>
<td><p>10%</p></td>
<td><p>$ 8.030.500</p></td>
</tr>
<tr>
<td><p><strong>TOTAL</strong></p></td>
<td></td>
<td><p><strong>16 semanas (6 meses)</strong></p></td>
<td><p><strong>100%</strong></p></td>
<td><p><strong>$ 80.305.000</strong></p></td>
</tr>
</table>




<p><strong>12. ANÁLISIS DE VIABILIDAD ECONÓMICA</strong></p>



<p><strong>12.1 Viabilidad Técnica</strong></p>

<p>El proyecto utiliza tecnologías maduras, open-source y con amplia comunidad de soporte (React Native, Node.js, PostgreSQL, Firebase). La infraestructura en la nube con AWS/Firebase garantiza escalabilidad sin inversión en servidores propios. El equipo de desarrollo cuenta con las competencias necesarias para implementar cada capa del sistema.</p>



<p><strong>12.2 Viabilidad Económica</strong></p>

<p>La relación costo-beneficio es favorable: la inversión de $ 80.305.000 COP puede generar un ahorro promedio de $ 50.000 – $ 120.000 COP mensual por hogar en facturación de agua (estimado según el 20% de reducción del consumo en estrato 3–4 en Colombia). A escala, el sistema tiene potencial de comercialización a empresas de servicios públicos, municipios y desarrolladoras de vivienda.</p>




<table>
<tr>
<td><p><strong>Escenario</strong></p></td>
<td><p><strong>Inversión</strong></p></td>
<td><p><strong>Ahorro mensual/hogar</strong></p></td>
<td><p><strong>Recuperación estimada</strong></p></td>
</tr>
<tr>
<td><p>Conservador (15% ahorro)</p></td>
<td><p>$ 80.305.000 COP</p></td>
<td><p>$ 50.000 COP</p></td>
<td><p>N/A (proyecto educativo/piloto)</p></td>
</tr>
<tr>
<td><p><br />Esperado (20% ahorro)</p></td>
<td><p>$ 80.305.000 COP</p></td>
<td><p>$ 80.000 COP</p></td>
<td><p>N/A (proyecto educativo/piloto)</p></td>
</tr>
<tr>
<td><p>Optimista (25% ahorro)</p></td>
<td><p>$ 80.305.000 COP</p></td>
<td><p>$ 120.000 COP</p></td>
<td><p>N/A (proyecto educativo/piloto)</p></td>
</tr>
</table>




<p><strong>12.3 Viabilidad Legal</strong></p>

<p>El sistema cumple con la Ley 1581 de 2012 de Protección de Datos Personales de Colombia (RNF8.2). Todo tratamiento de datos de usuarios requiere consentimiento explícito, y las políticas de privacidad estarán actualizadas y accesibles dentro de la plataforma.</p>



<p><strong>13. CONCLUSIONES</strong></p>



<p>El proyecto Hidro Smart (2025) demuestra la factibilidad técnica y económica de aplicar el Internet de las Cosas (IoT) al manejo responsable del agua en hogares colombianos. El sistema cumple con todos los requerimientos funcionales y no funcionales definidos en el SRS, incluyendo seguridad, rendimiento, escalabilidad, disponibilidad y cumplimiento normativo.</p>



<p>Con una inversión total de $ 80.305.000 COP, el proyecto ofrece una solución eficiente, escalable y sostenible que puede generar un ahorro hídrico del 15% al 25% por hogar. La arquitectura tecnológica seleccionada garantiza un tiempo de vida útil del sistema superior a 3 años con mantenimiento regular.</p>



<p>El equipo de desarrollo, conformado por tres aprendices del SENA en Programación de Software, cuenta con la división de roles adecuada para ejecutar el proyecto dentro del plazo y presupuesto estimado: José Alejandro Montealegre (Base de Datos / QA), Emerson Calet Molano (Backend / IoT) y José David Amaya (Análisis / Frontend).</p>



<p>En conclusión, Hidro Smart se posiciona como una propuesta tecnológica, ecológica y socialmente responsable, con impacto real en la conservación del agua y alineada con los Objetivos de Desarrollo Sostenible ODS 6, ODS 9 y ODS 13 de la ONU.</p>



<p><strong>14. REFERENCIAS</strong></p>



- Personería de Bogotá (2024). Informe sobre pérdidas de agua potable en la capital colombiana.

- Universidad de los Andes (2024). Estudio sobre desperdicio hídrico en Colombia.

- DANE (2024). Encuesta Nacional de Prácticas de Ahorro Hídrico en Colombia.

- <br />IEEE Standard 830-1998. Recommended Practice for Software Requirements Specifications. IEEE.

- Ley 1581 de 2012. Régimen General de Protección de Datos Personales en Colombia. Congreso de la República.

- Amazon Web Services – AWS IoT Core. https://aws.amazon.com/es/iot-core

- Google Firebase – Plataforma de desarrollo en la nube. https://firebase.google.com

- React Native – Framework de desarrollo móvil multiplataforma (Meta). https://reactnative.dev

- Node.js – Entorno de ejecución JavaScript del servidor. https://nodejs.org

- PostgreSQL – Sistema de gestión de bases de datos relacional. https://www.postgresql.org

- Figma Inc. – Herramienta de diseño colaborativo UI/UX. https://figma.com

- Organización de las Naciones Unidas – Objetivos de Desarrollo Sostenible. https://sdgs.un.org
