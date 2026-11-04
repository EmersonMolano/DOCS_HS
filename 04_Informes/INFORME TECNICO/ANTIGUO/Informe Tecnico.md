> **Documento histórico.** Conversión de [Informe Tecnico.docx](<Informe Tecnico.docx>); se conserva su contenido fuente sin actualizarlo.

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

1. Resumen Ejecutivo&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;3

1. Introducción&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;3

1. Objetivos del Proyecto&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;3<br /> 3.1 Objetivo General<br /> 3.2 Objetivos Específicos

1. Requerimientos del Sistema<br /> 4.1 Requerimientos del Equipo de Desarrollo<br /> 4.2 Requerimientos de los Usuarios

1. Componentes y Materiales

1. Propuesta Técnica de Hardware y Software

1. Infraestructura en la Nube

1. Recursos Humanos y Mano de Obra

1. Equipos de Trabajo del Proyecto

1. Presupuesto Global Consolidado

1. Análisis y Selección de Proveedores

1. Impacto Ambiental y Sostenibilidad

1. Conclusiones

1. Referencias





















<h2><strong>1. RESUMEN EJECUTIVO</strong></h2>

<p>El proyecto <strong>Hidro </strong><strong>Smart</strong><strong> (2025)</strong> es una solución tecnológica enfocada en el monitoreo inteligente del recurso hídrico.<br />Utilizando sensores IoT, microcontroladores ESP32, bases de datos en la nube y plataformas web/móviles, el sistema permite registrar, analizar y controlar el flujo del agua en tiempo real.</p>

<p>Su propósito es <strong>optimizar el consumo y prevenir el desperdicio</strong>, fomentando prácticas sostenibles y el aprovechamiento eficiente de los recursos naturales.<br />El proyecto combina ingeniería electrónica, programación, diseño de interfaces y gestión ambiental, evidenciando un enfoque integral de innovación tecnológica.</p>



<p><strong>2. INTRODUCCIÓN</strong></p>

<p>El manejo eficiente del agua se ha convertido en una prioridad global ante el aumento del consumo doméstico e industrial.<br />En este contexto, <strong>Hidro Smart</strong> surge como una iniciativa orientada a digitalizar el control del agua mediante dispositivos conectados a Internet (IoT), que miden caudal, humedad y nivel, enviando la información a una plataforma en la nube.</p>

<p>Desde allí, los usuarios pueden visualizar gráficos, recibir alertas automáticas y generar reportes, contribuyendo al ahorro hídrico y al uso racional del recurso.<br />El sistema integra hardware accesible, software libre y servicios en la nube, garantizando escalabilidad, seguridad y bajo costo operativo.</p>

<p><strong>3. OBJETIVOS DEL PROYECTO</strong></p>

<p><strong>3.1 Objetivo General</strong></p>

<p>Diseñar e implementar un sistema IoT llamado <strong>Hidro Smart</strong> para el monitoreo, análisis y control del consumo de agua en tiempo real, orientado a la eficiencia y sostenibilidad.</p>

<p><strong>3.2 Objetivos Específicos</strong></p>

- Desarrollar módulos de medición de flujo, nivel y humedad con sensores IoT.

- Implementar una plataforma web/móvil con alertas de consumo anómalo.

- Utilizar infraestructura en la nube (AWS IoT Core) para almacenar y procesar datos.

- Integrar algoritmos de control y predicción para automatizar válvulas.

- Promover el ahorro y la conciencia ambiental en los usuarios finales.



<p><strong>4. REQUERIMIENTOS DEL SISTEMA</strong></p>

<p><strong>4.1 Requerimientos del Equipo de Desarrollo</strong></p>

- Computadores de alto rendimiento con procesadores <strong>Ryzen 7 / Intel i7</strong>, 16–32 GB RAM y SSD 512 GB o más.

- Microcontroladores <strong>ESP32</strong> y <strong>Raspberry Pi 4</strong>.

- Sensores <strong>YF-S201 (flujo)</strong>, <strong>HC-SR04 (nivel)</strong>, <strong>HW-390 (humedad)</strong>.

- Routers Wi-Fi 2.4 GHz.

