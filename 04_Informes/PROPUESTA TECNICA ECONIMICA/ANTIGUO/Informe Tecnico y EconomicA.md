> **Documento histórico.** Conversión de [Informe Tecnico y EconomicA.docx](<Informe Tecnico y EconomicA.docx>); se conserva su contenido fuente sin actualizarlo.



<p><strong>INFORME </strong><strong>TÉCNICO</strong></p>

<p><strong>PROYECTO: Hidro Smart</strong></p>





<p><strong>INTEGRANTES:</strong></p>



<p><strong>Emerson Calet Molano Cardozo</strong></p>

<p><strong>José David Amaya Mosquera</strong></p>

<p><strong>José Alejandro Montealegre Rodríguez</strong></p>





<p><strong>INSTRUCTOR:</strong></p>

<p><strong>MOTTA VARGAS JOSÉ DE JESÚS</strong></p>



<p><strong>SERVICIO NACIONAL DE APRENDIZAJE – SENA PROGRAMACIÓN DE SOFTWARE – 3145555</strong></p>











<p><strong>2025</strong></p>



<p><br /><strong>TABLA DE CONTENIDO</strong></p>

1. Resumen Ejecutivo

1. Introducción

1. Descripción del Proyecto

1. Objetivos

1. Alcance y Metodología

1. Propuesta Técnica (Hardware, Software e Infraestructura)

1. Equipo de Trabajo y Recursos Humanos

1. Presupuesto Técnico y Económico

1. Plan de Mantenimiento y Soporte

1. Impacto Ambiental y Sostenibilidad

1. Cronograma de Ejecución y Pagos

1. Conclusiones

1. Referencias































<p><strong>1. RESUMEN EJECUTIVO</strong></p>

<p>El proyecto <strong>Hidro </strong><strong>Smart</strong><strong> (2025)</strong> propone una solución tecnológica orientada al control y monitoreo del recurso hídrico mediante el uso de <strong>dispositivos IoT, microcontroladores ESP32, sensores de flujo y nivel</strong>, y una <strong>plataforma web y móvil</strong> conectada a servicios en la nube.</p>

<p>Su propósito principal es <strong>optimizar el uso del agua</strong> en hogares, instituciones y pequeñas empresas, permitiendo identificar fugas, registrar consumos y generar alertas en tiempo real.</p>

<p>El sistema utiliza <strong>tecnología escalable y de bajo costo</strong>, con integración en <strong>AWS IoT Core</strong>, garantizando seguridad, disponibilidad y rendimiento.<br />En el plano económico, se demuestra su <strong>viabilidad técnica y financiera</strong>, con una inversión total de <strong>107.175.000 COP</strong>, que cubre infraestructura, mano de obra, equipos, materiales y recursos humanos.</p>

<p>El proyecto busca fomentar la sostenibilidad ambiental y el cumplimiento de los <strong>ODS 6 y 13</strong> (<em>agua limpia y acción por el clima</em>).</p>




<table>
<tr>
<td><p><strong>Nombre del proyecto</strong></p></td>
<td><p>Hidro Smart – Sistema de Monitoreo Inteligente del Agua</p></td>
</tr>
</table>





<table>
<tr>
<td><p><strong>Tipo de solución</strong></p></td>
<td><p>Aplicación móvil multiplataforma + dispositivos IoT + backend en la nube</p></td>
</tr>
</table>





<table>
<tr>
<td><p><strong>Plataforma objetivo</strong></p></td>
<td><p>Android 9 o superior (hasta Android 14) / Navegadores web (Chrome, Edge, Firefox)</p></td>
</tr>
</table>





<table>
<tr>
<td><p><strong>Stack tecnológico</strong></p></td>
<td><p>React Native · Node.js/Express · PostgreSQL/Firebase · AWS IoT Core</p></td>
</tr>
</table>





<table>
<tr>
<td><p><strong>Presupuesto total</strong></p></td>
<td><p>$ 80.305.000 COP (operativo) | $ 110.595.000 COP (incluyendo equipos de desarrollo)</p></td>
</tr>
</table>





<table>
<tr>
<td><p><strong>Duración del proyecto</strong></p></td>
<td><p>6 meses – Metodología ágil Scrum (sprints de 2 semanas)</p></td>
</tr>
</table>








<p><strong>2. INTRODUCCIÓN</strong></p>

