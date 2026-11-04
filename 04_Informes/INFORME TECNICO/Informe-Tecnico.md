> **Nota de conversión.** Copia Markdown de [Informe-Tecnico.docx](<Informe-Tecnico.docx>); el original se conserva y su contenido no se actualizó.



<p><strong>INFORME TÉCNICO</strong></p>

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

<p><br />1. RESUMEN EJECUTIVO</p>



<p>Hidro Smart (2025) es una solución tecnológica innovadora enfocada en el monitoreo inteligente del consumo de agua en hogares colombianos. El sistema combina dispositivos IoT (sensores de caudal conectados vía Wi-Fi/Bluetooth) con una aplicación móvil multiplataforma, permitiendo a los usuarios visualizar su consumo en tiempo real, recibir alertas preventivas y generar reportes por actividad doméstica.</p>



<p>El proyecto responde a una problemática crítica: según datos de la Personería de Bogotá (2024), hasta el 40% del agua potable se pierde en la capital, y a nivel nacional la cifra asciende al 48% (Universidad de los Andes, 2024). Hidro Smart busca cerrar esta brecha tecnológica mediante una herramienta accesible, segura y escalable, alineada con los Objetivos de Desarrollo Sostenible ODS 6 (Agua Limpia) y ODS 13 (Acción por el Clima).</p>



<p>2. INTRODUCCIÓN</p>



<p>El consumo eficiente del agua es uno de los principales desafíos ambientales en los hogares modernos. En Colombia, gran parte de la población desconoce cuánta agua utiliza diariamente, ya que los medidores convencionales solo registran el total mensual sin ofrecer un desglose detallado por actividad (ducha, lavado, cocina, aseo, etc.).</p>



<p>Hidro Smart surge como una iniciativa orientada a digitalizar el control del agua mediante dispositivos IoT que miden el caudal y transmiten datos a una plataforma móvil/web. La aplicación permite a los usuarios visualizar estadísticas, recibir recomendaciones personalizadas y adoptar hábitos más conscientes, contribuyendo al ahorro hídrico y la sostenibilidad ambiental desde el hogar.</p>



<p>3. OBJETIVOS DEL PROYECTO</p>



<p>3.1 Objetivo General</p>

<p>Diseñar e implementar una solución tecnológica compuesta por un medidor inteligente de agua y una aplicación móvil que permita a los usuarios monitorear, controlar y optimizar su consumo diario, proporcionando información detallada, alertas preventivas y estrategias prácticas para fomentar el uso responsable del agua.</p>



<p>3.2 Objetivos Específicos</p>

- Desarrollar una aplicación móvil multiplataforma que muestre los datos recibidos desde un medidor inteligente en tiempo real.

- <br />Registrar, procesar y clasificar el consumo de agua por actividad doméstica (ducha, lavado, cocina, aseo).

- Generar informes y gráficos periódicos (diarios, semanales, mensuales, anuales) para que el usuario evalúe sus patrones de consumo.

- Proporcionar alertas automáticas y recomendaciones personalizadas para reducir el desperdicio hídrico.

- Implementar un sistema seguro de gestión de usuarios, hogares y dispositivos IoT con roles diferenciados.

- Evaluar el rendimiento y la usabilidad del sistema durante su implementación piloto.



<p>4. REQUERIMIENTOS DEL SISTEMA</p>



<p>4.1 Requerimientos del Equipo de Desarrollo</p>

- Computadores con procesadores Ryzen 7 / Intel i7, mínimo 16 GB RAM y SSD 512 GB o más.

- Dispositivos móviles Android para pruebas (versión 9 o superior).

- Sensores de caudal compatibles con Wi-Fi/Bluetooth para simulaciones IoT.

- Router Wi-Fi 2.4/5 GHz para pruebas de conectividad.

- Software: Visual Studio Code, React Native CLI, Node.js, Figma, GitHub, PostgreSQL / Firebase.



<p>4.2 Requerimientos para los Usuarios</p>

- Dispositivos Android versión 9 (Pie) o superior con mínimo 2 GB de RAM.

- Espacio de almacenamiento mínimo de 200 MB para la aplicación.

- Conexión estable a internet (Wi-Fi o datos móviles) para sincronización IoT.

- Acceso al panel Hidro Smart para monitoreo y configuración del hogar.

- Navegadores modernos compatibles: Chrome, Edge o Firefox (versión web).



<p>5. COMPONENTES Y MATERIALES</p>