- Software: <strong>Visual Studio Code</strong>, <strong>Node-RED</strong>, <strong>Arduino IDE</strong>, <strong>Figma</strong>, <strong>GitHub</strong>, <strong>PostgreSQL</strong>.

<p><strong>4.2 Requerimientos para los Usuarios</strong></p>

- Dispositivos <strong>Android 12+</strong> o navegadores web modernos.

- Conexión Wi-Fi estable (mínimo 10 Mbps).

- Acceso al panel <strong>Hidro Smart</strong> para monitoreo y control remoto.

<p>5. COMPONENTES Y MATERIALES</p>


<table>
<tr>
<td><p><strong>Categoría</strong></p></td>
<td><p><strong>Elemento</strong></p></td>
<td><p><strong>Cantidad</strong></p></td>
<td><p><strong>Costo Unitario (COP)</strong></p></td>
<td><p><strong>Costo Total</strong></p></td>
</tr>
<tr>
<td><p>Sensores</p></td>
<td><p>Caudal YF-S201</p></td>
<td><p>3</p></td>
<td><p>25.000</p></td>
<td><p>75.000</p></td>
</tr>
<tr>
<td><p>Sensores</p></td>
<td><p>Humedad HW-390</p></td>
<td><p>3</p></td>
<td><p>15.000</p></td>
<td><p>45.000</p></td>
</tr>
<tr>
<td><p>Sensores</p></td>
<td><p>Nivel HC-SR04</p></td>
<td><p>3</p></td>
<td><p>25.000</p></td>
<td><p>75.000</p></td>
</tr>
<tr>
<td><p>Controladores</p></td>
<td><p>ESP32</p></td>
<td><p>3</p></td>
<td><p>60.000</p></td>
<td><p>180.000</p></td>
</tr>
<tr>
<td><p>Actuadores</p></td>
<td><p>Válvulas solenoides 12V</p></td>
<td><p>3</p></td>
<td><p>30.000</p></td>
<td><p>90.000</p></td>
</tr>
<tr>
<td><p>Comunicación</p></td>
<td><p>Módulo relé doble 5V</p></td>
<td><p>3</p></td>
<td><p>20.000</p></td>
<td><p>60.000</p></td>
</tr>
<tr>
<td><p>Pantalla</p></td>
<td><p>OLED 0.96”</p></td>
<td><p>3</p></td>
<td><p>35.000</p></td>
<td><p>105.000</p></td>
</tr>
<tr>
<td><p>Fuente</p></td>
<td><p>5V 2A</p></td>
<td><p>3</p></td>
<td><p>25.000</p></td>
<td><p>75.000</p></td>
</tr>
<tr>
<td><p>Materiales</p></td>
<td><p>PVC, silicona, conectores, tornillos</p></td>
<td></td>
<td></td>
<td><p>190.000</p></td>
</tr>
<tr>
<td><p><strong>Subtotal Componentes</strong></p></td>
<td></td>
<td></td>
<td></td>
<td><p><strong>895.000 COP</strong></p></td>
</tr>
</table>








<p><strong>6. PROPUESTA TÉCNICA DE HARDWARE Y SOFTWARE</strong></p>

<p><strong>Hardware</strong></p>

- <strong>Computadores personales</strong> con procesadores Ryzen 7 / Intel i7, RAM 16–32 GB, SSD 512 GB o 1 TB.

- <strong>Monitores Full HD de 24–27 pulgadas.</strong>

- <strong>Celulares Android 5G</strong> para pruebas móviles.

- <strong>Periféricos de apoyo:</strong> mouse ergonómico, teclado inalámbrico, audífonos Bluetooth, UPS de respaldo.

<p><strong>Software</strong></p>

- <strong>Backend:</strong>JAVA,C#.

- <strong>Frontend:</strong> HTML5, CSS3, JavaScript.

- <strong>Bases de datos:</strong> sqlserver.

- <strong>Diseño:</strong> Figma, Draw.io.

- <strong>Simulación IoT:</strong> Node-RED, Arduino IDE, MQTT Explorer.

- <strong>Control de versiones:</strong> Git/GitHub.



<p>7. INFRAESTRUCTURA EN LA NUBE</p>