<p>El acceso al agua potable y la gestión eficiente del recurso hídrico son desafíos prioritarios a nivel mundial. En Colombia, el consumo per cápita ha aumentado significativamente, lo que exige soluciones tecnológicas que permitan su uso racional.</p>

<p><strong>Hidro </strong><strong>Smart</strong><strong> (2025)</strong> surge como una respuesta innovadora a esta necesidad.<br />El proyecto integra sensores de flujo, humedad y nivel conectados a <strong>microcontroladores ESP32</strong> que transmiten datos a una plataforma web y móvil.<br />Desde allí, los usuarios pueden visualizar su consumo en tiempo real, recibir notificaciones y activar o cerrar válvulas remotamente.</p>

<p>Este informe documenta los aspectos <strong>técnicos y económicos</strong> del desarrollo, abarcando requerimientos, recursos humanos, materiales, presupuesto y conclusiones generales del sistema implementado.</p>





<p><strong>3. DESCRIPCIÓN DEL PROYECTO</strong></p>

<p>El sistema <strong>Hidro </strong><strong>Smart</strong> está diseñado para monitorear el flujo de agua en instalaciones domésticas y comerciales. Utiliza un conjunto de <strong>sensores IoT</strong> conectados mediante el protocolo <strong>MQTT</strong> a la nube, donde los datos son procesados y almacenados.</p>

<p>La solución permite:</p>

- Medir el consumo total y por zonas.

- Detectar fugas o anomalías de presión.

- Generar alertas automáticas al usuario.

- Controlar válvulas electrónicas desde la app móvil.

- Visualizar reportes de consumo y eficiencia.

<p>El proyecto combina <strong>hardware accesible</strong>, <strong>software libre</strong>, y <strong>servicios cloud</strong>, garantizando escalabilidad y bajo costo de mantenimiento.</p>





<p><strong>4. OBJETIVOS</strong></p>

<p><strong>4.1 Objetivo General</strong></p>

<p>Desarrollar un sistema IoT para el monitoreo y control inteligente del consumo de agua, mejorando la eficiencia y reduciendo el desperdicio del recurso hídrico.</p>

<p><strong>4.2 Objetivos Específicos</strong></p>

1. Implementar sensores de flujo, nivel y humedad conectados a microcontroladores ESP32.

1. Diseñar una plataforma web y móvil que permita visualizar datos y alertas en tiempo real.

1. Integrar infraestructura en la nube para el almacenamiento y procesamiento de la información.

1. Establecer métricas de ahorro y eficiencia hídrica.

1. Evaluar el impacto económico y ambiental del sistema.







<p><strong>5. ALCANCE Y METODOLOGÍA</strong></p>

<p><strong>Alcance</strong></p>

<p>El sistema cubre hogares e instituciones pequeñas, con capacidad de gestionar hasta 10 sensores simultáneamente por unidad de control.<br />La interfaz de usuario es accesible desde cualquier navegador o dispositivo Android.</p>

<p><strong>Metodología</strong></p>

<p>El proyecto se desarrolló bajo el enfoque <strong>ágil Scrum</strong>, dividido en cinco fases principales:</p>

1. Análisis de requerimientos.

1. Diseño técnico y funcional.

1. Desarrollo e integración IoT.

1. Pruebas y validación.

1. Implementación y evaluación final.

<p>Cada sprint tuvo una duración de 2 semanas, con revisiones de avance y validación continua del prototipo funcional.</p>



<p><strong>6. PROPUESTA TÉCNICA</strong></p>

<p><strong>6.</strong><strong>1 Hardware</strong></p>

- Microcontroladores <strong>ESP32</strong>.

- Sensores <strong>YF-S201 (flujo)</strong>, <strong>HC-SR04 (nivel)</strong>, <strong>HW-390 (humedad)</strong>.

- Módulos relé 5V, válvulas solenoides 12V, pantallas OLED 0.96”.

- Computadores de desarrollo <strong>Ryzen 7 / Intel i7</strong>, 16–32 GB RAM, SSD 512 GB+.

- Routers Wi-Fi 2.4 GHz y periféricos ergonómicos.

<p><strong>6.2 Software</strong></p>

- <strong>Backend:</strong> C#,JAVA,.

- <strong>Frontend:</strong> HTML5, CSS3, JavaScript.

- <strong>Base de datos:</strong> sqserver.