<table>
<tr>
<td><p><strong>Categoría</strong></p></td>
<td><p><strong>Elemento</strong></p></td>
<td><p><strong>Cantidad</strong></p></td>
<td><p><strong>Costo Unitario (COP)</strong></p></td>
<td><p><strong>Costo Total (COP)</strong></p></td>
</tr>
<tr>
<td><p>Sensores IoT</p></td>
<td><p>Sensor de caudal (flujo de agua)</p></td>
<td><p>3</p></td>
<td><p>$ 25.000</p></td>
<td><p>$ 75.000</p></td>
</tr>
<tr>
<td><p>Controladores</p></td>
<td><p>Microcontrolador ESP32 (Wi-Fi/BT)</p></td>
<td><p>3</p></td>
<td><p>$ 60.000</p></td>
<td><p>$ 180.000</p></td>
</tr>
<tr>
<td><p>Actuadores</p></td>
<td><p>Válvulas solenoides 12V</p></td>
<td><p>3</p></td>
<td><p>$ 30.000</p></td>
<td><p>$ 90.000</p></td>
</tr>
<tr>
<td><p><br />Comunicación</p></td>
<td><p>Módulo relé doble 5V</p></td>
<td><p>3</p></td>
<td><p>$ 20.000</p></td>
<td><p>$ 60.000</p></td>
</tr>
<tr>
<td><p>Pantalla</p></td>
<td><p>OLED 0.96"</p></td>
<td><p>3</p></td>
<td><p>$ 35.000</p></td>
<td><p>$ 105.000</p></td>
</tr>
<tr>
<td><p>Fuente</p></td>
<td><p>Fuente 5V 2A</p></td>
<td><p>3</p></td>
<td><p>$ 25.000</p></td>
<td><p>$ 75.000</p></td>
</tr>
<tr>
<td><p>Materiales</p></td>
<td><p>PVC, silicona, conectores, tornillos</p></td>
<td><p>1</p></td>
<td><p>—</p></td>
<td><p>$ 190.000</p></td>
</tr>
<tr>
<td><p>SUBTOTAL COMPONENTES</p></td>
<td></td>
<td></td>
<td></td>
<td><p>$ 775.000</p></td>
</tr>
</table>




<p>6. PROPUESTA TÉCNICA DE HARDWARE Y SOFTWARE</p>



<p>6.1 Hardware</p>

- Computadores personales con procesadores Ryzen 7 / Intel i7, RAM 16–32 GB, SSD 512 GB o 1 TB.

- Monitores Full HD 24–27 pulgadas para desarrollo.

- Celulares Android (versión 9+) para pruebas de la aplicación móvil.

- Periféricos de apoyo: mouse ergonómico, teclado, audífonos, UPS de respaldo.



<p>6.2 Software</p>


<table>
<tr>
<td><p><strong>Capa</strong></p></td>
<td><p><strong>Tecnología / Herramienta</strong></p></td>
<td><p><strong>Propósito</strong></p></td>
</tr>
<tr>
<td><p>Frontend móvil</p></td>
<td><p>React Native (JavaScript)</p></td>
<td><p>Aplicación multiplataforma Android</p></td>
</tr>
<tr>
<td><p>Backend</p></td>
<td><p>Node.js / Express</p></td>
<td><p>API REST y lógica del negocio</p></td>
</tr>
<tr>
<td><p>Base de datos</p></td>
<td><p>PostgreSQL / Firebase Cloud</p></td>
<td><p>Almacenamiento de datos y configuraciones</p></td>
</tr>
<tr>
<td><p>IoT / Firmware</p></td>
<td><p>Arduino IDE, MQTT</p></td>
<td><p>Comunicación sensores–servidor</p></td>
</tr>
<tr>
<td><p>Diseño UI/UX</p></td>
<td><p>Figma, Draw.io</p></td>
<td><p>Prototipado de interfaces</p></td>
</tr>
<tr>
<td><p>Control de versiones</p></td>
<td><p>Git / GitHub</p></td>
<td><p>Gestión colaborativa del código</p></td>
</tr>
<tr>
<td><p>Nube / Backend IoT</p></td>
<td><p>AWS IoT Core / Firebase</p></td>
<td><p>Conectividad y almacenamiento en la nube</p></td>
</tr>
</table>




<p>7. INFRAESTRUCTURA EN LA NUBE</p>