<table>
<tr>
<td><p><strong>Servicio</strong></p></td>
<td><p><strong>Descripción</strong></p></td>
<td><p><strong>Costo Mensual</strong></p></td>
<td><p><strong>Costo 6 Meses</strong></p></td>
</tr>
<tr>
<td><p>AWS IoT Core</p></td>
<td><p>Conectividad y monitoreo de sensores</p></td>
<td><p>150.000</p></td>
<td><p>900.000</p></td>
</tr>
<tr>
<td><p>AWS Lambda</p></td>
<td><p>Automatización de funciones</p></td>
<td><p>50.000</p></td>
<td><p>300.000</p></td>
</tr>
<tr>
<td><p>Amazon RDS (sqserver)</p></td>
<td><p>Base de datos gestionada</p></td>
<td><p>50.000</p></td>
<td><p>300.000</p></td>
</tr>
<tr>
<td><p>Amazon S3</p></td>
<td><p>Almacenamiento en la nube</p></td>
<td><p>50.000</p></td>
<td><p>300.000</p></td>
</tr>
<tr>
<td><p><strong>Total Infraestructura (6 meses)</strong></p></td>
<td></td>
<td></td>
<td><p><strong>1.800.000 COP</strong></p></td>
</tr>
</table>












<p>8. RECURSOS HUMANOS Y MANO DE OBRA</p>


<table>
<tr>
<td><p><strong>Integrante</strong></p></td>
<td><p><strong>Cargo</strong></p></td>
<td><p><strong>Funciones</strong></p></td>
<td><p><strong>Duración</strong></p></td>
<td><p><strong>Salario Mensual</strong></p></td>
<td><p><strong>Total (COP)</strong></p></td>
</tr>
<tr>
<td><p>José Alejandro Montealegre Rodríguez</p></td>
<td><p>Líder / QA</p></td>
<td><p>Planificación, control de calidad, documentación</p></td>
<td><p>6 meses</p></td>
<td><p>2.500.000</p></td>
<td><p>15.000.000</p></td>
</tr>
<tr>
<td><p>Emerson Calet Molano Cardozo</p></td>
<td><p>Backend / Analista</p></td>
<td><p>Desarrollo IoT y BD</p></td>
<td><p>6 meses</p></td>
<td><p>2.300.000</p></td>
<td><p>13.800.000</p></td>
</tr>
<tr>
<td><p>José David Amaya Mosquera</p></td>
<td><p>Frontend / Hardware</p></td>
<td><p>Interfaz web, conexión de sensores</p></td>
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






<p>Mano de Obra Técnica Complementaria</p>


<table>
<tr>
<td><p><strong>Rol</strong></p></td>
<td><p><strong>Actividad</strong></p></td>
<td><p><strong>Horas</strong></p></td>
<td><p><strong>Valor Hora</strong></p></td>
<td><p><strong>Total (COP)</strong></p></td>
</tr>
<tr>
<td><p>Programador IoT</p></td>
<td><p>Firmware y comunicación MQTT</p></td>
<td><p>60</p></td>
<td><p>25.000</p></td>
<td><p>1.500.000</p></td>
</tr>
<tr>
<td><p>Diseñador UI/UX</p></td>
<td><p>Prototipado en Figma</p></td>
<td><p>40</p></td>
<td><p>20.000</p></td>
<td><p>800.000</p></td>
</tr>
<tr>
<td><p>Tester / QA</p></td>
<td><p>Validación de software y hardware</p></td>
<td><p>30</p></td>
<td><p>18.000</p></td>
<td><p>540.000</p></td>
</tr>
<tr>
<td><p><strong>Subtotal Mano de Obra Técnica</strong></p></td>
<td></td>
<td></td>
<td></td>
<td><p><strong>2.840.000 COP</strong></p></td>
</tr>
</table>












<p><strong>9. EQUIPOS DE TRABAJO DEL PROYECTO</strong></p>

<p><strong>Especificaciones completas de PCs, Portátiles y Móviles</strong></p>