- <strong>Simulación IoT:</strong> Node-RED, Arduino IDE, MQTT Explorer.

- <strong>Diseño:</strong> Figma, Draw.io.

- <strong>Control de versiones:</strong> Git/GitHub.

<p><strong>6.3 Infraestructura en la Nube (AWS)</strong></p>




<table>
<tr>
<td><p><strong>Servicio</strong></p></td>
<td><p><strong>Función</strong></p></td>
<td><p><strong>Costo 6 meses (COP)</strong></p></td>
</tr>
<tr>
<td><p>AWS IoT Core</p></td>
<td><p>Conectividad IoT segura y escalable</p></td>
<td><p>900.000</p></td>
</tr>
<tr>
<td><p>AWS Lambda</p></td>
<td><p>Procesamiento de eventos y alertas</p></td>
<td><p>300.000</p></td>
</tr>
<tr>
<td><p>Amazon RDS (PostgreSQL)</p></td>
<td><p>Base de datos gestionada</p></td>
<td><p>300.000</p></td>
</tr>
<tr>
<td><p>Amazon S3</p></td>
<td><p>Almacenamiento de logs</p></td>
<td><p>300.000</p></td>
</tr>
<tr>
<td><p><strong>Total Infraestructura</strong></p></td>
<td></td>
<td><p><strong>1.800.000 COP</strong></p></td>
</tr>
</table>




1. EQUIPO DE TRABAJO Y RECURSOS HUMANOS


<table>
<tr>
<td><p><strong>Integrante</strong></p></td>
<td><p><strong>Rol</strong></p></td>
<td><p><strong>Funciones</strong></p></td>
<td><p><strong>Duración</strong></p></td>
<td><p><strong>Salario (mensual)</strong></p></td>
<td><p><strong>Total</strong></p></td>
</tr>
<tr>
<td><p>Emerson Calet Molano Cardozo</p></td>
<td><p>Líder / QA</p></td>
<td><p>Coordinación, documentación y pruebas</p></td>
<td><p>6 meses</p></td>
<td><p>2.500.000</p></td>
<td><p>15.000.000</p></td>
</tr>
<tr>
<td><p>José David Amaya Mosquera</p></td>
<td><p>Backend</p></td>
<td><p>Desarrollo de API, IoT, bases de datos</p></td>
<td><p>6 meses</p></td>
<td><p>2.300.000</p></td>
<td><p>13.800.000</p></td>
</tr>
<tr>
<td><p>José Alejandro Montealegre Rodríguez</p></td>
<td><p>Frontend / Móvil</p></td>
<td><p>Diseño y desarrollo UI, integración</p></td>
<td><p>6 meses</p></td>
<td><p>2.300.000</p></td>
<td><p>13.800.000</p></td>
</tr>
<tr>
<td><p><strong>Total Recursos Humanos</strong></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p><strong>42.600.000 COP</strong></p></td>
</tr>
</table>


1. PRESUPUESTO TÉCNICO Y ECONÓMICO


<table>
<tr>
<td><p><strong>Categoría</strong></p></td>
<td><p><strong>Descripción</strong></p></td>
<td><p><strong>Costo Total (COP)</strong></p></td>
</tr>
<tr>
<td><p>Hardware y sensores</p></td>
<td><p>Microcontroladores, válvulas, componentes</p></td>
<td><p>895.000</p></td>
</tr>
<tr>
<td><p>Equipos de desarrollo</p></td>
<td><p>PCs, portátiles, celulares</p></td>
<td><p>30.290.000</p></td>
</tr>
<tr>
<td><p>Infraestructura en la nube</p></td>
<td><p>AWS IoT Core, Lambda, S3, RDS</p></td>
<td><p>1.800.000</p></td>
</tr>
<tr>
<td><p>Mano de obra técnica</p></td>
<td><p>Programadores, QA, diseño</p></td>
<td><p>2.840.000</p></td>
</tr>
<tr>
<td><p>Recursos humanos</p></td>
<td><p>Salarios y prestaciones (6 meses)</p></td>
<td><p>42.600.000</p></td>
</tr>
<tr>
<td><p>Costos operativos</p></td>
<td><p>Energía, mantenimiento, conectividad</p></td>
<td><p>2.000.000</p></td>
</tr>
<tr>
<td><p><strong>TOTAL GENERAL DEL PROYECTO</strong></p></td>
<td></td>
<td><p><strong>76.885.000 COP</strong></p></td>
</tr>
<tr>
<td><p><strong>+ Equipos personales de desarrollo (3 integrantes)</strong></p></td>
<td></td>
<td><p><strong>30.290.000 COP</strong></p></td>
</tr>
<tr>
<td><p><strong>TOTAL FINAL GENERAL HIDRO SMARTH (2025)</strong></p></td>
<td></td>
<td><p><strong>107.175.000 COP</strong></p></td>
</tr>
</table>