<table>
<tr>
<td><p><strong><br />Servicio</strong></p></td>
<td><p><strong>Descripción</strong></p></td>
<td><p><strong>Costo Mensual (COP)</strong></p></td>
<td><p><strong>Costo 6 Meses </strong><strong>(COP)</strong></p></td>
</tr>
<tr>
<td><p>AWS IoT Core / Firebase</p></td>
<td><p>Conectividad y monitoreo de sensores IoT</p></td>
<td><p>$ 150.000</p></td>
<td><p>$ 900.000</p></td>
</tr>
<tr>
<td><p>AWS Lambda / Cloud Functions</p></td>
<td><p>Automatización de funciones serverless</p></td>
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
<td><p>TOTAL INFRAESTRUCTURA (6 meses)</p></td>
<td></td>
<td></td>
<td><p>$ 1.800.000</p></td>
</tr>
</table>




<p>8. RECURSOS HUMANOS Y MANO DE OBRA</p>



<p>8.1 Equipo de Desarrollo</p>


<table>
<tr>
<td><p><strong>Integrante</strong></p></td>
<td><p><strong>Cargo</strong></p></td>
<td><p><strong>Funciones Principales</strong></p></td>
<td><p><strong>Duración</strong></p></td>
<td><p><strong>Salario/mes</strong></p></td>
<td><p><strong>Total (COP)</strong></p></td>
</tr>
<tr>
<td><p>José Alejandro Montealegre Rodríguez</p></td>
<td><p>Líder / Base de Datos / QA</p></td>
<td><p>Planificación, BD, control calidad, documentación</p></td>
<td><p>6 meses</p></td>
<td><p>$ 2.500.000</p></td>
<td><p>$ 15.000.000</p></td>
</tr>
<tr>
<td><p>Emerson Calet Molano Cardozo</p></td>
<td><p>Programador / Backend IoT</p></td>
<td><p>Desarrollo IoT, código backend, integración sensores</p></td>
<td><p>6 meses</p></td>
<td><p>$ 2.300.000</p></td>
<td><p>$ 13.800.000</p></td>
</tr>
<tr>
<td><p>José David Amaya Mosquera</p></td>
<td><p>Analista / Frontend</p></td>
<td><p>Análisis, interfaz web/móvil, documentación</p></td>
<td><p>6 meses</p></td>
<td><p>$ 2.300.000</p></td>
<td><p>$ 13.800.000</p></td>
</tr>
<tr>
<td><p>TOTAL RECURSOS HUMANOS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>$ 42.600.000</p></td>
</tr>
</table>




<p>8.2 Mano de Obra Técnica Complementaria</p>


<table>
<tr>
<td><p><strong>Rol</strong></p></td>
<td><p><strong>Actividad</strong></p></td>
<td><p><strong>Horas</strong></p></td>
<td><p><strong>Valor/Hora (COP)</strong></p></td>
<td><p><strong>Total (COP)</strong></p></td>
</tr>
<tr>
<td><p>Programador IoT</p></td>
<td><p>Firmware y comunicación MQTT</p></td>
<td><p>60 h</p></td>
<td><p>$ 25.000</p></td>
<td><p>$ 1.500.000</p></td>
</tr>
<tr>
<td><p>Diseñador UI/UX</p></td>
<td><p>Prototipado en Figma</p></td>
<td><p>40 h</p></td>
<td><p>$ 20.000</p></td>
<td><p>$ 800.000</p></td>
</tr>
<tr>
<td><p><br />Tester / QA</p></td>
<td><p>Validación de software y hardware</p></td>
<td><p>30 h</p></td>
<td><p>$ 18.000</p></td>
<td><p>$ 540.000</p></td>
</tr>
<tr>
<td><p>SUBTOTAL MANO DE OBRA</p></td>
<td></td>
<td></td>
<td></td>
<td><p>$ 2.840.000</p></td>
</tr>
</table>




<p>9. EQUIPOS DE TRABAJO DEL PROYECTO</p>