<table>
<tr>
<td><p><strong>Integrante</strong></p></td>
<td><p><strong>Tipo</strong></p></td>
<td><p><strong>Modelo / Componente</strong></p></td>
<td><p><strong>Especificaciones</strong></p></td>
<td><p><strong>Costo (COP)</strong></p></td>
</tr>
<tr>
<td><p><strong>Emerson Calet Molano Cardozo</strong></p></td>
<td><p>PC</p></td>
<td><p>Ryzen 7 5700G / 32 GB / SSD 1 TB / Monitor LG 24” / Logitech MK270</p></td>
<td><p>Potencia para simulaciones IoT</p></td>
<td><p>3.830.000</p></td>
</tr>
<tr>
<td></td>
<td><p>Portátil</p></td>
<td><p>HP Pavilion Ryzen 7 7730U / 16 GB / SSD 512 GB</p></td>
<td><p>Despliegue y programación móvil</p></td>
<td><p>3.500.000</p></td>
</tr>
<tr>
<td></td>
<td><p>Celular</p></td>
<td><p>Xiaomi Redmi Note 13 Pro+ / Android 14 / 8 GB / 256 GB</p></td>
<td><p>Pruebas móviles y monitoreo</p></td>
<td><p>2.100.000</p></td>
</tr>
<tr>
<td><p><strong>José David Amaya Mosquera</strong></p></td>
<td><p>PC</p></td>
<td><p>Intel i7-12700F / 32 GB / GTX 1660S / SSD 1 TB / Samsung 24”</p></td>
<td><p>Desarrollo backend y dashboards</p></td>
<td><p>5.390.000</p></td>
</tr>
<tr>
<td></td>
<td><p>Portátil</p></td>
<td><p>Dell Inspiron i7 1355U / 16 GB / SSD 512 GB</p></td>
<td><p>Pruebas y simulaciones web</p></td>
<td><p>3.700.000</p></td>
</tr>
<tr>
<td></td>
<td><p>Celular</p></td>
<td><p>Samsung Galaxy A35 / Android 14 / 8 GB / 256 GB</p></td>
<td><p>Control y monitoreo remoto</p></td>
<td><p>1.950.000</p></td>
</tr>
<tr>
<td><p><strong>José Alejandro Montealegre Rodríguez</strong></p></td>
<td><p>PC</p></td>
<td><p>Ryzen 5 5600 / 16 GB / RX 6600 / SSD 512 GB / LG 27”</p></td>
<td><p>Interfaz y diseño IoT</p></td>
<td><p>4.420.000</p></td>
</tr>
<tr>
<td></td>
<td><p>Portátil</p></td>
<td><p>Lenovo IdeaPad 5 Ryzen 7 7735HS / 16 GB / SSD 1 TB</p></td>
<td><p>Desarrollo móvil / pruebas</p></td>
<td><p>3.600.000</p></td>
</tr>
<tr>
<td></td>
<td><p>Celular</p></td>
<td><p>Motorola Edge 40 Neo / Android 14 / 8 GB / 256 GB</p></td>
<td><p>Validación de apps</p></td>
<td><p>1.800.000</p></td>
</tr>
<tr>
<td><p><strong>Total Global de Equipos</strong></p></td>
<td></td>
<td></td>
<td></td>
<td><p><strong>30.290.000 COP</strong></p></td>
</tr>
</table>










<p>10. PRESUPUESTO GLOBAL CONSOLIDADO</p>


