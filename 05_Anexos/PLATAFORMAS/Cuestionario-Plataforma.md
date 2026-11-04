> **Nota de conversión.** Copia Markdown de [Cuestionario-Plataforma.docx](<Cuestionario-Plataforma.docx>); el original se conserva y su contenido no se actualizó.

<p><strong>CUESTIONARIO: SELECCIÓN DE PLATAFORMA TECNOLÓGICA</strong></p>

<p>Proyecto Hidro Smart — SENA Programación de Software — Ficha 3145555</p>

<p>Emerson Calet M.</p>

<p>José Alejandro Montealegre R.</p>

<p>José David Amaya M.</p>




<table>
<tr>
<td><p><strong>1</strong></p></td>
<td><p><strong>¿Por qué es importante seleccionar la plataforma tecnológica adecuada para el desarrollo de un software?</strong></p></td>
</tr>
<tr>
<td></td>
<td><p><strong>Respuesta:</strong></p><p>Elegir la plataforma correcta determina la viabilidad técnica, los costos del proyecto y la experiencia del usuario final. Una selección equivocada puede generar incompatibilidades, deuda técnica, costos de migración altos y pérdida de tiempo. Los criterios clave incluyen: compatibilidad con los requerimientos funcionales y no funcionales, soporte a largo plazo de la comunidad o el proveedor, curva de aprendizaje del equipo, costos de licenciamiento y escalabilidad del sistema.</p><p><strong>Aplicación en Hidro Smart:</strong></p><p><em>Para Hidro Smart se evaluaron plataformas móviles, backend y nube. Se eligieron tecnologías con amplio soporte comunitario y licencias gratuitas para minimizar costos, tal como exige el presupuesto de $80.305.000 COP del proyecto.</em></p></td>
</tr>
</table>







<table>
<tr>
<td><p><strong>2</strong></p></td>
<td><p><strong>¿Cuáles son los factores que se deben considerar al seleccionar la plataforma tecnológica adecuada?</strong></p></td>
</tr>
<tr>
<td></td>
<td><p><strong>Respuesta:</strong></p><p>Los factores principales son:</p><p>-Costo total (licencias, infraestructura, mantenimiento).</p><p>-Facilidad de uso y curva de aprendizaje del equipo.</p><p>-Compatibilidad con los sistemas operativos y dispositivos objetivo.</p><p>-Escalabilidad: capacidad de crecer sin cambiar de arquitectura.</p><p>-Seguridad: herramientas nativas de cifrado, autenticación y control de acceso.</p><p>-Soporte y comunidad: documentación, foros y actualizaciones constantes.</p><p>- Interoperabilidad: integración con otros servicios (IoT, nube, APIs).</p><p><strong>Aplicación en Hidro Smart:</strong></p><p><em>Hidro Smart ponderó todos estos factores: React Native fue elegido por su capacidad multiplataforma (Android + web) con una sola base de código en JavaScript, lenguaje ya dominado por el equipo; Node.js por su rendimiento en operaciones I/O intensivas como la recepción de datos IoT en tiempo real; PostgreSQL por su robustez y licencia gratuita.</em></p></td>
</tr>
</table>









<table>
<tr>
<td><p><strong><br />3</strong></p></td>
<td><p><strong>¿Cuál es la diferencia entre una plataforma propietaria y una plataforma de código abierto?</strong></p></td>
</tr>
<tr>
<td></td>
<td><p><strong>Respuesta:</strong></p><p>Una plataforma propietaria (como iOS/Xcode o Microsoft Azure SQL) es desarrollada y controlada por una empresa. Requiere pago de licencias, limita la personalización al código fuente y genera dependencia del proveedor (vendor lock-in). Una plataforma de código abierto (como React Native, Node.js o PostgreSQL) tiene el código fuente disponible públicamente, permite modificación y redistribución, y generalmente no tiene costo de licencia, aunque puede tener costos de implementación y soporte.</p><p><strong>Aplicación en Hidro Smart:</strong></p><p><em>Hidro Smart priorizó plataformas de código abierto para evitar costos de licenciamiento y dependencia de un solo proveedor. La única excepción es Firebase (Google), que tiene un modelo freemium, pero cuenta con alternativas open source (Supabase, self-hosted PostgreSQL) si en el futuro se desea migrar.</em></p></td>
</tr>
</table>