<table>
<tr>
<td><p><strong>Integrante</strong></p></td>
<td><p><strong>Tipo</strong></p></td>
<td><p><strong>Modelo / Componente</strong></p></td>
<td><p><strong>Especificaciones</strong></p></td>
<td><p><strong>Costo (COP)</strong></p></td>
</tr>
<tr>
<td><p>Emerson Calet Molano Cardozo</p></td>
<td><p>PC</p></td>
<td><p>Ryzen 7 5700G / 32 GB / SSD 1 TB</p></td>
<td><p>Simulaciones IoT y desarrollo</p></td>
<td><p>$ 3.830.000</p></td>
</tr>
<tr>
<td><p>Emerson Calet Molano Cardozo</p></td>
<td><p>Portátil</p></td>
<td><p>HP Pavilion Ryzen 7 / 16 GB / SSD 512 GB</p></td>
<td><p>Programación móvil y despliegue</p></td>
<td><p>$ 3.500.000</p></td>
</tr>
<tr>
<td><p>Emerson Calet Molano Cardozo</p></td>
<td><p>Celular</p></td>
<td><p>Xiaomi Redmi Note 13 Pro+ / Android 14</p></td>
<td><p>Pruebas móviles y monitoreo</p></td>
<td><p>$ 2.100.000</p></td>
</tr>
<tr>
<td><p>José David Amaya Mosquera</p></td>
<td><p>PC</p></td>
<td><p>Intel i7-12700F / 32 GB / GTX 1660S / SSD 1 TB</p></td>
<td><p>Desarrollo backend y dashboards</p></td>
<td><p>$ 5.390.000</p></td>
</tr>
<tr>
<td><p>José David Amaya Mosquera</p></td>
<td><p>Portátil</p></td>
<td><p>Dell Inspiron i7 / 16 GB / SSD 512 GB</p></td>
<td><p>Pruebas y simulaciones web</p></td>
<td><p>$ 3.700.000</p></td>
</tr>
<tr>
<td><p>José David Amaya Mosquera</p></td>
<td><p>Celular</p></td>
<td><p>Samsung Galaxy A35 / Android 14</p></td>
<td><p>Control y monitoreo remoto</p></td>
<td><p>$ 1.950.000</p></td>
</tr>
<tr>
<td><p>José Alejandro Montealegre Rodríguez</p></td>
<td><p>PC</p></td>
<td><p>Ryzen 5 5600 / 16 GB / RX 6600 / SSD 512 GB</p></td>
<td><p>Diseño IoT e interfaz</p></td>
<td><p>$ 4.420.000</p></td>
</tr>
<tr>
<td><p>José Alejandro Montealegre Rodríguez</p></td>
<td><p>Portátil</p></td>
<td><p>Lenovo IdeaPad 5 Ryzen 7 / 16 GB / SSD 1 TB</p></td>
<td><p>Desarrollo móvil y pruebas</p></td>
<td><p>$ 3.600.000</p></td>
</tr>
<tr>
<td><p>José Alejandro Montealegre Rodríguez</p></td>
<td><p>Celular</p></td>
<td><p>Motorola Edge 40 Neo / Android 14</p></td>
<td><p>Validación de apps</p></td>
<td><p>$ 1.800.000</p></td>
</tr>
<tr>
<td><p>TOTAL EQUIPOS</p></td>
<td></td>
<td></td>
<td></td>
<td><p>$ 30.290.000</p></td>
</tr>
</table>




<p>10. PRESUPUESTO GLOBAL CONSOLIDADO</p>




<table>
<tr>
<td><p><strong><br />Categoría</strong></p></td>
<td><p><strong>Descripción</strong></p></td>
<td><p><strong>Costo (COP)</strong></p></td>
</tr>
<tr>
<td><p>Equipos y dispositivos</p></td>
<td><p>PCs, portátiles, celulares de los integrantes</p></td>
<td><p>$ 30.290.000</p></td>
</tr>
<tr>
<td><p>Componentes IoT y materiales</p></td>
<td><p>Sensores, microcontroladores, válvulas, PVC</p></td>
<td><p>$ 775.000</p></td>
</tr>
<tr>
<td><p>Infraestructura en la nube</p></td>
<td><p>AWS IoT Core, Lambda, RDS, S3 (6 meses)</p></td>
<td><p>$ 1.800.000</p></td>
</tr>
<tr>
<td><p>Mano de obra técnica</p></td>
<td><p>Programación IoT, diseño UX, testing QA</p></td>
<td><p>$ 2.840.000</p></td>
</tr>
<tr>
<td><p>Recursos humanos</p></td>
<td><p>Salarios del equipo de desarrollo (6 meses)</p></td>
<td><p>$ 42.600.000</p></td>
</tr>
<tr>
<td><p>Costos operativos</p></td>
<td><p>Energía, internet, mantenimiento, imprevistos</p></td>
<td><p>$ 2.000.000</p></td>
</tr>
<tr>
<td><p>TOTAL GENERAL DEL PROYECTO</p></td>
<td></td>
<td><p>$ 80.305.000</p></td>
</tr>
</table>




<p>11. ANÁLISIS Y SELECCIÓN DE PROVEEDORES</p>