<table>
<tr>
<td><p><strong>Categoría</strong></p></td>
<td><p><strong>Descripción</strong></p></td>
<td><p><strong>Costo (COP)</strong></p></td>
</tr>
<tr>
<td><p>Equipos y dispositivos</p></td>
<td><p>PCs, portátiles, celulares</p></td>
<td><p>30.290.000</p></td>
</tr>
<tr>
<td><p>Componentes IoT y materiales</p></td>
<td><p>Sensores, válvulas, PVC</p></td>
<td><p>895.000</p></td>
</tr>
<tr>
<td><p>Infraestructura en la nube</p></td>
<td><p>AWS IoT Core, Lambda, S3</p></td>
<td><p>1.800.000</p></td>
</tr>
<tr>
<td><p>Mano de obra técnica</p></td>
<td><p>Programación, diseño, QA</p></td>
<td><p>2.840.000</p></td>
</tr>
<tr>
<td><p>Recursos humanos</p></td>
<td><p>Salarios (6 meses)</p></td>
<td><p>42.600.000</p></td>
</tr>
<tr>
<td><p>Costos operativos</p></td>
<td><p>Energía, internet, mantenimiento</p></td>
<td><p>2.000.000</p></td>
</tr>
<tr>
<td><p><strong>TOTAL GENERAL DEL PROYECTO</strong></p></td>
<td></td>
<td><p><strong>76.885.000 COP</strong></p></td>
</tr>
<tr>
<td><p><strong>+ Equipos de Desarrollo (3 integrantes)</strong></p></td>
<td><p>PCs, portátiles y móviles</p></td>
<td><p><strong>30.290.000 COP</strong></p></td>
</tr>
<tr>
<td><p><strong>TOTAL FINAL GENERAL HIDRO SMART (2025)</strong></p></td>
<td></td>
<td><p><strong>1</strong><strong>10</strong><strong>.</strong><strong>715</strong><strong>.000 COP</strong></p></td>
</tr>
</table>






<p><strong>11. ANÁLISIS Y SELECCIÓN DE PROVEEDORES</strong></p>

- <strong>Hardware:</strong> HP, Dell, Lenovo y ASUS, por confiabilidad y soporte.

- <strong>Sensores y microcontroladores:</strong> MakerLab, Arduino Store, AliExpress (por costo-beneficio).

- <strong>Servicios en la nube:</strong> AWS IoT Core, por escalabilidad, seguridad TLS y soporte MQTT.

- <strong>Software:</strong> herramientas gratuitas (VS Code, Figma, GitHub), optimizando el presupuesto.















<p><strong>12. IMPACTO AMBIENTAL Y SOSTENIBILIDAD</strong></p>

<p><strong>Hidro </strong><strong>Smart</strong> contribuye al desarrollo sostenible al reducir el desperdicio de agua entre un <strong>15% y 25%</strong>, disminuyendo costos operativos y la huella ambiental.<br />Además, fomenta la educación ecológica en los usuarios al mostrar datos de consumo y eficiencia.<br />El sistema puede ampliarse con <strong>paneles solares</strong>, <strong>baterías recargables</strong> y <strong>módulos inteligentes</strong>, logrando independencia energética parcial.</p>



<p><strong>13. CONCLUSIONES</strong></p>

<p>El proyecto <strong>Hidro </strong><strong>Smart</strong><strong> (2025)</strong> valida que la automatización IoT es una herramienta eficaz y accesible para optimizar el consumo de agua.<br />El sistema cumple con los requerimientos técnicos, económicos y ambientales planteados, ofreciendo un equilibrio entre innovación, sostenibilidad y rentabilidad.</p>

<p>El costo total del proyecto asciende a <strong>1</strong><strong>10</strong><strong>.</strong><strong>715</strong><strong>.000 COP</strong>, incluyendo hardware, software, materiales, infraestructura en la nube, mano de obra, recursos humanos y equipos personales de los desarrolladores.<br />Este valor es <strong>razonable y sostenible</strong>, considerando los beneficios ambientales y el ahorro potencial del 25% en consumo de agua anual.</p>

<p>En conclusión, <strong>Hidro Smart</strong> se posiciona como una propuesta <strong>tecnológica y ecológica</strong>, con impacto real en la conservación del agua, contribuyendo al cumplimiento de los <strong>Objetivos de Desarrollo Sostenible (ODS 6 y 13)</strong>: <em>agua limpia y acción por el clima</em>.</p>

<p><strong>14. REFERENCIAS</strong></p>

- <a href="https://aws.amazon.com/es/iot-core"><u>https://aws.amazon.com/es/iot-core</u></a>

- <a href="https://www.postgresql.org"><u>https://www.postgresql.org</u></a>

- <a href="https://code.visualstudio.com"><u>https://code.visualstudio.com</u></a>

- <a href="https://www.espressif.com"><u>https://www.espressif.com</u></a>

- <a href="https://figma.com"><u>https://figma.com</u></a>

- <a href="https://www.dell.com"><u>https://www.dell.com</u></a>

- <a href="https://www.hp.com"><u>https://www.hp.com</u></a>