<table>
<tr>
<td><p><strong>4</strong></p></td>
<td><p><strong>¿Qué criterios se deben utilizar para elegir entre una plataforma de escritorio y una plataforma web o móvil?</strong></p></td>
</tr>
<tr>
<td></td>
<td><p><strong>Respuesta:</strong></p><p>La elección depende del perfil del usuario, el contexto de uso y los requisitos de conectividad. Escritorio: adecuado cuando se requiere procesamiento intensivo local, acceso a hardware específico o uso offline prolongado. Web/Móvil: adecuado cuando el usuario necesita acceso desde múltiples dispositivos, movilidad, y actualizaciones automáticas sin instalación. Un sistema híbrido combina ambos: app móvil para el usuario final y panel web para el administrador.</p><p><strong>Aplicación en Hidro Smart:</strong></p><p><em>Hidro Smart implementa exactamente este modelo híbrido: app móvil (React Native (Android 9 o superior (hasta Android 14)) para que el usuario doméstico monitoree su consumo en cualquier momento y lugar, y versión web (Chrome, Edge, Firefox) para el administrador del sistema. Esto responde directamente al RNF3 (Compatibilidad) y RNF7.3 (Multiplataforma) del SRS.</em></p></td>
</tr>
</table>







<table>
<tr>
<td><p><strong>5</strong></p></td>
<td><p><strong>¿Cuáles son las ventajas y desventajas de utilizar una plataforma en la nube?</strong></p></td>
</tr>
<tr>
<td></td>
<td><p><strong>Respuesta:</strong></p><p>Ventajas:</p><p>-Escalabilidad automática sin inversión en servidores físicos.</p><p>-Alta disponibilidad (Hidro Smart requiere ≥99% según RNF4.1).</p><p>-Acceso desde cualquier dispositivo con internet.</p><p>-Gestión simplificada de backups y recuperación ante desastres.</p><p>-Pago por uso: solo se paga lo que se consume.</p><p>Desventajas:</p><p>-Dependencia de conexión a internet — riesgo real en zonas de bajo estrato o áreas rurales de Colombia donde la conectividad es limitada.</p><p>-Costos que pueden escalar inesperadamente con el crecimiento del tráfico.</p><p><br />-Menor control directo sobre la infraestructura.</p><p>-Riesgos de privacidad si el proveedor accede a los datos almacenados.</p><p><strong>Aplicación en Hidro Smart:</strong></p><p><em>Hidro Smart usa AWS IoT Core, Lambda, RDS y S3 por un costo de $1.800.000 COP en 6 meses. La dependencia de internet es una restricción explícita del SRS : el sistema requiere conexión estable. Para versiones futuras, se recomienda evaluar un modo offline parcial para hogares con conectividad intermitente.</em></p></td>
</tr>
</table>







<table>
<tr>
<td><p><strong>6</strong></p></td>
<td><p><strong>¿Cómo se puede evaluar la escalabilidad y el rendimiento de una plataforma tecnológica?</strong></p></td>
</tr>
<tr>
<td></td>
<td><p><strong>Respuesta:</strong></p><p>La evaluación se realiza mediante:</p><p>-Pruebas de carga y estrés (ej. Apache JMeter, k6): simulan múltiples usuarios concurrentes para medir degradación del rendimiento.</p><p>-Pruebas de escalado horizontal: agregar instancias adicionales y verificar que el sistema distribuya la carga correctamente.</p><p>-Métricas de tiempo de respuesta bajo carga (el SRS exige ≤3 segundos por solicitud).</p><p>- Monitoreo de CPU, memoria y latencia en producción con herramientas como AWS CloudWatch.</p><p>-Análisis de arquitectura: verificar que los componentes sean stateless (sin estado) para permitir escalado horizontal.</p><p><strong>Aplicación en Hidro Smart:</strong></p><p><em>El SRS de Hidro Smart define métricas concretas: RNF1.2 exige soportar 100 usuarios concurrentes sin degradación, RNF1.4 exige mantener rendimiento con el doble de usuarios promedio, y RNF1.3 alerta cuando un recurso supera el 90% de capacidad. AWS Auto Scaling cubre estos requerimientos automáticamente.</em></p></td>
</tr>
</table>







<table>
<tr>
<td><p><strong>7</strong></p></td>
<td><p><strong>¿Cuál es el papel de la seguridad en la selección de una plataforma tecnológica?</strong></p></td>
</tr>
<tr>
<td></td>
<td><p><strong>Respuesta:</strong></p><p>La seguridad debe evaluarse desde la selección inicial de la plataforma, no como un añadido posterior. Los criterios clave son: soporte nativo para HTTPS/TLS, cifrado de datos en reposo y en tránsito, mecanismos de autenticación robustos (OAuth2, JWT), control de acceso basado en roles (RBAC), registro de auditoría de acciones críticas, y cumplimiento de normativas aplicables (GDPR, Ley 1581 en Colombia).</p><p><strong>Aplicación en Hidro Smart:</strong></p><p><em>Hidro Smart requiere por SRS (RNF5): HTTPS/TLS en todas las comunicaciones, cifrado AES-256 en base de datos, tokens JWT con expiración, bloqueo por intentos fallidos, y copias de seguridad cifradas semanales. AWS y Firebase soportan todos estos mecanismos de forma nativa, lo que fue determinante en su selección.</em></p></td>
</tr>
</table>







<table>
<tr>
<td><p><strong><br />8</strong></p></td>
<td><p><strong>¿Qué papel juegan los recursos financieros y humanos en la selección de una plataforma tecnológica?</strong></p></td>
</tr>
<tr>
<td></td>
<td><p><strong>Respuesta:</strong></p><p>Los recursos disponibles son una restricción real que acota el espacio de decisión. Con presupuesto limitado se prioriza: plataformas gratuitas o freemium, tecnologías que el equipo ya conoce (menor curva de aprendizaje = menor tiempo y costo), y herramientas con comunidad activa (documentación y soporte gratuito). Con mayor presupuesto se puede optar por plataformas enterprise con SLAs garantizados y soporte profesional.</p><p><strong>Aplicación en Hidro Smart:</strong></p><p><em>El equipo de Hidro Smart (3 aprendices SENA) eligió tecnologías que ya conocían: React Native, Node.js y SQL. El equipo ya conocía JavaScript, lo que eliminó tiempo de capacitación. El presupuesto de $80.305.000 COP —donde el 53% son salarios del equipo— exigía que las licencias de software fueran gratuitas o de costo mínimo, lo que se logró con el stack elegido.</em></p></td>
</tr>
</table>







<table>
<tr>
<td><p><strong>9</strong></p></td>
<td><p><strong>¿Cómo se puede evaluar la compatibilidad de una plataforma tecnológica con los requisitos técnicos del software?</strong></p></td>
</tr>
<tr>
<td></td>
<td><p><strong>Respuesta:</strong></p><p>La evaluación de compatibilidad incluye:</p><p>-Verificar que la plataforma soporte el lenguaje y frameworks definidos en el SRS.</p><p>- Comprobar compatibilidad con los dispositivos y sistemas operativos objetivo.</p><p>-Revisar que las APIs y protocolos de comunicación sean interoperables (REST, MQTT, WebSockets).</p><p>{Probar la integración entre componentes (app ↔ backend ↔ base de datos ↔ IoT) en un entorno controlado antes de producción.</p><p>-Revisar la documentación oficial para detectar limitaciones conocidas.</p><p><strong>Aplicación en Hidro Smart:</strong></p><p><em>Hidro Smart verificó compatibilidad en varios niveles: React Native soporta Android 9–14 (RNF3.1) y navegadores modernos mediante React Native Web (RNF3.2); Node.js se integra nativamente con AWS IoT Core vía MQTT; PostgreSQL y Firebase son compatibles con las consultas en tiempo real que requiere RF5 (reportes). Las pruebas de conexión ESP32 ↔ backend se realizaron en la fase de seguimiento (15 de marzo de 2025).</em></p></td>
</tr>
</table>







<table>
<tr>
<td><p><strong>10</strong></p></td>
<td><p><strong>¿Cuáles son las principales tendencias y tecnologías emergentes en la selección de plataformas tecnológicas?</strong></p></td>
</tr>
<tr>
<td></td>
<td><p><strong>Respuesta:</strong></p><p>Las tendencias actuales más relevantes son:</p><p>-Edge Computing: procesamiento de datos cerca del dispositivo IoT para reducir latencia, ideal para sistemas de monitoreo en tiempo real.</p><p>-Serverless y FaaS: funciones como servicio (AWS Lambda) que escalan automáticamente sin gestionar servidores.</p><p>-Plataformas IoT gestionadas: AWS IoT Core, Google Cloud IoT, Azure IoT Hub — simplifican la conectividad segura de dispositivos.</p><p><br />-IA/ML integrado: modelos predictivos embebidos en la nube para análisis de patrones (relevante para RF5.3 de Hidro Smart).</p><p>-Low-code/No-code: útil para prototipos rápidos, pero inadecuado para sistemas complejos con IoT y seguridad avanzada.</p><p>-Arquitecturas de microservicios: permiten escalar módulos independientemente.</p><p><strong>Aplicación en Hidro Smart:</strong></p><p><em>Hidro Smart ya incorpora varias de estas tendencias: serverless con AWS Lambda (escalado automático de alertas), IoT gestionado con AWS IoT Core (conectividad segura de sensores), y un módulo predictivo (RF5.3) que puede evolucionar hacia ML en versiones futuras. Se optó por desarrollo full-code en lugar de low-code para tener control total sobre la seguridad y la integración IoT.</em></p></td>
</tr>
</table>