<table>
<tr>
<td><p><strong>Categoría</strong></p></td>
<td><p><strong>Proveedor(es)</strong></p></td>
<td><p><strong>Justificación</strong></p></td>
</tr>
<tr>
<td><p>Hardware (PCs y portátiles)</p></td>
<td><p>HP, Dell, Lenovo, ASUS</p></td>
<td><p>Confiabilidad, garantía y soporte técnico disponible en Colombia</p></td>
</tr>
<tr>
<td><p>Microcontroladores y sensores</p></td>
<td><p>MakerLab, Arduino Store, AliExpress</p></td>
<td><p>Costo-beneficio, disponibilidad local e internacional</p></td>
</tr>
<tr>
<td><p>Servicios en la nube</p></td>
<td><p>AWS IoT Core / Firebase (Google)</p></td>
<td><p>Escalabilidad, seguridad TLS, soporte MQTT y SLA garantizado</p></td>
</tr>
<tr>
<td><p>Software de desarrollo</p></td>
<td><p>VS Code, React Native, Node.js, GitHub</p></td>
<td><p>Herramientas gratuitas/open-source, amplia comunidad de soporte</p></td>
</tr>
<tr>
<td><p>Diseño de interfaces</p></td>
<td><p>Figma, Draw.io</p></td>
<td><p>Colaboración en tiempo real y prototipado ágil sin costo adicional</p></td>
</tr>
</table>




<p>12. IMPACTO AMBIENTAL Y SOSTENIBILIDAD</p>



<p>Hidro Smart contribuye activamente al desarrollo sostenible al reducir el desperdicio de agua entre un 15% y 25% en hogares que adoptan el sistema. Esta reducción impacta directamente en los costos operativos de las familias y disminuye la huella hídrica a nivel doméstico.</p>



<p>El sistema promueve la educación ecológica al mostrar datos detallados de consumo por actividad, generando conciencia sobre el impacto ambiental de los hábitos cotidianos. Las recomendaciones personalizadas incentivan cambios de comportamiento sostenidos en el tiempo.</p>



<p>El proyecto está alineado con los Objetivos de Desarrollo Sostenible (ODS) de la ONU:</p>

- ODS 6 – Agua limpia y saneamiento: acceso a gestión eficiente del recurso hídrico.

- ODS 13 – Acción por el clima: reducción del impacto ambiental mediante tecnología.

- ODS 9 – Industria, innovación e infraestructura: aplicación de IoT para soluciones sostenibles.



<p>A futuro, el sistema puede ampliarse con integración de paneles solares para alimentar los dispositivos IoT, logrando autonomía energética parcial y reduciendo aún más la huella de carbono del proyecto.</p>



<p>13. CONCLUSIONES</p>



<p>El proyecto Hidro Smart (2025) demuestra que la automatización IoT es una herramienta eficaz y accesible para optimizar el consumo de agua en hogares colombianos. El sistema cumple con los requerimientos técnicos, funcionales, de seguridad y ambientales planteados en el SRS, ofreciendo un equilibrio entre innovación, sostenibilidad y rentabilidad.</p>



<p>La arquitectura técnica seleccionada —React Native (JavaScript) para la app, Node.js/Express para el backend, PostgreSQL/Firebase para la base de datos, y AWS IoT Core para la conectividad— garantiza escalabilidad, seguridad (cifrado AES-256, HTTPS/TLS) y disponibilidad igual o superior al 99% anual.</p>



<p>El presupuesto total del proyecto asciende a $ 80.305.000 COP (sin equipos de desarrollo personal). Este valor es razonable considerando los beneficios ambientales proyectados: un ahorro potencial del 25% en consumo de agua anual y la contribución directa a los ODS 6, 9 y 13.</p>



<p>En conclusión, Hidro Smart se posiciona como una propuesta tecnológica y ecológica con impacto real y medible en la conservación del agua, con alto potencial de escalabilidad hacia empresas de servicios públicos y municipios.</p>



<p>14. REFERENCIAS</p>



- Personería de Bogotá (2024). Informe sobre pérdidas de agua potable en la capital.

- Universidad de los Andes (2024). Estudio sobre desperdicio hídrico en Colombia.

- DANE (2024). Encuesta sobre prácticas de ahorro hídrico en Colombia.

- IEEE Standard 830-1998. Recommended Practice for Software Requirements Specifications.

- Amazon Web Services – AWS IoT Core. https://aws.amazon.com/es/iot-core

- <br />React Native – Framework de desarrollo móvil multiplataforma (Meta). https://reactnative.dev

- Node.js – Entorno de ejecución JavaScript del lado del servidor. https://nodejs.org

- PostgreSQL – Sistema de gestión de bases de datos. https://www.postgresql.org

- Firebase – Plataforma de desarrollo de apps en la nube. https://firebase.google.com

- Figma – Herramienta de diseño colaborativo. https://figma.com

- Organización de las Naciones Unidas – Objetivos de Desarrollo Sostenible. https://sdgs.un.org