<p><strong>9. PLAN DE MANTENIMIENTO Y SOPORTE</strong></p>

<p>El mantenimiento se realiza en tres modalidades:</p>

- <strong>Preventivo:</strong> revisión mensual de sensores, firmware y base de datos.

- <strong>Correctivo:</strong> sustitución de módulos defectuosos y ajuste de válvulas.

- <strong>Evolutivo:</strong> incorporación de nuevas funciones y optimización de energía.

<p>Duración estimada del soporte: <strong>6 meses posteriores a la entrega</strong>.</p>







<p><strong>10. IMPACTO AMBIENTAL Y SOSTENIBILIDAD</strong></p>

<p>El sistema <strong>Hidro </strong><strong>Smart</strong> reduce el consumo de agua entre un <strong>20 y 25 % anual</strong>, previene fugas y sensibiliza al usuario sobre el uso racional.<br />Además, se proyecta integrar energía solar y almacenamiento autónomo, promoviendo la <strong>neutralidad energética</strong>.</p>



<p>11. CRONOGRAMA DE EJECUCIÓN Y PAGOS</p>


<table>
<tr>
<td><p><strong>Fase</strong></p></td>
<td><p><strong>Descripción</strong></p></td>
<td><p><strong>Duración</strong></p></td>
<td><p><strong>% de Pago</strong></p></td>
</tr>
<tr>
<td><p>1</p></td>
<td><p>Análisis de requerimientos</p></td>
<td><p>2 semanas</p></td>
<td><p>15%</p></td>
</tr>
<tr>
<td><p>2</p></td>
<td><p>Diseño técnico y prototipado</p></td>
<td><p>2 semanas</p></td>
<td><p>20%</p></td>
</tr>
<tr>
<td><p>3</p></td>
<td><p>Desarrollo de módulos IoT y backend</p></td>
<td><p>4 semanas</p></td>
<td><p>30%</p></td>
</tr>
<tr>
<td><p>4</p></td>
<td><p>Pruebas y validación</p></td>
<td><p>2 semanas</p></td>
<td><p>20%</p></td>
</tr>
<tr>
<td><p>5</p></td>
<td><p>Implementación y entrega final</p></td>
<td><p>2 semanas</p></td>
<td><p>15%</p></td>
</tr>
</table>




<p><strong>12. CONCLUSIONES</strong></p>

<p>El proyecto <strong>Hidro </strong><strong>Smart</strong><strong> (2025)</strong> demuestra la factibilidad técnica y económica de aplicar el Internet de las Cosas al manejo responsable del agua.<br />Con una inversión total de$<strong>107,175,000 </strong><strong>COP</strong>, el sistema ofrece una solución eficiente, escalable y sostenible.<br />Su impacto directo en la reducción del consumo hídrico contribuye al medio ambiente y optimiza el uso de los recursos energéticos.</p>













<p><strong>13. REFERENCIAS</strong></p>

- Amazon Web Services. (2025). <em>AWS IoT Core Documentation.</em> <a href="https://aws.amazon.com/es/iot-core"><u>https://aws.amazon.com/es/iot-core</u></a>

- Espressif Systems. (2024). <em>ESP32 Technical Reference Manual.</em> <a href="https://www.espressif.com"><u>https://www.espressif.com</u></a>

- PostgreSQL Global Development Group. (2025). <em>PostgreSQL Documentation.</em> <a href="https://www.postgresql.org"><u>https://www.postgresql.org</u></a>

- Microsoft. (2025). <em>Visual Studio Code Documentation.</em> <a href="https://code.visualstudio.com"><u>https://code.visualstudio.com</u></a>

- Figma Inc. (2025). <em>Figma UI Design Tool.</em> <a href="https://www.figma.com"><u>https://www.figma.com</u></a>
