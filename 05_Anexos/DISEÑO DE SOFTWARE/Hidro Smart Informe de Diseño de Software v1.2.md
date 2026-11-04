> **Documento histórico.** Conversión de [Hidro Smart Informe de Diseño de Software v1.2.docx](<Hidro Smart Informe de Diseño de Software v1.2.docx>); se conserva su contenido fuente sin actualizarlo.

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

<p><strong><br />Resumen</strong></p>

<p>El presente Informe de Diseño de Software describe la arquitectura, módulos, base de datos, diagramas UML y especificaciones técnicas del sistema <strong>Hidro Smart</strong>, una solución IoT para el monitoreo inteligente del consumo de agua en hogares. El sistema permite visualización en tiempo real, alertas automáticas, recomendaciones de ahorro, reportes exportables, modo vacaciones, metas de consumo, historial de conectividad de dispositivos y soporte técnico integrado. Se utiliza <strong>React</strong><strong> + Vite</strong> para el frontend (web/móvil responsivo), <strong>Node.js</strong> para el backend, <strong>PostgreSQL</strong> como base de datos, y se aplican patrones de arquitectura moderna como <strong>Hexagonal</strong>, <strong>Event-Driven</strong>, <strong>Circuit</strong><strong> Breaker</strong> y <strong>DTOs</strong>. El diseño se basa en el SRS v3.0 actualizado.</p>

<p><strong>Palabras clave:</strong> Consumo de agua, IoT, React, Vite, Node.js, sostenibilidad, alertas inteligentes, arquitectura hexagonal, event-driven.</p>





























<p><strong>Tabla de Contenido</strong></p>

<p><a href="#_heading=h.d1hleetmj24j">Introducción&emsp;4</a></p><p><a href="#_heading=h.3rsn0jftcn3f">Descripción general del sistema&emsp;7</a></p><p><a href="#_heading=h.7kvhk1f0253r">Arquitectura del Software&emsp;9</a></p><p><a href="#_heading=h.togpoklal21b">Tipo de Arquitectura&emsp;10</a></p><p><a href="#_heading=h.bbe6jwndolzx">Arquitectura en Capas&emsp;10</a></p><p><a href="#_heading=h.jkcxctbto64u">Flujo general de datos&emsp;11</a></p><p><a href="#_heading=h.g1mxuwqhjso">Diseño de Componentes o Módulos&emsp;11</a></p><p><a href="#_heading=h.tk6k6wtjjlqh">Diagramas del Sistema (UML)&emsp;13</a></p><p><a href="#_heading=h.hesvj2tnhzlg">Diagrama de Casos de Uso&emsp;14</a></p><p><a href="#_heading=h.ktlodyv2xkn5">Diagrama de Clases (Diagrama de Dominio)&emsp;14</a></p><p><a href="#_heading=h.ul0qdypr6xs7">Diagrama de Actividad&emsp;14</a></p><p><a href="#_heading=h.bduzeskg5w4r">Diagrama de Transición de Estados&emsp;14</a></p><p><a href="#_heading=h.3hxvlh27awmn">Diagrama de Secuencia&emsp;15</a></p><p><a href="#_heading=h.dkkjw8u9lj3f">Diagrama de Componentes&emsp;15</a></p><p><a href="#_heading=h.tep437g1snbm">Diagrama de Despliegue&emsp;15</a></p><p><a href="#_heading=h.aj61xybg5poc">Diseño de Base de Datos&emsp;16</a></p><p><a href="#_heading=h.wij1q3ebfrht">Modelo Entidad - Relación&emsp;16</a></p><p><a href="#_heading=h.3cf2lug8z0uv">Tablas principales&emsp;16</a></p><p><a href="#_heading=h.q0t8st7ik29t">Detalles de tablas principales (campos, llaves primarias y foráneas)&emsp;17</a></p><p><a href="#_heading=h.avcf1ghjhcob">Relaciones entre tablas&emsp;18</a></p><p><a href="#_heading=h.z931srpigzs2">Diseño de Interfaces&emsp;20</a></p><p><a href="#_heading=h.i8k0yf6xcobv">Prototipos de pantallas principales&emsp;20</a></p><p><a href="#_heading=h.qx4x2t5vukr2">Formularios principales&emsp;21</a></p><p><a href="#_heading=h.oixm0bteg8k1">Menús y navegación&emsp;21</a></p><p><a href="#_heading=h.1czvkc5kpe8l">Reglas de negocio&emsp;22</a></p><p><a href="#_heading=h.3akbsz46qze0">Seguridad del Sistema&emsp;24</a></p><p><a href="#_heading=h.uc37bgz2s0b9">Autenticación&emsp;24</a></p><p><a href="#_heading=h.4088ho9wzy1b">Autorización&emsp;24</a></p><p><a href="#_heading=h.rex3q8o18mqt">Control de acceso&emsp;24</a></p><p><a href="#_heading=h.cgryjwpjfyzm">Protección de datos&emsp;25</a></p><p><a href="#_heading=h.ogsevlvqk0er">Manejo de contraseñas&emsp;25</a></p><p><a href="#_heading=h.4itk8aeiqzr3">Especificaciones Técnicas&emsp;26</a></p><p><a href="#_heading=h.2zefyb2hq98b">Concideraciones de Implementación&emsp;28</a></p><p><a href="#_heading=h.shqznm85ulay">Estándares de codificación&emsp;28</a></p><p><a href="#_heading=h.1eho384lxhh7">Estructura del proyecto&emsp;28</a></p><p><a href="#_heading=h.k2o3tpk7a20w">Manejo de errores&emsp;29</a></p><p><a href="#_heading=h.33b5au71g8tr">Pruebas del sistema&emsp;29</a></p><p><a href="#_heading=h.sgim7gmab38c">Otras consideraciones&emsp;29</a></p><p><a href="#_heading=h.bvdaamrnil02">Referencias&emsp;31</a></p>











<p>Introducción</p>

<p>El presente documento constituye el Informe de Diseño de Software del proyecto Hidro Smart, desarrollado como parte del Tecnólogo en Análisis y Desarrollo de Software del Servicio Nacional de Aprendizaje (SENA), ficha 3145555.</p>

<p>Propósito del documento: Este documento tiene como propósito principal describir de forma detallada y técnica cómo se va a construir el sistema <strong>Hidro Smart</strong>, tomando como base la <strong>Especificación de Requisitos de Software (SRS v</strong><strong>1.1</strong><strong>)</strong> actualizada. Sirve como guía oficial para el equipo de desarrollo durante las fases de:</p>

- Construcción de la base de datos (PostgreSQL).

- Desarrollo del frontend (React + Vite).

- Implementación del backend (Node.js + Express).

- Codificación de la lógica de negocio (Arquitectura Hexagonal, Casos de Uso).

- Integración de dispositivos IoT (MQTT).

- Realización de pruebas funcionales y no funcionales.

<p>Así mismo, garantiza la trazabilidad entre los requerimientos definidos  y su implementación técnica, documentando los patrones arquitectónicos y de diseño aplicados para garantizar escalabilidad, mantenibilidad y tolerancia a fallos.</p>







<p><strong><br />Alcance del sistema</strong></p>

<p><strong>Hidro Smart</strong> es una solución tecnológica compuesta por un medidor inteligente de agua (basado en <strong>ESP32</strong>) conectado mediante <strong>IoT</strong><strong> (MQTT sobre TLS)</strong> y una aplicación web/móvil responsiva desarrollada con <strong>React</strong><strong> + Vite</strong>. El sistema permite a los usuarios domésticos:</p>

- Monitorear el consumo de agua en tiempo real con <strong>WebSockets</strong>.

- Clasificar el consumo por actividades (ducha, lavado, aseo, cocina, etc.).

- Recibir alertas automáticas por consumo excesivo, fugas o desconexión de dispositivos.

- Generar recomendaciones personalizadas de ahorro.

- Configurar topes de consumo, idioma, moneda y temas visuales.

- Exportar reportes en <strong>PDF y Excel</strong>.

- Gestionar hogares (proyectos) y dispositivos IoT.

- Activar <strong>modo vacaciones</strong> para suspender notificaciones no críticas.

- Establecer <strong>metas de ahorro y presupuesto mensual</strong>.

- Solicitar <strong>soporte técnico</strong> a través de un sistema de tickets.

- Consultar <strong>historial de conectividad</strong> de dispositivos (señal, batería, voltaje, temperatura).

- Eliminar su cuenta de forma autónoma (derecho al olvido).

<p>Quedan fuera del alcance inicial: integración con sistemas externos de acueductos públicos y la versión nativa para iOS (se prioriza web responsiva).</p>



<p><strong>Definiciones y términos</strong></p>


<table>
<tr>
<td><p><br />Término</p></td>
<td><p>Definición</p></td>
</tr>
<tr>
<td><p><strong>IoT</strong></p></td>
<td><p>Internet of Things: red de dispositivos físicos (medidores de agua)   conectados a internet que envían datos de consumo en tiempo real.</p></td>
</tr>
<tr>
<td><p><strong>ESP32</strong></p></td>
<td><p>Microcontrolador con Wi-Fi y Bluetooth usado como medidor</p><p>inteligente.</p></td>
</tr>
<tr>
<td><p><strong>Hogar/Proyecto</strong></p></td>
<td><p>Entidad que agrupa usuarios, dispositivos y configuraciones de</p><p>consumo dentro del sistema.</p></td>
</tr>
<tr>
<td><p><strong>Estrato socioeconómico</strong></p></td>
<td><p>Clasificación usada para establecer valores base de referencia de</p><p>consumo (1 a 6).</p></td>
</tr>
<tr>
<td><p><strong>Token Access/</strong><strong>Refresh</strong></p></td>
<td><p>Mecanismos de autenticación JWT para gestionar sesiones seguras.</p></td>
</tr>
<tr>
<td><p><strong>Lectura</strong></p></td>
<td><p>Registro individual de caudal y consumo enviado por el dispositivo</p><p>IoT.</p></td>
</tr>
<tr>
<td><p><strong>Alerta</strong></p></td>
<td><p>Notificación automática generada cuando se supera un tope</p><p>configurado o se detecta una anomalía.</p></td>
</tr>
<tr>
<td><p><strong>DTO</strong></p></td>
<td><p>Data Transfer Object: objeto que estructura datos entre capas.</p></td>
</tr>
<tr>
<td><p><strong><br />Event</strong><strong> Bus</strong></p></td>
<td><p>Sistema de comunicación asíncrona basada en eventos (publicador/suscriptor).</p></td>
</tr>
<tr>
<td><p><strong>Circuit</strong><strong> Breaker</strong></p></td>
<td><p>Patrón de tolerancia a fallos que evita llamadas a servicios caídos.</p></td>
</tr>
<tr>
<td><p><strong>Vite</strong></p></td>
<td><p>Bundler ultrarrápido para aplicaciones web modernas.</p></td>
</tr>
<tr>
<td><p><strong>React</strong></p></td>
<td><p>Biblioteca de JavaScript para construir interfaces de usuario</p><p>basadas en componentes.</p></td>
</tr>
</table>




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

















<p>Descripción general del sistema</p>

<p><strong>Hidro Smart</strong> es un sistema inteligente diseñado para resolver el problema de la falta de visibilidad y control del consumo de agua en los hogares colombianos. Combina un medidor físico inteligente (IoT) con una aplicación web/móvil que procesa, analiza y presenta la información en tiempo real..</p>

<p><br />Diseñar e implementar una solución tecnológica que permita a los usuarios domésticos monitorear, controlar y optimizar su consumo diario de agua, proporcionando información detallada por actividad, alertas preventivas, herramientas de administración avanzada (modo vacaciones, metas, soporte) y recomendaciones prácticas para reducir el desperdicio y promover el uso responsable del recurso hídrico.</p>

<p>El sistema contempla tres tipos de usuarios principales:</p>


<table>
<tr>
<td><p>Tipo de usuario</p></td>
<td><p>Tipo de usuario</p></td>
<td><p>Rol en el sistema</p></td>
</tr>
<tr>
<td><p><strong>Usuario doméstico</strong></p></td>
<td><p>Persona que utiliza la app para consultar su consumo, configurar topes, generar reportes, gestionar metas y solicitar soporte.</p></td>
<td><p>Visualiza datos de sus hogares, configura topes, genera reportes, gestiona dispositivos y metas.</p></td>
</tr>
<tr>
<td><p><strong>Administrador</strong></p></td>
<td><p>Personal autorizado que supervisa hogares, usuarios y dispositivos.</p></td>
<td><p>Puede crear/suspender cuentas, revisar auditorías, gestionar configuraciones globales.</p></td>
</tr>
<tr>
<td><p><strong>Soporte Técnico</strong></p></td>
<td><p>Técnico IoT que realiza mantenimiento, calibraciones y soporte de conectividad.</p></td>
<td><p>Accede a gestión de dispositivos, historial de conectividad y tickets de soporte, pero no a datos personales de usuarios.</p></td>
</tr>
</table>




<p>El sistema se organiza en los siguientes módulos principales:</p>


<table>
<tr>
<td><p>Módulo</p></td>
<td><p>Función principal</p></td>
</tr>
<tr>
<td><p>RF1 — Autenticación y seguridad</p></td>
<td><p>Registro, login JWT, roles, recuperación de contraseña, actualización de perfil, suspensión de cuentas, eliminación de cuenta propia (soft delete).</p></td>
</tr>
<tr>
<td><p>RF2 — Gestión de dispositivos IoT</p></td>
<td><p>Registro, calibración (factor K y offset), suspensión, reactivación, desvinculación, umbral de alerta por dispositivo, historial de conectividad.</p></td>
</tr>
<tr>
<td><p>RF3 — Gestión de hogares</p></td>
<td><p>Creación de hogares, estratificación, asignación de titular y miembros, vinculación de dispositivos, suspensión y reactivación.</p></td>
</tr>
<tr>
<td><p>RF4 — Configuraciones del sistema</p></td>
<td><p>Topes de consumo, alertas personalizadas, recomendaciones, idioma/moneda, temas visuales, auditoría, modo vacaciones.</p></td>
</tr>
<tr>
<td><p><br />RF5 — Reportes y análisis</p></td>
<td><p>Gráficos en tiempo real (WebSockets), históricos, modelo predictivo, alertas, exportación PDF/Excel, hábitos de consumo, metas de ahorro, soporte técnico (tickets).</p></td>
</tr>
</table>




<p>Hidro Smart opera en un entorno doméstico conectado.</p>

<p>El flujo principal es el siguiente:</p>

1. Los medidores inteligentes (ESP32) instalados en la tubería de agua envían datos de caudal y métricas de salud (señal, batería) mediante <strong>MQTT sobre TLS</strong> al broker en la nube.

1. El <strong>backend</strong><strong> (Node.js)</strong> recibe las lecturas, las procesa (aplica calibración, calcula costo) y las almacena en <strong>PostgreSQL</strong>.

1. El <strong>frontend</strong><strong> (</strong><strong>React</strong><strong> + Vite)</strong> se comunica con el backend mediante <strong>API REST</strong> para operaciones CRUD y <strong>WebSockets</strong><strong> (</strong><a href="https://socket.io/"><strong>Socket.io</strong></a><strong>)</strong> para actualizaciones en tiempo real.

1. El usuario interactúa desde su navegador o dispositivo móvil para ver dashboards, configurar alertas, gestionar metas, activar modo vacaciones, etc.

1. El sistema envía <strong>notificaciones </strong><strong>push</strong><strong> (FCM)</strong>, correos electrónicos y SMS cuando se supera un tope, se detecta una fuga o se responde un ticket.



























<p>Arquitectura del software</p>

<p>Tipo de Arquitectura</p>

<p>Se adopta una Arquitectura Hexagonal (Puertos y Adaptadores) con enfoque Domain-Driven Design (DDD), combinada con Event-Driven para comunicación asíncrona y CQRS básico (resúmenes precalculados). El sistema es stateless para permitir escalado horizontal.</p>

<p><strong>Características principales de la arquitectura elegida</strong></p>


<table>
<tr>
<td><p><strong>Característica</strong></p></td>
<td><p><strong>Descripción</strong></p></td>
<td><p><strong>Beneficio para Hidro Smart</strong></p></td>
</tr>
<tr>
<td><p><strong>Arquitectura Hexagonal</strong></p></td>
<td><p>Aísla la lógica de negocio (dominio) de los detalles externos (BD, HTTP, MQTT, etc.) mediante puertos y adaptadores.</p></td>
<td><p>Permite cambiar de base de datos, framework o proveedor de servicios sin afectar la lógica de negocio.</p></td>
</tr>
<tr>
<td><p><strong>Domain-Driven</strong><strong> </strong><strong>Design</strong><strong> (DDD)</strong></p></td>
<td><p>Se enfoca en el dominio del problema (usuarios, hogares, dispositivos, lecturas, alertas) como núcleo del sistema.</p></td>
<td><p>Garantiza que las reglas de negocio estén en el centro y sean independientes de la infraestructura.</p></td>
</tr>
<tr>
<td><p><strong>Event-Driven</strong></p></td>
<td><p>Utiliza un Event Bus (EventEmitter2 o Bull + Redis) para comunicación asíncrona entre módulos.</p></td>
<td><p>Desacopla la ingesta MQTT de las alertas y notificaciones, mejorando la resiliencia y el rendimiento.</p></td>
</tr>
<tr>
<td><p><strong>CQRS básico</strong></p></td>
<td><p>Separa las operaciones de escritura (transaccionales) de las de lectura (resúmenes precalculados).</p></td>
<td><p>Las consultas de reportes y gráficos son rápidas porque usan tablas de resumen, mientras que las escrituras mantienen la integridad transaccional.</p></td>
</tr>
<tr>
<td><p><strong>Stateless</strong></p></td>
<td><p>El backend no almacena estado en memoria local; las <br />sesiones se gestionan con JWT + Redis (blacklist).</p></td>
<td><p><br />Permite escalar horizontalmente agregando <br />múltiples instancias sin conflictos.</p></td>
</tr>
</table>




<p>Arquitectura en Capas</p>


<table>
<tr>
<td><p>Capa</p></td>
<td><p>Descripción</p></td>
<td><p>Tecnologías principales</p></td>
<td><p>Responsabilidad</p></td>
</tr>
<tr>
<td><p>Capa de Presentación</p></td>
<td><p>Interfaz de usuario web/móvil responsiva.</p></td>
<td><p>React 18+, Vite, Tailwind CSS</p></td>
<td><p>Renderizado de la UI, interacción con el usuario, validaciones en cliente.</p></td>
</tr>
<tr>
<td><p>Capa de Aplicación (Casos de Uso)</p></td>
<td><p>Orquestación de la lógica de negocio. Cada caso de uso es una clase independiente.</p></td>
<td><p>Node.js, Express</p></td>
<td><p>Contiene la lógica de negocio específica de cada funcionalidad, independiente de la infraestructura.</p></td>
</tr>
<tr>
<td><p>Capa de Dominio</p></td>
<td><p>Entidades, objetos de valor y reglas de negocio puras.</p></td>
<td><p>JavaScript/TypeScript (clases puras)</p></td>
<td><p>Representa el corazón del negocio: Usuario, Hogar, Dispositivo, Lectura, Alerta, etc.</p></td>
</tr>
<tr>
<td><p>Capa de Infraestructura</p></td>
<td><p>Adaptadores concretos: repositorios PostgreSQL, servicios externos (Firebase, AWS SES, Redis), cliente MQTT.</p></td>
<td><p>PostgreSQL, Redis, Bull, AWS SDK, Firebase Admin</p></td>
<td><p>Implementa los puertos definidos en la capa de aplicación y dominio (ej. IUserRepository, INotificationService).</p></td>
</tr>
<tr>
<td><p>Capa de Infraestructura</p></td>
<td><p>Comunicación con los medidores vía MQTT.</p></td>
<td><p>Mosquitto / AWS IoT Core, MQTT.js</p></td>
<td><p>Recibe telemetría de los ESP32 y publica eventos en el Event Bus.</p></td>
</tr>
<tr>
<td><p>Capa de Eventos</p></td>
<td><p>Event Bus para comunicación asíncrona entre módulos.</p></td>
<td><p>EventEmitter2 (desarrollo) / Bull + Redis (producción)</p></td>
<td><p>Desacopla la ingesta MQTT, el procesamiento de alertas y el envío de notificaciones.</p></td>
</tr>
</table>




<p>Flujo general de datos</p>









<p><br />El flujo de datos sigue la siguiente secuencia:</p>

<p>ESP32 → (MQTT/TLS) → Broker MQTT&emsp;&emsp;&emsp;&emsp;↓</p>

<p>Broker MQTT → (suscripción) → Backend (MQTT Handler)&emsp;↓</p>

<p>Backend → (Event Bus) → ReadingCreatedEvent&emsp;&emsp;&emsp;↓</p>

<p>ReadingCreatedHandler → (consulta/escritura) → PostgreSQL</p>

<p>(lectura, resúmenes)&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;↓</p>

<p>Backend → (WebSockets + REST) → Frontend React</p>

<p>(actualización en tiempo real)&emsp;&emsp;&emsp;&emsp;&emsp;↓</p>

<p>Frontend React → (configuración) → Backend (API REST)&emsp;↓</p>

<p>Backend → (notificaciones FCM/SMTP) → Usuario (push/email).</p>



<p><strong>Flujo de petición HTTP (ej. crear hogar):</strong></p>

<p>HTTP Request → Middleware Chain</p>

<p>(Auth → Rate Limit → Validation → Audit)&emsp;&emsp;&emsp;&emsp;↓</p>

<p>CreateHomeUseCase.execute(request)&emsp;&emsp;&emsp;&emsp;↓</p>

<p>HomeRepository.save() (vía Unit of Work)&emsp;&emsp;&emsp;&emsp;↓</p>

<p>UnitOfWork.commit()&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;↓</p>

<p>HomeResponse (DTO)</p>



<p><strong>Flujo de procesamiento asíncrono (ej. generar reporte):</strong></p>

<p>HTTP Request → GenerateReportUseCase&emsp;&emsp;&emsp;&emsp;↓</p>

<p>Bull Queue (Redis) → Worker procesa → genera PDF/Excel&emsp;↓</p>

<p>Guarda en S3 → Notifica al usuario vía FCM</p>

<p><strong><br />Justificación de la arquitectura elegida</strong></p>


<table>
<tr>
<td><p><strong>Beneficio</strong></p></td>
<td><p><strong>Explicación</strong></p></td>
</tr>
<tr>
<td><p><strong>Separación de responsabilidades</strong></p></td>
<td><p>Cada capa es independiente, facilitando el mantenimiento y las pruebas.</p></td>
</tr>
<tr>
<td><p>Cada capa es independiente, facilitando el mantenimiento y las pruebas.</p></td>
<td><p>Stateless + colas (Bull/Redis) permiten escalar horizontalmente agregando instancias.</p></td>
</tr>
<tr>
<td><p><strong>Tiempo real</strong></p></td>
<td><p>WebSockets y MQTT garantizan latencia baja para alertas y monitoreo (&lt; 3 segundos).</p></td>
</tr>
<tr>
<td><p><strong>Seguridad</strong></p></td>
<td><p>Cifrado TLS/HTTPS en todas las comunicaciones, JWT con refresh token, RLS en PostgreSQL.</p></td>
</tr>
<tr>
<td><p><strong>Tolerancia a fallos</strong></p></td>
<td><p>Circuit Breaker + Retry Pattern evitan que fallos externos degraden el sistema.</p></td>
</tr>
<tr>
<td><p><strong>Desacoplamiento</strong></p></td>
<td><p>Event Bus desacopla la ingesta MQTT de las alertas/notificaciones, mejorando la resiliencia.</p></td>
</tr>
<tr>
<td><p><strong>Mantenibilidad</strong></p></td>
<td><p>La arquitectura hexagonal facilita cambios de tecnología (BD, servicios externos) sin tocar la lógica de negocio.</p></td>
</tr>
</table>




<p><strong>Patrones de Diseño Aplicados</strong></p>


<table>
<tr>
<td><p><strong>Patrón</strong></p></td>
<td><p><strong>Patrón</strong></p></td>
<td><p><strong>Aplicación en Hidro Smart</strong></p></td>
</tr>
<tr>
<td><p><strong>Arquitectura Hexagonal (Puertos y Adaptadores)</strong></p></td>
<td><p>Aísla la lógica de negocio de los detalles externos (BD, HTTP, MQTT, etc.).</p></td>
<td><p>El core (dominio + casos de uso) no depende de frameworks. Los adaptadores (repositorios, servicios externos) implementan puertos</p></td>
</tr>
<tr>
<td><p><strong>Event-Driven</strong><strong> (</strong><strong>Event</strong><strong> Bus)</strong></p></td>
<td><p>Desacopla módulos mediante eventos asíncronos.</p></td>
<td><p>ReadingCreatedEvent → ReadingCreatedHandler evalúa alertas. AlertTriggeredEvent → AlertTriggeredHandler envía notificaciones.</p></td>
</tr>
<tr>
<td><p><strong>Repository</strong><strong> </strong><strong>Pattern</strong></p></td>
<td><p>Abstrae el acceso a datos.</p></td>
<td><p>PostgresUserRepository, PostgresHomeRepository, etc. implementan interfaces de repositorio.</p></td>
</tr>
<tr>
<td><p><strong>Service</strong><strong> </strong><strong>Layer</strong><strong> (Casos de Uso)</strong></p></td>
<td><p>Contiene la lógica de negocio pura.</p></td>
<td><p>Cada caso de uso es una clase con un método execute(): RegisterUserUseCase, CreateHomeUseCase.</p></td>
</tr>
<tr>
<td><p><strong>DTO (Data Transfer Object)</strong></p></td>
<td><p>Estructura las respuestas de la API.</p></td>
<td><p>UserResponse, HomeResponse, DeviceResponse ocultan detalles internos de las entidades.</p></td>
</tr>
<tr>
<td><p><strong>Unit</strong><strong> </strong><strong>of</strong><strong> </strong><strong>Work</strong><strong> (</strong><strong>UoW</strong><strong>)</strong></p></td>
<td><p>Agrupa operaciones en <br />una transacción ACID.</p></td>
<td><p><br />PostgresUnitOfWork maneja begin(), commit(), rollback() para operaciones que afectan múltiples tablas.</p></td>
</tr>
<tr>
<td><p><strong>Circuit</strong><strong> Breaker</strong></p></td>
<td><p>Tolerancia a fallos en servicios externos.</p></td>
<td><p>Envuelve llamadas a Firebase, SMTP y AWS SES con opossum.</p></td>
</tr>
<tr>
<td><p><strong>Retry</strong><strong> </strong><strong>Pattern</strong></p></td>
<td><p>Reintenta operaciones fallidas.</p></td>
<td><p>Backoff exponencial (1s, 2s, 4s) hasta 5 intentos para notificaciones.</p></td>
</tr>
<tr>
<td><p><strong>Component-Pattern</strong><strong> (</strong><strong>Frontend</strong><strong>)</strong></p></td>
<td><p>Separa componentes presentacionales de contenedores.</p></td>
<td><p>ConsumptionChart (presentacional) recibe datos por props; DashboardContainer maneja estado.</p></td>
</tr>
<tr>
<td><p><strong>Custom</strong><strong> </strong><strong>Hooks</strong><strong> (</strong><strong>Frontend</strong><strong>)</strong></p></td>
<td><p>Encapsula lógica reutilizable.</p></td>
<td><p>useAuth, useWebSocket, useConsumption, useNotifications.</p></td>
</tr>
<tr>
<td><p><strong>Observer</strong><strong> </strong><strong>Pattern</strong><strong> (</strong><strong>Frontend</strong><strong>)</strong></p></td>
<td><p>Actualización en tiempo real.</p></td>
<td><p>socket.io-client permite que componentes se suscriban a eventos del servidor.</p></td>
</tr>
</table>






<p>Diseño de Componentes o Módulos</p>

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
<td><p>Gestiona el registro, inicio de sesión, roles, recuperación de contraseña, actualización de perfil, suspensión y eliminación de cuenta (soft delete) de los usuarios del sistema.</p></td>
<td><p>Correo electrónico, contraseña, datos personales, confirmación de eliminación.</p></td>
<td><p>Validación de credenciales, hash de contraseña con bcrypt (costo 12), generación de tokens JWT (Access + Refresh), asignación de roles (RBAC), bloqueo tras 5 intentos fallidos (15 min), envío de correo de recuperación <br />(token expira en 1 hora), anonimización de datos al eliminar cuenta, revocación de tokens.</p></td>
<td><p><br />Token de sesión (Access + Refresh), perfil de usuario (DTO), mensajes de confirmación/error, correo de recuperación, confirmación de eliminación.</p></td>
</tr>
<tr>
<td><p>Gestión de Dispositivos IoT (RF2)</p></td>
<td><p>Permite registrar, calibrar, suspender, reactivar, desvincular y consultar el historial de conectividad de los medidores inteligentes (ESP32) asociados al sistema.</p></td>
<td><p>Código único del dispositivo (MAC/UUID), nombre, tipo, ubicación, factor K, offset, umbral de alerta (m³/h), rango de fechas para historial.</p></td>
<td><p>Validación de unicidad del código, asociación al hogar</p><p>en home_device, cambio de estado (activo/suspendido) con registro en device_history, almacenamiento de telemetría en device_telemetry_history (señal, batería, voltaje, temperatura), evaluación de umbral por dispositivo (prevalece sobre el del hogar), registro de calibraciones en calibration_history.</p></td>
<td><p>Dispositivo registrado, estado actualizado, historial de conectividad (JSON para gráficos), confirmación de calibración, mensajes de error.</p></td>
</tr>
<tr>
<td><p>Gestión de Hogares (Proyectos) (RF3)</p></td>
<td><p>Administra la creación, configuración, suspensión y reactivación de hogares, así como la asignación de usuarios titulares y miembros con funciones especiales.</p></td>
<td><p>Nombre del hogar, dirección, ciudad, estrato (1-6), usuarios titulares y miembros, funciones especiales.</p></td>
<td><p>Creación de hogar en home, asignación de titular (Owner) y miembros (Member/Guest) en home_user, configuración de estratificación y topes por defecto según estrato en home_rate y threshold_configuration, asignación de funciones especiales en home_user_func<br />tion, suspensión y reactivación con registro en audit_log.</p></td>
<td><p><br />Hogar creado, lista de usuarios asociados con roles, dispositivos vinculados, estado de suspensión, confirmación de asignación.</p></td>
</tr>
<tr>
<td><p>Configuraciones del Sistema (RF4)</p></td>
<td><p>Permite personalizar alertas, topes de consumo, recomendaciones, idioma, moneda, temas visuales, auditoría y modo vacaciones.</p></td>
<td><p>Topes de consumo (diario/mensual), umbrales de alerta, idioma (es/en/pt/fr), moneda (COP/USD/EUR/MXN), tema (Light/Dark/High Contrast), fechas de modo vacaciones.</p></td>
<td><p>Validación de valores positivos, almacenamiento en threshold_configuration, alert_rule, user_preference y vacation_mode, activación de reglas de negocio, cambio de comportamiento de alertas durante modo vacaciones (solo severidad Alta o Crítica), registro en audit_log.</p></td>
<td><p>Configuración guardada, alertas activadas según umbrales, preferencias aplicadas en frontend (React + Vite con i18n y Tailwind CSS), modo vacaciones activado/desactivado.</p></td>
</tr>
<tr>
<td><p>Monitoreo en Tiempo Real y Alertas (RF5)</p></td>
<td><p>Visualiza el consumo actual en tiempo real (WebSockets), genera alertas automáticas por consumo excesivo, fugas o desconexión, y gestiona eventos de alerta.</p></td>
<td><p>Datos de caudal del dispositivo IoT (litros/segundo), métricas de salud (señal, batería, voltaje, temperatura), timestamp.</p></td>
<td><p>Procesamiento de lecturas con calibración (factor K y offset), clasificación por actividad (ducha, lavado, cocina, aseo, etc.), comparación con topes configurados (hogar y dispositivo), detección de fugas (flujo continuo &gt;30 min), generación de alerta en alert_event, almacenamiento en device_telemetry_history, envío de notificaciones push/email/SMS vía Event Bus y colas (Bull).</p></td>
<td><p>Consumo en tiempo real (WebSockets), gráfico actualizado en frontend (React + recharts), notificaciones push (FCM) y correos electrónicos, registro de alerta en BD, historial de conectividad actualizado.</p></td>
</tr>
<tr>
<td><p>Reportes y <br />Análisis (RF5)</p></td>
<td><p><br />Genera <br />informes históricos, gráficos comparativos, análisis de hábitos de consumo, predicciones y exportación a PDF y Excel.</p></td>
<td><p><br />Rango de <br />fechas, hogar seleccionado, tipo de reporte (diario, semanal, mensual, anual), formato de exportación (PDF/Excel).</p></td>
<td><p><br />Consulta de datos <br />históricos desde sensor_reading, daily_consumption_summary, monthly_consumption_history, generación de gráficos (recharts en frontend), cálculo de hábitos de consumo (horas pico, días de mayor consumo), aplicación de modelo predictivo (media móvil simple o regresión lineal), generación de archivos PDF (pdf-lib) y Excel (exceljs) de forma asíncrona (Bull + Redis).</p></td>
<td><p><br />Reportes <br />PDF/Excel descargables, gráficos comparativos, hábitos de consumo, predicción de consumo, análisis de tendencias.</p></td>
</tr>
<tr>
<td><p><br />Metas y Presupuesto (RF5.7)</p></td>
<td><p>Permite al usuario definir metas de ahorro de agua (en m³) y límites de presupuesto (en COP) con seguimiento visual de progreso y proyecciones de fin de mes.</p></td>
<td><p>Límite de consumo (m³), presupuesto máximo (COP), período (mensual, semanal, anual), fecha de inicio y fin (opcional).</p></td>
<td><p>Inserción/actualización en saving_goal, cálculo de progreso (porcentaje usado) basado en consumo real vs meta, proyección de consumo final (con promedio diario), generación de alertas automáticas al alcanzar el 80% y 90% del límite, historial de metas anteriores (últimos 6 meses).</p></td>
<td><p>Progreso actual (porcentaje), proyección de fin de mes, estado de cumplimiento (alcanzada/no alcanzada), historial de metas, alertas de proximidad al límite.</p></td>
</tr>
<tr>
<td><p>Soporte Técnico (RF5.8)</p></td>
<td><p>Sistema de tickets para que los usuarios reporten incidencias o consultas <br />técnicas, y el equipo de soporte gestione su resolución.</p></td>
<td><p><br />Título, categoría (Dispositivo, Reportes, Tarifas, Detección, <br />Otros), prioridad (Baja, Media, Alta), descripción detallada, archivos adjuntos (opcional).</p></td>
<td><p><br />Inserción en ticket con estado 'Abierto', actualización de estado por soporte (En Proceso, <br />Resuelto, Cerrado) en ticket, adición de respuestas en ticket_response, notificación al usuario por correo/push cuando se responde o resuelve, archivado automático de tickets cerrados después de 30 días, registro en audit_log.</p></td>
<td><p><br />Ticket creado con ID único, historial de respuestas, estado de resolución, <br />notificaciones al usuario, registro en auditoría.</p></td>
</tr>
<tr>
<td><p><br />Modo Vacaciones (RF4.7)</p></td>
<td><p>Suspende notificaciones de consumo normal y ajusta alertas a solo eventos críticos (fugas, desconexión de dispositivos) durante la ausencia del usuario titular.</p></td>
<td><p>Fecha de inicio, fecha de fin, objetivo de consumo diario (opcional, en m³), notificar al regreso (booleano).</p></td>
<td><p>Activación/desactivación en vacation_mode con active = true/false, cambio en el comportamiento de las reglas de alerta (solo se envían alertas de severidad "Alta" o "Crítica"), desactivación automática al llegar la fecha de fin, registro en audit_log.</p></td>
<td><p>Estado del modo vacaciones (activo/inactivo), suspensión de notificaciones no críticas, mantenimiento de alertas de seguridad, confirmación de activación/desactivación.</p></td>
</tr>
</table>




<p>Diagramas del Sistema (UML)</p>

<p>Los diagramas UML representan gráficamente el diseño del sistema Hidro Smart, facilitando la comprensión de su estructura, comportamiento y componentes. A continuación se presentan los diagramas más relevantes elaborados para este proyecto.</p>

<p>Diagrama de Casos de Uso</p>

<p>Representa los actores (Usuario, Administrador, Soporte Técnico y Sistema IoT) y los casos de uso principales del sistema. Archivo fuente: Diagramas de Casos de Uso.drawio</p>

<p><a href="https://drive.google.com/drive/folders/1_S3C4k7N0oDvtXIebcFDupXPOaXKEgQU?usp=drive_link"><u>https://drive.google.com/drive/folders/1_S3C4k7N0oDvtXIebcFDupXPOaXKEgQU?usp=drive_link</u></a></p>

<p>Diagrama de Clases (Diagrama de Dominio)</p>

<p>Muestra las principales entidades del sistema y sus relaciones (usuarios, hogares, dispositivos, lecturas, alertas, etc.). Archivo fuente: diagrama de dominio.drawio + Copia de MER.png</p>

<p><a href="https://drive.google.com/drive/folders/1KfAR3c4ENyvTRjR08R2E1Au3oeB63phK?usp=drive_link"><u>https://drive.google.com/drive/folders/1KfAR3c4ENyvTRjR08R2E1Au3oeB63phK?usp=drive_link</u></a></p>

<p>Diagrama de Actividad</p>

<p>Describe el flujo detallado de los procesos principales (RF1 a RF5). Archivo fuente: Diagramas de Actividades.drawio (5 diagramas: RF1, RF2, RF3, RF4 y RF5)</p>

<p><a href="https://drive.google.com/drive/folders/1lq7OcCKL2-YpipC9u8UQzUvz7BH7togz?usp=drive_link"><u>https://drive.google.com/drive/folders/1lq7OcCKL2-YpipC9u8UQzUvz7BH7togz?usp=drive_link</u></a></p>

<p>Diagrama de Transición de Estados</p>

<p>Ilustra los diferentes estados por los que pueden pasar los objetos clave (sesión de usuario, dispositivo, hogar, alerta). Archivo fuente: diagrama de trancicion de estados.drawio</p>

<p><a href="https://drive.google.com/drive/folders/1YRPdO0aztE2tG7kAMc2_wJRs9acPrxF-?usp=drive_link"><u>https://drive.google.com/drive/folders/1YRPdO0aztE2tG7kAMc2_wJRs9acPrxF-?usp=drive_link</u></a></p>

<p>Diagrama de Secuencia</p>

<p>Representará el flujo temporal de mensajes entre objetos para los casos más críticos (Login, Lectura en tiempo real y Generación de alerta). Estado: Pendiente (se recomienda crear en Draw.io o PlantUML).</p>

<p>[Insertar imagen del Diagrama de Transición de Estados aquí]</p>

<p><br />Diagrama de Componentes</p>

<p>Muestra la organización física de los componentes del sistema (App Flutter, Backend Node.js, Base de datos PostgreSQL y dispositivos IoT). Estado: Pendiente.</p>

<p>[Insertar imagen del Diagrama de Transición de Estados aquí]</p>

<p>Diagrama de Despliegue</p>

<p>Ilustra la infraestructura donde se ejecutarán los componentes (dispositivos IoT, servidor en la nube y dispositivos móviles del usuario). Estado: Pendiente.</p>

<p>[Insertar imagen del Diagrama de Transición de Estados aquí]</p>

















<p>Diseño de Base de Datos</p>

<p>El diseño de la base de datos se realizó bajo el modelo relacional, garantizando la integridad de los datos, la normalización y el cumplimiento de todos los requerimientos funcionales y no funcionales definidos en el SRS v1.</p>

<p>Modelo Entidad - Relación</p>

<p>El modelo Entidad-Relación (MER) representa todas las entidades principales del sistema y sus relaciones.</p>

<p><br />Archivo fuente: Copia de MER.png</p>

<p><a href="https://drive.google.com/drive/folders/10q-U9_k-FVHzPtbMjG2GP4O6VEaU28QJ?usp=drive_link"><u>https://drive.google.com/drive/folders/10q-U9_k-FVHzPtbMjG2GP4O6VEaU28QJ?usp=drive_link</u></a></p>

<p>Tablas principales</p>


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




<p><strong>Diccionario de Datos</strong></p>

<p>A continuación se presenta el diccionario de datos completo del sistema Hidro Smart, organizado por módulos funcionales.</p>

<p>https://drive.google.com/drive/folders/1Ol3vwXOemNJgrceT57sJ9F358DzI1_ib?usp=drive_link</p>



























<p>Diseño de Interfaces</p>

<p>El diseño de interfaces de <strong>Hidro Smart</strong> busca ofrecer una experiencia intuitiva, moderna y responsiva, optimizada para navegadores web y dispositivos móviles. Todos los prototipos fueron creados en <strong>Figma</strong> y siguen los principios de usabilidad y accesibilidad (WCAG AA).</p>

<p><a href="https://drive.google.com/drive/folders/1Ittp-5IzEM4EQfMXPU3OtklOq3dttgvD?usp=drive_link"><u>https://drive.google.com/drive/folders/1Ittp-5IzEM4EQfMXPU3OtklOq3dttgvD?usp=drive_link</u></a></p>

<p>Tecnologías Frontend (React + Vite)</p>


<table>
<tr>
<td><p>Tecnología</p></td>
<td><p>Versión</p></td>
<td><p>Propósito</p></td>
</tr>
<tr>
<td><p>React</p></td>
<td><p>18.x</p></td>
<td><p>Biblioteca para construir la interfaz de usuario basada en componentes.</p></td>
</tr>
<tr>
<td><p>Vite</p></td>
<td><p>4.x</p></td>
<td><p>Bundler ultrarrápido para desarrollo y producción (HMR, builds optimizados).</p></td>
</tr>
<tr>
<td><p>React Router</p></td>
<td><p>6.x</p></td>
<td><p>Enrutamiento de la aplicación (SPA con rutas protegidas).</p></td>
</tr>
<tr>
<td><p><br />Axios</p></td>
<td><p>1.x</p></td>
<td><p>Cliente HTTP con interceptores para manejo de tokens JWT.</p></td>
</tr>
<tr>
<td><p>Cliente HTTP con interceptores para manejo de tokens JWT.</p></td>
<td><p>4.x</p></td>
<td><p>Comunicación en tiempo real (WebSockets) para actualización del dashboard.</p></td>
</tr>
<tr>
<td><p>Tailwind CSS</p></td>
<td><p>3.x</p></td>
<td><p>Framework de CSS para estilos responsivos y personalización rápida.</p></td>
</tr>
<tr>
<td><p>react-i18next</p></td>
<td><p>13.x</p></td>
<td><p>Internacionalización (idiomas: es, en, pt, fr).</p></td>
</tr>
<tr>
<td><p>recharts</p></td>
<td><p>2.x</p></td>
<td><p>Librería de gráficos para dashboards y reportes.</p></td>
</tr>
<tr>
<td><p>react-hook-form + zod</p></td>
<td><p>7.x / 3.x</p></td>
<td><p>Manejo de formularios y validación de esquemas.</p></td>
</tr>
<tr>
<td><p>Workbox</p></td>
<td><p>7.x</p></td>
<td><p>Service Worker para PWA (modo offline parcial).</p></td>
</tr>
<tr>
<td><p>Vitest + React Testing Library</p></td>
<td><p>1.x / 14.x</p></td>
<td><p>Pruebas unitarias e integración de componentes.</p></td>
</tr>
</table>




<p><strong>Prototipos de pantallas principales</strong><strong>:</strong></p>

<p><strong> Autenticación y Seguridad (RF1)</strong></p>


<table>
<tr>
<td><p><strong>Pantalla</strong></p></td>
<td><p><strong>Pantalla</strong></p></td>
<td><p><strong>RF asociado</strong></p></td>
</tr>
<tr>
<td><p><strong>Login</strong></p></td>
<td><p><strong>Pantalla inicial con campos de correo electrónico y contraseña. Incluye enlace a "¿Olvidaste tu contraseña?" y botón de inicio de sesión.</strong></p></td>
<td><p><strong>RF1.2</strong></p></td>
</tr>
<tr>
<td><p><strong>Registro</strong></p></td>
<td><p><strong>Formulario con pestaña para crear cuenta. Campos: nombre completo, correo, contraseña, confirmación, tipo de documento y número de documento.</strong></p></td>
<td><p><strong>RF1.1</strong></p></td>
</tr>
<tr>
<td><p><strong>Recuperar Contraseña</strong></p></td>
<td><p><strong>Pantalla dedicada donde el usuario ingresa su correo y recibe un enlace temporal (válido por 1 hora) para restablecer su contraseña.</strong></p></td>
<td><p><strong>RF1.3</strong></p></td>
</tr>
<tr>
<td><p><strong><br />Actualizar Perfil</strong></p></td>
<td><p><strong>Formulario para modificar datos personales: nombre, teléfono, ciudad y foto de perfil (opcional). Los cambios sensibles requieren verificación por correo.</strong></p></td>
<td><p><strong>RF1.4</strong></p></td>
</tr>
<tr>
<td><p><strong>Eliminar Cuenta</strong></p></td>
<td><p><strong>Pantalla en "Configuración → Zona de Peligro" con doble confirmación (</strong><strong>checkbox</strong><strong> y verificación de contraseña) para eliminar la cuenta de forma permanente (</strong><strong>soft</strong><strong> </strong><strong>delete</strong><strong>).</strong></p></td>
<td><p><strong>RF1.6</strong></p></td>
</tr>
</table>




<p><strong>Gestión de Hogares (RF3)</strong></p>


<table>
<tr>
<td><p>Pantalla</p></td>
<td><p>Descripción</p></td>
<td><p>RF asociado</p></td>
</tr>
<tr>
<td><p><strong>Mis Hogares</strong></p></td>
<td><p>Lista de hogares asociados al usuario, con información resumida: nombre, dirección, estrato, número de dispositivos, miembros y consumo del mes. Botones para editar, suspender y ver detalles.</p></td>
<td><p>RF3.1, RF3.4</p></td>
</tr>
<tr>
<td><p><strong>Crear Hogar</strong></p></td>
<td><p>Formulario para registrar un nuevo hogar: nombre, dirección, ciudad, estrato (selector 1-6) y tope de consumo mensual (opcional).</p></td>
<td><p>RF3.1</p></td>
</tr>
<tr>
<td><p><strong>Detalle de Hogar</strong></p></td>
<td><p>Vista completa del hogar: información general, lista de miembros con roles (Owner, Member, Guest), dispositivos vinculados, configuración de topes y modo vacaciones.</p></td>
<td><p>RF3.2, RF3.3</p></td>
</tr>
<tr>
<td><p><strong>Gestionar Miembros</strong></p></td>
<td><p>Pantalla para invitar nuevos miembros por correo electrónico, asignar roles (Member/Guest) y funciones especiales (ej. administrar dispositivos).</p></td>
<td><p>RF3.2.1, RF3.2.1.1</p></td>
</tr>
</table>




<p><strong>Gestión de Dispositivos </strong><strong>IoT</strong><strong> (RF2)</strong></p>


<table>
<tr>
<td><p><br />Pantalla</p></td>
<td><p>Descripción</p></td>
<td><p>RF asociado</p></td>
</tr>
<tr>
<td><p><strong>Mis Dispositivos</strong></p></td>
<td><p>Lista de sensores IoT vinculados al hogar seleccionado. Cada tarjeta muestra: nombre, estado (activo/suspendido), batería, señal, flujo actual y volumen total del día. Botones para configurar, calibrar y desvincular.</p></td>
<td><p>RF2.1, RF2.2, RF2.4</p></td>
</tr>
<tr>
<td><p><strong>Registrar Dispositivo</strong></p></td>
<td><p>Formulario para vincular un nuevo medidor IoT: código único (MAC/UUID), nombre descriptivo, tipo, ubicación y umbral de alerta (m³/h, opcional).</p></td>
<td><p>RF2.1, RF2.5</p></td>
</tr>
<tr>
<td><p><strong>Calibrar Dispositivo</strong></p></td>
<td><p>Formulario para ajustar el factor de calibración (K) y offset del sensor. Requiere motivo de la calibración y solo está disponible para soporte técnico o administradores.</p></td>
<td><p>RF2.3</p></td>
</tr>
<tr>
<td><p><strong>Historial de Conectividad</strong></p></td>
<td><p>Pantalla con gráfico (recharts) que muestra la evolución de la señal, batería, voltaje y temperatura del dispositivo en un rango de fechas seleccionable (últimos 7 días, 30 días, etc.).</p></td>
<td><p>RF2.6</p></td>
</tr>
</table>




<p><strong>Configuraciones del Sistema (RF4)</strong></p>


<table>
<tr>
<td><p>Pantalla</p></td>
<td><p>Descripción</p></td>
<td><p>RF asociado</p></td>
</tr>
<tr>
<td><p><strong>Topes de Consumo</strong></p></td>
<td><p>Configuración de límites máximos de consumo (diario y mensual) para el hogar. Validación de valores positivos.</p></td>
<td><p>RF4.1</p></td>
</tr>
<tr>
<td><p><strong>Alertas</strong></p></td>
<td><p>Configuración de reglas de alerta personalizadas: tipo (consumo excesivo, fuga, tope mensual, etc.), umbral, unidad y activación.</p></td>
<td><p>RF4.2</p></td>
</tr>
<tr>
<td><p><strong><br />Recomendaciones</strong></p></td>
<td><p>Configuración de la generación automática de recomendaciones (activar/desactivar).</p></td>
<td><p>RF4.3</p></td>
</tr>
<tr>
<td><p><strong>Idioma y Moneda</strong></p></td>
<td><p>Selectores para cambiar el idioma (es, en, pt, fr) y la moneda (COP, USD, EUR, MXN).</p></td>
<td><p>RF4.4, RF4.4.1</p></td>
</tr>
<tr>
<td><p><strong>Temas Visuales</strong></p></td>
<td><p>Selección de tema (Light, Dark, High Contrast) con previsualización en tiempo real.</p></td>
<td><p>RF4.5</p></td>
</tr>
<tr>
<td><p><strong>Auditoría</strong></p></td>
<td><p>Panel de consulta de logs de auditoría (solo administradores). Filtros por usuario, fecha y tipo de acción.</p></td>
<td><p>RF4.6</p></td>
</tr>
<tr>
<td><p><strong>Modo Vacaciones</strong></p></td>
<td><p>Pantalla para activar/desactivar el modo vacaciones con selección de fechas de inicio y fin, objetivo de consumo diario (opcional) y opción de notificar al regreso.</p></td>
<td><p>RF4.7</p></td>
</tr>
</table>




<p><strong>Monitoreo, Reportes y Análisis (RF5)</strong></p>


<table>
<tr>
<td><p>Pantalla</p></td>
<td><p>Descripción</p></td>
<td><p>RF asociado</p></td>
</tr>
<tr>
<td><p><strong>Dashboard</strong><strong> (Inicio)</strong></p></td>
<td><p>Panel principal con: consumo actual en tiempo real (gauge), flujo actual (m³/h), consumo del día/semana/mes, alertas activas, estado de dispositivos y recomendaciones destacadas. Actualización vía WebSockets.</p></td>
<td><p>RF5.1.1, RF5.4, RF5.5</p></td>
</tr>
<tr>
<td><p><strong>Consumo en Tiempo Real</strong></p></td>
<td><p>Pantalla con gráfico de consumo en vivo (recharts) y desglose por actividad (ducha, lavado, cocina, aseo, etc.).</p></td>
<td><p>RF5.1.1</p></td>
</tr>
<tr>
<td><p><strong>Reportes y Análisis</strong></p></td>
<td><p>Selector de período (diario, semanal, mensual, anual), gráficos comparativos (barras, líneas, circulares), <br />análisis de hábitos (horas pico, días de mayor consumo), proyección de costos y botones de exportación a PDF y Excel.</p></td>
<td><p><br />RF5.1, RF5.2, RF5.3</p></td>
</tr>
<tr>
<td><p><strong>Metas y Presupuesto</strong></p></td>
<td><p>Configuración de metas de consumo (m³) y presupuesto (COP) con seguimiento visual de progreso (barras de porcentaje), proyección de fin de mes e historial de metas anteriores.</p></td>
<td><p>RF5.7</p></td>
</tr>
<tr>
<td><p><strong>Notificaciones / Alertas</strong></p></td>
<td><p>Lista de eventos de alerta con filtros por estado (todas, no leídas, leídas, descartadas). Cada alerta muestra tipo, severidad, mensaje, valor detectado y fecha. Opción de marcar como leída o descartada.</p></td>
<td><p>RF5.4</p></td>
</tr>
<tr>
<td><p><strong>Soporte Técnico</strong></p></td>
<td><p>Gestión de tickets: listado con filtros (todos, abiertos, en proceso, cerrados), creación de nuevos tickets (título, categoría, prioridad, descripción, archivos adjuntos), visualización de detalle y respuestas.</p></td>
<td><p>RF5.8</p></td>
</tr>
</table>




<p><strong>Formularios principales</strong></p>


<table>
<tr>
<td><p>Formulario</p></td>
<td><p>Campos</p></td>
<td><p>Validaciones</p></td>
<td><p>RF asociado</p></td>
</tr>
<tr>
<td><p><strong>Registro de usuario</strong></p></td>
<td><p>Nombre completo, correo electrónico, contraseña, confirmación, tipo de documento, número de documento.</p></td>
<td><p>Correo único, contraseña ≥8 caracteres con mayúscula, minúscula, número y símbolo.</p></td>
<td><p>RF1.1</p></td>
</tr>
<tr>
<td><p><strong>Recuperación de contraseña</strong></p></td>
<td><p>Correo electrónico.</p></td>
<td><p>Correo registrado en el sistema (sin revelar si existe o no por seguridad).</p></td>
<td><p>RF1.3</p></td>
</tr>
<tr>
<td><p><strong>Actualización de perfil</strong></p></td>
<td><p>Nombre completo, teléfono, ciudad, foto de perfil (opcional).</p></td>
<td><p>Teléfono con formato válido, foto ≤2MB (JPG/PNG).</p></td>
<td><p>RF1.4</p></td>
</tr>
<tr>
<td><p><strong><br />Creación de hogar</strong></p></td>
<td><p>Nombre del hogar, dirección, ciudad, estrato (1-6).</p></td>
<td><p>Nombre único para el usuario, estrato entre 1 y 6.</p></td>
<td><p>RF3.1</p></td>
</tr>
<tr>
<td><p><strong>Vinculación de dispositivo</strong></p></td>
<td><p>Código único (MAC/UUID), nombre, tipo, ubicación, umbral de alerta (opcional).</p></td>
<td><p>Código único en el sistema, umbral &gt; 0 (si se define).</p></td>
<td><p>RF2.1, RF2.5</p></td>
</tr>
<tr>
<td><p><strong>Calibración de dispositivo</strong></p></td>
<td><p>Factor K, offset, motivo de calibración.</p></td>
<td><p>Factor K &gt; 0, motivo obligatorio.</p></td>
<td><p>RF2.3</p></td>
</tr>
<tr>
<td><p><strong>Configuración de alertas</strong></p></td>
<td><p>Tipo de alerta, umbral, unidad, activa/inactiva.</p></td>
<td><p>Umbral &gt; 0, unidad coherente con el tipo.</p></td>
<td><p>RF4.2</p></td>
</tr>
<tr>
<td><p><strong>Modo vacaciones</strong></p></td>
<td><p>Fecha de inicio, fecha de fin, objetivo de consumo diario (opcional), notificar al regreso.</p></td>
<td><p>Fecha de fin ≥ fecha de inicio, objetivo ≥ 0 (si se define).</p></td>
<td><p>RF4.7</p></td>
</tr>
<tr>
<td><p><strong>Meta de ahorro</strong></p></td>
<td><p>Límite de consumo (m³), presupuesto (COP), período (mensual/semanal/anual).</p></td>
<td><p>Límite &gt; 0, presupuesto &gt; 0.</p></td>
<td><p>RF5.7</p></td>
</tr>
<tr>
<td><p><strong>Creación de ticket</strong></p></td>
<td><p>Título, categoría, prioridad, descripción, archivos adjuntos (opcional).</p></td>
<td><p>Título y descripción obligatorios, categoría y prioridad predefinidas.</p></td>
<td><p>RF5.8</p></td>
</tr>
</table>




<p><strong>Menús y navegación (</strong><strong>React</strong><strong> </strong><strong>Router</strong><strong>)</strong></p>


<table>
<tr>
<td><p>Elemento</p></td>
<td><p>Descripción</p></td>
<td><p>Rutas asociadas</p></td>
</tr>
<tr>
<td><p><strong>Menú lateral (Drawer)</strong></p></td>
<td><p>Navegación principal para versiones de escritorio y tabletas.</p></td>
<td><p>/, /homes, /devices, /reports,</p><p>/goals, /notifications, /support, /settings</p></td>
</tr>
<tr>
<td><p><strong>Menú inferior (Bottom </strong><strong>Navigation</strong><strong>)</strong></p></td>
<td><p>Navegación para dispositivos móviles (pantallas pequeñas).</p></td>
<td><p>Inicio, Hogares, Dispositivos, Reportes, Configuración</p></td>
</tr>
<tr>
<td><p><strong>Acceso rápido a Alertas</strong></p></td>
<td><p>Icono de campana en el header, visible desde cualquier pantalla.</p></td>
<td><p>/notifications</p></td>
</tr>
<tr>
<td><p><strong>Perfil de usuario</strong></p></td>
<td><p>Acceso desde el menú lateral o avatar en el header.</p></td>
<td><p>/settings/profile</p></td>
</tr>
<tr>
<td><p><strong>Panel de administración</strong></p></td>
<td><p>Solo visible para usuarios con rol "Administrador" o "Soporte Técnico".</p></td>
<td><p>/admin/* (auditoría, gestión de usuarios, etc.)</p></td>
</tr>
</table>






<p>Flujo de navegación principal:</p>

1. <strong>Login</strong> → <strong>Dashboard</strong> (redirección tras autenticación exitosa).

1. <strong>Dashboard</strong> → Menú lateral/inferior → Cualquier pantalla (Hogares / Dispositivos / Reportes / Metas / Soporte / Configuración).

1. Desde cualquier pantalla → <strong>Acceso rápido a Alertas</strong> (icono de campana en el header).

1. <strong>Rutas protegidas:</strong> Todas las rutas excepto /login, /register, /forgot-password, /reset-password requieren autenticación (middleware de React Router).

<p>Estilo y diseño visual</p>


<table>
<tr>
<td><p>Aspecto</p></td>
<td><p>Descripción</p></td>
</tr>
<tr>
<td><p><strong>Paleta de colores</strong></p></td>
<td><p>Colores institucionales (azules y verdes) que transmiten confianza, sostenibilidad y tecnología.</p></td>
</tr>
<tr>
<td><p><strong>Tipografía</strong></p></td>
<td><p>Fuente sans-serif (Inter o Roboto) para legibilidad en pantallas.</p></td>
</tr>
<tr>
<td><p><strong>Responsividad</strong></p></td>
<td><p>Diseño mobile-first con Tailwind CSS. Adaptación a resoluciones desde 320px (móviles) hasta 1920px (escritorio).</p></td>
</tr>
<tr>
<td><p><strong>Accesibilidad</strong></p></td>
<td><p>Cumplimiento de WCAG 2.1 nivel AA: contraste ≥ 4.5:1, navegación por teclado, etiquetas ARIA, texto alternativo en imágenes.</p></td>
</tr>
<tr>
<td><p><strong>Temas</strong></p></td>
<td><p>Soporte para modo claro, oscuro y alto contraste, con persistencia en user_preference.</p></td>
</tr>
<tr>
<td><p><strong>Feedback</strong><strong> visual</strong></p></td>
<td><p>Animaciones suaves, estados de carga (Skeleton o Spinner), notificaciones tipo Toast/SnackBar para confirmaciones y errores.</p></td>
</tr>
</table>




<p>Reglas de negocio</p>

<p><br />Las reglas de negocio definen las condiciones, restricciones y políticas que debe cumplir el sistema <strong>Hidro Smart</strong> para garantizar su correcto funcionamiento, integridad de datos y cumplimiento de los requerimientos funcionales establecidos en el SRS v1.1 (RF1 a RF11).</p>

<p>A continuación se detallan las reglas principales, organizadas por módulos funcionales:</p>









<p><strong>Reglas de Autenticación y Seguridad (RF1)</strong></p>


<table>
<tr>
<td><p>#</p></td>
<td><p>Regla</p></td>
<td><p>Descripción</p></td>
</tr>
<tr>
<td><p>1</p></td>
<td><p>Unicidad de identidad</p></td>
<td><p>Un usuario no puede registrarse con un correo electrónico o número de documento ya existente en el sistema.</p></td>
</tr>
<tr>
<td><p>2</p></td>
<td><p>Contraseña segura</p></td>
<td><p>La contraseña debe tener mínimo 8 caracteres e incluir al menos una mayúscula, una minúscula, un número y un símbolo; se almacena siempre cifrada en la base de datos (bcrypt, costo 12).</p></td>
</tr>
<tr>
<td><p>3</p></td>
<td><p>Bloqueo por intentos fallidos</p></td>
<td><p>Tras 5 intentos fallidos de inicio de sesión consecutivos, la cuenta se bloquea temporalmente por 15 minutos.</p></td>
</tr>
<tr>
<td><p>4</p></td>
<td><p>Recuperación de contraseña</p></td>
<td><p>El enlace de recuperación de contraseña es válido únicamente por 1 hora y es de un solo uso.</p></td>
</tr>
<tr>
<td><p>5</p></td>
<td><p>Eliminación de cuenta (soft delete)</p></td>
<td><p>Al eliminar una cuenta, los datos personales se anonimizan y todos los tokens JWT son revocados. El historial de consumo se <br />conserva anonimizado para estadísticas.</p></td>
</tr>
<tr>
<td><p><br />6</p></td>
<td><p>Actualización de perfil</p></td>
<td><p>Los cambios en información sensible requieren verificación por correo electrónico antes de ser aplicados.</p></td>
</tr>
</table>












<p>Reglas de Gestión de Hogares (RF3)</p>


<table>
<tr>
<td><p>#</p></td>
<td><p>Regla</p></td>
<td><p>Descripción</p></td>
</tr>
<tr>
<td><p>7</p></td>
<td><p>Titular único por hogar</p></td>
<td><p>Solo puede existir un usuario titular (Owner) por hogar; los demás miembros pueden tener roles Member o Guest.</p></td>
</tr>
<tr>
<td><p>8</p></td>
<td><p>Asignación de miembros</p></td>
<td><p>Un usuario solo puede ser invitado a un hogar si ya está registrado. No se permiten duplicados en la relación usuario-hogar.</p></td>
</tr>
<tr>
<td><p>9</p></td>
<td><p>Suspensión de hogar</p></td>
<td><p>Un hogar suspendido no genera alertas ni notificaciones hasta ser reactivado. Las lecturas continúan almacenándose.</p></td>
</tr>
<tr>
<td><p>10</p></td>
<td><p>Reactivación de hogar</p></td>
<td><p>Un hogar suspendido solo puede ser reactivado por el titular o un administrador.</p></td>
</tr>
</table>




<p>Reglas de Gestión de Dispositivos IoT (RF2)</p>


<table>
<tr>
<td><p>#</p></td>
<td><p>Regla</p></td>
<td><p>Descripción</p></td>
</tr>
<tr>
<td><p>11</p></td>
<td><p>Código único de dispositivo</p></td>
<td><p>El código identificador (MAC/UUID) de cada dispositivo IoT debe ser único en todo el sistema.</p></td>
</tr>
<tr>
<td><p><br />12</p></td>
<td><p>Vinculación exclusiva</p></td>
<td><p>Un dispositivo IoT solo puede estar vinculado a un único hogar al mismo tiempo.</p></td>
</tr>
<tr>
<td><p>13</p></td>
<td><p>Registro condicional de lecturas</p></td>
<td><p>El consumo solo se registra si el dispositivo está activo y el hogar no está suspendido.</p></td>
</tr>
<tr>
<td><p>14</p></td>
<td><p>Calibración restringida</p></td>
<td><p>La calibración solo puede ser realizada por usuarios con rol Soporte Técnico o Administrador.</p></td>
</tr>
<tr>
<td><p>15</p></td>
<td><p>Umbral por dispositivo</p></td>
<td><p>El umbral individual del dispositivo prevalece sobre el umbral del hogar; si no existe, se aplica el del hogar o el valor por defecto según estrato.</p></td>
</tr>
<tr>
<td><p>16</p></td>
<td><p>Desvinculación de dispositivo</p></td>
<td><p>Un dispositivo puede desvincularse de un hogar y ser reasignado posteriormente conservando su historial.</p></td>
</tr>
</table>




<p>Reglas de Configuraciones del Sistema (RF4)</p>


<table>
<tr>
<td><p>#</p></td>
<td><p>Regla</p></td>
<td><p>Descripción</p></td>
</tr>
<tr>
<td><p>17</p></td>
<td><p>Consistencia de topes</p></td>
<td><p>Los topes de consumo deben ser positivos y al menos uno (diario o mensual) debe estar definido.</p></td>
</tr>
<tr>
<td><p>18</p></td>
<td><p>Reglas de alerta activas</p></td>
<td><p>Solo las reglas marcadas como activas generan eventos de alerta.</p></td>
</tr>
<tr>
<td><p>19</p></td>
<td><p>Modo vacaciones</p></td>
<td><p>Durante el modo vacaciones solo se notifican alertas críticas o altas; el modo se desactiva automáticamente al finalizar el período.</p></td>
</tr>
<tr>
<td><p>20</p></td>
<td><p>Auditoría obligatoria</p></td>
<td><p>Toda acción crítica debe registrarse en la tabla audit_log.</p></td>
</tr>
</table>




<p>Reglas de Monitoreo, Alertas y Reportes (RF5)</p>


<table>
<tr>
<td><p>#</p></td>
<td><p>Regla</p></td>
<td><p>Descripción</p></td>
</tr>
<tr>
<td><p><br />21</p></td>
<td><p>Generación de alertas</p></td>
<td><p>Se genera una alerta cuando el consumo supera el tope en ≥10%, se detecta flujo continuo por más de 30 minutos o un sensor permanece sin enviar datos durante más de una hora.</p></td>
</tr>
<tr>
<td><p>22</p></td>
<td><p>Acceso a reportes</p></td>
<td><p>Los reportes solo pueden generarse para hogares asociados al usuario autenticado.</p></td>
</tr>
<tr>
<td><p>23</p></td>
<td><p>Recomendaciones personalizadas</p></td>
<td><p>Las recomendaciones se generan con datos históricos reales y no se repiten antes de 7 días. Se ejecutan diariamente a las 6:00 AM.</p></td>
</tr>
<tr>
<td><p>24</p></td>
<td><p>Metas de ahorro</p></td>
<td><p>Se generan alertas al alcanzar el 80% y 90% de la meta de ahorro. La proyección mensual utiliza el promedio de consumo de los últimos siete días.</p></td>
</tr>
<tr>
<td><p>25</p></td>
<td><p>Historial de conectividad</p></td>
<td><p>El historial de señal, batería, voltaje y temperatura se conserva durante al menos 30 días.</p></td>
</tr>
<tr>
<td><p>26</p></td>
<td><p>Reportes asíncronos</p></td>
<td><p>La generación de reportes PDF/Excel se realiza mediante colas (Bull + Redis) para evitar bloquear la API.</p></td>
</tr>
</table>




<p>Reglas de Soporte Técnico (RF5.8)</p>


<table>
<tr>
<td><p>#</p></td>
<td><p>Regla</p></td>
<td><p>Descripción</p></td>
</tr>
<tr>
<td><p>27</p></td>
<td><p>Categorías y prioridades</p></td>
<td><p>Los tickets deben tener una categoría y una prioridad predefinidas.</p></td>
</tr>
<tr>
<td><p>28</p></td>
<td><p>Gestión de estados</p></td>
<td><p>Los estados válidos son: Abierto, En Proceso, Resuelto y Cerrado. Solo soporte o administradores pueden modificarlos.</p></td>
</tr>
<tr>
<td><p>29</p></td>
<td><p>Archivado automático</p></td>
<td><p>Los tickets cerrados se archivan automáticamente tras 30 días sin actividad.</p></td>
</tr>
<tr>
<td><p><br />30</p></td>
<td><p>Notificaciones de tickets</p></td>
<td><p>El usuario recibe una notificación cuando su ticket es respondido o cambia a Resuelto o Cerrado.</p></td>
</tr>
</table>














<p>Reglas Transversales de Seguridad y Operación</p>


<table>
<tr>
<td><p>#</p></td>
<td><p>Regla</p></td>
<td><p>Descripción</p></td>
</tr>
<tr>
<td><p>31</p></td>
<td><p>Protección de datos personales</p></td>
<td><p>El tratamiento de datos cumple con la Ley 1581 de 2012. El usuario debe otorgar consentimiento y puede ejercer sus derechos ARCO.</p></td>
</tr>
<tr>
<td><p>32</p></td>
<td><p>Tolerancia a fallos</p></td>
<td><p>Los servicios externos implementan Circuit Breaker y Retry Pattern. Tras tres fallos consecutivos se abre el circuito durante 30 segundos y se registra el evento.</p></td>
</tr>
<tr>
<td><p>33</p></td>
<td><p>Procesamiento asíncrono</p></td>
<td><p>Las tareas pesadas se ejecutan mediante colas (Bull + Redis) para mantener tiempos de respuesta inferiores a 500 ms.</p></td>
</tr>
<tr>
<td><p>34</p></td>
<td><p>Escalabilidad horizontal</p></td>
<td><p>El backend es stateless y utiliza JWT + Redis para la gestión de sesiones, permitiendo escalar horizontalmente.</p></td>
</tr>
</table>




<p>Aplicación de las Reglas</p>


<table>
<tr>
<td><p>Capa</p></td>
<td><p>Mecanismo de aplicación</p></td>
</tr>
<tr>
<td><p>Frontend (React + Vite)</p></td>
<td><p>Validaciones en formularios con react-hook-form y zod, mensajes de error en tiempo real <br />y deshabilitación de botones en acciones críticas.</p></td>
</tr>
<tr>
<td><p><br />Backend (Node.js)</p></td>
<td><p>Validaciones con express-validator, lógica de negocio en arquitectura hexagonal y manejo estandarizado de excepciones HTTP.</p></td>
</tr>
<tr>
<td><p>Base de datos (PostgreSQL)</p></td>
<td><p>Restricciones NOT NULL, UNIQUE, CHECK, llaves foráneas, triggers para updated_at y validaciones adicionales.</p></td>
</tr>
<tr>
<td><p>Auditoría</p></td>
<td><p>Middleware que registra acciones críticas en audit_log con usuario, IP, user-agent y valores anteriores y nuevos.</p></td>
</tr>
</table>








<p>Seguridad del Sistema</p>



<p><strong>Seguridad del Sistema</strong></p>



<p>El sistema <strong>Hidro Smart</strong> implementa múltiples capas de seguridad para proteger la información de los usuarios, garantizar la integridad de los datos y cumplir con la normativa colombiana (Ley 1581 de 2012) y estándares internacionales (ISO/IEC 27001). Los mecanismos de protección se aplican en todas las capas del sistema (frontend, backend y base de datos).</p>



<p><strong> Autenticación</strong></p>

<p>El sistema utiliza <strong>JWT (JSON Web Tokens)</strong> con firma HS256 para la autenticación stateless. Se generan dos tipos de tokens: el <strong>Access Token</strong> tiene una duración corta de 15 minutos y se almacena en memoria (React) o en una cookie HttpOnly según la configuración. El <strong>Refresh</strong><strong> Token</strong> tiene una duración extendida de 7 días, se almacena en la base de datos (tabla token) y en <br />el cliente (almacenamiento seguro), permitiendo renovar el Access Token sin volver a iniciar sesión.</p>

<p>El frontend (React + Vite) utiliza un interceptor de Axios para renovar automáticamente el Access Token cuando expira, sin intervención del usuario. Los tokens pueden ser revocados individualmente (cierre de sesión) o en masa (cambio de contraseña, eliminación de cuenta). Para garantizar la invalidación inmediata, se utiliza <strong>Redis</strong> como blacklist para tokens revocados.</p>

<p>La autenticación de dos factores (2FA) está prevista para versiones futuras, utilizando TOTP vía Google Authenticator o SMS. La estructura de la base de datos ya incluye la tabla user_mfa para este propósito. Además, se implementa un bloqueo temporal de cuenta durante 15 minutos después de 5 intentos fallidos consecutivos, y el contador se reinicia tras un inicio de sesión exitoso.</p>



<p><strong>Autorización (RBAC)</strong></p>

<p>Se implementa <strong>RBAC (Role-</strong><strong>Based</strong><strong> Access Control)</strong> con tres roles principales. El <strong>Usuario doméstico</strong> tiene permisos de CRUD sobre sus propios hogares y dispositivos, consulta de reportes, configuración de alertas y topes, gestión de metas, modo vacaciones, tickets de soporte, actualización de perfil y eliminación de cuenta propia. El <strong>Administrador</strong> tiene permisos de CRUD sobre todos los hogares, usuarios y dispositivos; acceso a auditorías (audit_log); suspensión y reactivación de cuentas; gestión de roles y permisos; y configuración global del sistema. El <strong>Soporte Técnico</strong> tiene permisos para gestionar dispositivos (calibración, suspensión, reactivación), consultar el historial de conectividad y gestionar tickets de soporte, pero no tiene acceso a datos personales de usuarios ni a configuración de hogares.</p>

<p><br />Cada endpoint de la API verifica el token JWT y el rol mediante middleware (auth.middleware.js y role.middleware.js). Además, las políticas de acceso se aplican también a nivel de base de datos mediante <strong>RLS (</strong><strong>Row</strong><strong> </strong><strong>Level</strong><strong> Security)</strong> en PostgreSQL.</p>



<p><strong>Control de acceso</strong></p>

<p>Todas las rutas sensibles están protegidas por middleware de autenticación. Las rutas públicas son solo /login, /register, /forgot-password y /reset-password. El control de acceso basado en el hogar garantiza que un usuario solo pueda ver y modificar los datos de los hogares a los que está vinculado (Owner, Member o Guest). Esto se aplica en la capa de servicio (casos de uso) y se refuerza con <strong>RLS</strong> en PostgreSQL.</p>

<p>Se implementa un límite de <strong>100 solicitudes por minuto</strong> por usuario (basado en IP o token JWT) para prevenir ataques de fuerza bruta y DDoS. Además, se registra en la tabla audit_log toda acción crítica: quién (usuario), qué (acción), cuándo (timestamp), desde qué IP (source_ip) y qué valores cambiaron (old_value y new_value en JSONB).</p>



<p><strong> Protección de datos</strong></p>

<p>Todas las comunicaciones se realizan mediante <strong>HTTPS/TLS 1.3</strong> para API y <strong>MQTT sobre TLS</strong> para la comunicación con los sensores IoT. La base de datos PostgreSQL se cifra a nivel de disco mediante <strong>AES-256</strong> y los campos sensibles (contraseñas, tokens) se almacenan hasheados o cifrados.</p>

<p>Para proteger el sistema contra inyección SQL, se utilizan exclusivamente <strong>consultas parametrizadas (</strong><strong>prepared</strong><strong> </strong><strong>statements</strong><strong>)</strong> en todos los repositorios (PostgreSQL). Los tokens <br />JWT en el frontend se almacenan en <strong>memoria</strong> (React state) o en <strong>cookies </strong><strong>HttpOnly</strong> para mayor seguridad contra ataques XSS.</p>

<p>Las copias de seguridad se realizan automáticamente a diario, se cifran con AES-256 y se almacenan en <strong>AWS S3</strong> con acceso restringido. El sistema cumple con la <strong>Ley 1581 de 2012</strong> (protección de datos personales en Colombia), donde el usuario debe dar consentimiento explícito (user_consent) y puede ejercer sus derechos ARCO (acceso, rectificación, cancelación, oposición, portabilidad) a través del módulo correspondiente.</p>

<p>Además, al eliminar una cuenta (RF1.6), los datos personales se anonimizan: el nombre se reemplaza por "Usuario eliminado", el correo por deleted_{id}@hidrosmart.com y el documento por 0000000000. El historial de consumo se conserva anonimizado para estadísticas agregadas</p>



<p><strong> Manejo de contraseñas</strong></p>

<p>Las contraseñas nunca se almacenan en texto plano. Se utiliza <strong>bcrypt</strong> con factor de costo <strong>12</strong> para generar el hash. Se aplican reglas de complejidad según la password_policy definida: mínimo <strong>8 caracteres</strong>, al menos una mayúscula, una minúscula, un número y un símbolo.</p>

<p>La recuperación de contraseña se realiza mediante un <strong>enlace temporal</strong> enviado al correo electrónico, válido por <strong>1 hora</strong>. El enlace contiene un token de un solo uso almacenado en password_reset_token. Además, se ofrece la opción de cambio obligatorio de contraseña en el primer inicio de sesión (si fue generada por el administrador) y no se permite reutilizar las últimas 5 contraseñas (opcional, según política de seguridad).</p>



<p><strong> Tolerancia a fallos y resiliencia</strong></p>

<p><br />El sistema implementa <strong>Circuit</strong><strong> Breaker</strong> con la librería <strong>opossum</strong> para servicios externos como Firebase Cloud Messaging, envío de emails y SMS. Si un servicio falla 3 veces consecutivas, se "abre" el circuito y se omite la llamada por <strong>30 segundos</strong>, registrando el evento en log_error. También se aplica el <strong>Retry</strong><strong> </strong><strong>Pattern</strong>: las operaciones fallidas (envío de notificaciones, sincronización con servicios externos) se reintentan con <strong>backoff</strong><strong> exponencial</strong> (1s, 2s, 4s, hasta 5 intentos).</p>

<p>Las tareas que pueden fallar (envío de emails, notificaciones push, generación de reportes) se procesan de forma asíncrona mediante <strong>colas (Bull + Redis)</strong> para no bloquear la API principal. Además, se implementa un middleware global de errores en Express que captura excepciones, las registra en log_error y devuelve respuestas HTTP estandarizadas (400, 401, 403, 404, 500) sin exponer stack traces en producción.</p>

<p><strong>9.7 Seguridad en el </strong><strong>frontend</strong><strong> (</strong><strong>React</strong><strong> + Vite)</strong></p>

<p>Los tokens JWT se almacenan en <strong>memoria</strong> (React state) o en <strong>cookies </strong><strong>HttpOnly</strong> para mayor seguridad contra ataques XSS. Si se utilizan cookies, se implementa protección CSRF con tokens de sincronización o usando el atributo SameSite=Strict. Todos los formularios validan las entradas del usuario tanto en el frontend (con react-hook-form + zod) como en el backend (con express-validator). Las entradas del usuario se sanitizan para prevenir XSS (Cross-Site Scripting) usando librerías como DOMPurify en el frontend y validator en el backend. Además, se implementa <strong>Content Security </strong><strong>Policy</strong><strong> (CSP)</strong> para restringir la ejecución de scripts no autorizados y la aplicación se sirve siempre a través de HTTPS, redirigiendo automáticamente HTTP a HTTPS.</p>



<p><strong>Resumen de mecanismos por capa</strong></p>

<p><br />En el <strong>frontend</strong><strong> (</strong><strong>React</strong><strong> + Vite)</strong> , la seguridad se aplica mediante almacenamiento seguro de tokens (memoria o cookies HttpOnly), validación de formularios (react-hook-form + zod), sanitización de entradas (DOMPurify), Content Security Policy (CSP) y HTTPS forzado.</p>

<p>En el <strong>backend</strong><strong> (Node.js)</strong> , se utilizan JWT con Access/Refresh tokens, bcrypt (costo 12), middleware de autenticación y roles, rate limiting, Circuit Breaker, Retry Pattern, procesamiento asíncrono con colas (Bull + Redis), manejo centralizado de errores y logs en log_error.</p>

<p>En la <strong>base de datos (PostgreSQL)</strong> , se aplica cifrado en reposo (AES-256), RLS (Row Level Security), consultas parametrizadas (prepared statements), restricciones de integridad (NOT NULL, UNIQUE, CHECK) y backups cifrados diarios.</p>

<p>En la <strong>infraestructura</strong>, se garantiza HTTPS/TLS 1.3 en todas las comunicaciones, MQTT sobre TLS, AWS S3 con acceso restringido para backups y reportes, y Redis con autenticación para colas y blacklist.</p>





<p>Especificaciones Técnicas</p>

<p>A continuación, se detallan las tecnologías seleccionadas para el desarrollo de Hidro Smart, garantizando alto rendimiento, escalabilidad, seguridad y facilidad de mantenimiento.</p>


<table>
<tr>
<td><p>Componente</p></td>
<td><p>Tecnología utilizada</p></td>
<td><p>Versión</p></td>
<td><p>Propósito / Justificación</p></td>
</tr>
<tr>
<td><p>Frontend</p></td>
<td><p>React + Vite</p></td>
<td><p>18.x / 4.x</p></td>
<td><p>Biblioteca para construir interfaces de usuario basadas en componentes. Vite como bundler ultrarrápido con HMR y builds optimizados.</p></td>
</tr>
<tr>
<td><p><br />Enrutamiento</p></td>
<td><p>React Router</p></td>
<td><p>6.x</p></td>
<td><p>Navegación SPA con rutas protegidas y lazy loading.</p></td>
</tr>
<tr>
<td><p>Cliente HTTP</p></td>
<td><p>Axios</p></td>
<td><p>1.x</p></td>
<td><p>Cliente HTTP con interceptores para manejo de tokens JWT y renovación automática.</p></td>
</tr>
<tr>
<td><p>WebSockets</p></td>
<td><p>Socket.io-client</p></td>
<td><p>4.x</p></td>
<td><p>Comunicación bidireccional en tiempo real para actualización del dashboard.</p></td>
</tr>
<tr>
<td><p>Estilos</p></td>
<td><p>Tailwind CSS</p></td>
<td><p>3.x</p></td>
<td><p>Framework de CSS para diseño responsivo, personalizable y mobile-first.</p></td>
</tr>
<tr>
<td><p>Internacionalización</p></td>
<td><p>react-i18next</p></td>
<td><p>13.x</p></td>
<td><p>Soporte para múltiples idiomas (es, en, pt, fr) con traducciones dinámicas.</p></td>
</tr>
<tr>
<td><p>Gráficos</p></td>
<td><p>recharts</p></td>
<td><p>2.x</p></td>
<td><p>Librería de gráficos para dashboards y reportes (barras, líneas, circulares).</p></td>
</tr>
<tr>
<td><p>Formularios y validación</p></td>
<td><p>react-hook-form + zod</p></td>
<td><p>7.x / 3.x</p></td>
<td><p>Manejo eficiente de formularios y validación de esquemas con tipos.</p></td>
</tr>
<tr>
<td><p>PWA (Offline)</p></td>
<td><p>Workbox</p></td>
<td><p>7.x</p></td>
<td><p>Service Worker para modo offline parcial y caché de recursos estáticos.</p></td>
</tr>
<tr>
<td><p>Pruebas frontend</p></td>
<td><p>Vitest + React Testing Library</p></td>
<td><p>1.x / 14.x</p></td>
<td><p>Pruebas unitarias e integración de componentes y hooks.</p></td>
</tr>
<tr>
<td><p>Backend</p></td>
<td><p>Node.js + Express</p></td>
<td><p>18 LTS / 4.x</p></td>
<td><p>Entorno JavaScript asíncrono, ideal para tiempo real y múltiples conexiones IoT. Express como framework web ligero y flexible.</p></td>
</tr>
<tr>
<td><p><br />Arquitectura</p></td>
<td><p>Hexagonal (Puertos y Adaptadores) + DDD</p></td>
<td><p>-</p></td>
<td><p>Separa el núcleo (dominio + casos de uso) de los detalles externos (BD, HTTP, MQTT). Facilita pruebas y mantenimiento.</p></td>
</tr>
<tr>
<td><p>WebSockets (backend)</p></td>
<td><p>Socket.io</p></td>
<td><p>4.x</p></td>
<td><p>Comunicación bidireccional en tiempo real con el frontend.</p></td>
</tr>
<tr>
<td><p>Base de datos</p></td>
<td><p>PostgreSQL</p></td>
<td><p>15+</p></td>
<td><p>Relacional robusta, soporte JSONB, RLS (Row Level Security), licencia gratuita.</p></td>
</tr>
<tr>
<td><p>Cliente BD</p></td>
<td><p>pg</p></td>
<td><p>8.x</p></td>
<td><p>Cliente para Node.js con consultas parametrizadas (prepared statements).</p></td>
</tr>
<tr>
<td><p>Comunicación IoT</p></td>
<td><p>MQTT (Mosquitto / AWS IoT Core)</p></td>
<td><p>2.0 / -</p></td>
<td><p>Protocolo ligero y eficiente para dispositivos de bajo consumo (ESP32). TLS para seguridad.</p></td>
</tr>
<tr>
<td><p>Colas y procesamiento asíncrono</p></td>
<td><p>Bull + Redis</p></td>
<td><p>4.x / 7.x</p></td>
<td><p>Procesamiento de tareas pesadas (reportes, notificaciones) en segundo plano sin bloquear la API.</p></td>
</tr>
<tr>
<td><p>Circuit Breaker</p></td>
<td><p>opossum</p></td>
<td><p>8.x</p></td>
<td><p>Tolerancia a fallos en servicios externos (Firebase, emails, SMS).</p></td>
</tr>
<tr>
<td><p>Autenticación</p></td>
<td><p>JWT (jsonwebtoken) + bcrypt</p></td>
<td><p>9.x / 5.x</p></td>
<td><p>Autenticación stateless con Access/Refresh tokens. Hash de contraseñas con bcrypt (costo 12).</p></td>
</tr>
<tr>
<td><p>Logging</p></td>
<td><p>winston</p></td>
<td><p>3.x</p></td>
<td><p>Logs estructurados en archivos y consola (niveles: error, warn, info, debug).</p></td>
</tr>
<tr>
<td><p><br />Validación</p></td>
<td><p>express-validator + Joi</p></td>
<td><p>7.x / 17.x</p></td>
<td><p>Validación de datos de entrada en controladores y casos de uso.</p></td>
</tr>
<tr>
<td><p>Pruebas backend</p></td>
<td><p>Jest + Supertest</p></td>
<td><p>29.x</p></td>
<td><p>Pruebas unitarias e integración de API.</p></td>
</tr>
<tr>
<td><p>Notificaciones push</p></td>
<td><p>Firebase Cloud Messaging (FCM)</p></td>
<td><p>API v1</p></td>
<td><p>Entrega instantánea y confiable de alertas a dispositivos móviles.</p></td>
</tr>
<tr>
<td><p>Generación de reportes</p></td>
<td><p>pdf-lib + exceljs</p></td>
<td><p>Últimas</p></td>
<td><p>Exportación nativa a PDF y Excel desde el backend.</p></td>
</tr>
<tr>
<td><p>Control de versiones</p></td>
<td><p>Git + GitHub</p></td>
<td><p>-</p></td>
<td><p>Control de cambios, ramas, pull requests e integración continua.</p></td>
</tr>
<tr>
<td><p>Entorno de desarrollo</p></td>
<td><p>Visual Studio Code</p></td>
<td><p>Último</p></td>
<td><p>Editor con integración Git, depuración y extensiones para React y Node.js.</p></td>
</tr>
<tr>
<td><p>Despliegue backend</p></td>
<td><p>Railway / Render</p></td>
<td><p>-</p></td>
<td><p>Despliegue escalable con integración continua.</p></td>
</tr>
<tr>
<td><p>Despliegue frontend</p></td>
<td><p>Vercel / Netlify</p></td>
<td><p>-</p></td>
<td><p>Hosting optimizado para aplicaciones React.</p></td>
</tr>
<tr>
<td><p>Distribución móvil</p></td>
<td><p>Google Play Console</p></td>
<td><p>-</p></td>
<td><p>Publicación oficial de la PWA como aplicación Android.</p></td>
</tr>
<tr>
<td><p>CI/CD</p></td>
<td><p>GitHub Actions</p></td>
<td><p>-</p></td>
<td><p>Automatización de pruebas, linting y despliegues.</p></td>
</tr>
</table>




<p><strong>Consideraciones de Implementación</strong></p>

<p>Esta sección describe los aspectos prácticos y técnicos que se tendrán en cuenta durante la fase de construcción del sistema <strong>Hidro Smart</strong>, con el fin de garantizar calidad, mantenibilidad, seguridad y cumplimiento de los estándares del SENA.</p>





<p><strong><br />Estándares de codificación</strong></p>


<table>
<tr>
<td><p>Capa</p></td>
<td><p>Estándar</p></td>
<td><p>Herramientas</p></td>
<td><p>Detalles</p></td>
</tr>
<tr>
<td><p><strong>Frontend</strong><strong> (</strong><strong>React</strong><strong> + Vite)</strong></p></td>
<td><p>ESLint + Prettier</p></td>
<td><p>ESLint (configuración recomendada React), Prettier</p></td>
<td><p>camelCase para variables/funciones, PascalCase para componentes/hooks. JSDoc para funciones complejas. Estructura por dominios funcionales.</p></td>
</tr>
<tr>
<td><p><strong>Backend</strong><strong> (Node.js)</strong></p></td>
<td><p>ESLint + Prettier</p></td>
<td><p>ESLint (Airbnb), Prettier</p></td>
<td><p>camelCase para variables/funciones, PascalCase para clases, UPPER_SNAKE_CASE para constantes. JSDoc para funciones públicas. Arquitectura hexagonal.</p></td>
</tr>
<tr>
<td><p><strong>Base de datos (PostgreSQL)</strong></p></td>
<td><p>snake_case</p></td>
<td><p>-</p></td>
<td><p>snake_case para tablas y columnas. PK: id_nombre (ej. user_account_id). FK: fk_tabla_origen_tabla_destino. Índices para claves foráneas y columnas de búsqueda frecuente. COMMENT en tablas y funciones.</p></td>
</tr>
<tr>
<td><p><strong>Git (</strong><strong>Commits</strong><strong>)</strong></p></td>
<td><p>Conventional Commits</p></td>
<td><p>-</p></td>
<td><p>Formato: tipo(ámbito): descripción. Tipos: feat, fix, docs, style, refactor, test, chore. Commits atómicos y descriptivos.</p></td>
</tr>
</table>




<p>Manejo de errores</p>


<table>
<tr>
<td><p>Capa</p></td>
<td><p>Mecanismo</p></td>
<td><p>Herramientas</p></td>
<td><p>Detalles</p></td>
</tr>
<tr>
<td><p>Backend</p></td>
<td><p>Centralizado + Middleware global</p></td>
<td><p>AppError (clase), Winston, Middleware de errores</p></td>
<td><p>Respuestas HTTP estandarizadas { success: false, message, error }. Logs en logs/error.log y logs/combined.log. Stack traces solo en desarrollo. Registro en log_error.</p></td>
</tr>
<tr>
<td><p>Frontend</p></td>
<td><p>Error Boundaries + Try-catch</p></td>
<td><p>React Error Boundaries, SnackBars/Toasts</p></td>
<td><p>Captura de errores en componentes. Mensajes amigables al usuario. Logs en consola (desarrollo) o servicio de monitoreo (producción).</p></td>
</tr>
<tr>
<td><p>Base de datos</p></td>
<td><p>Constraints SQL + Validación en aplicación</p></td>
<td><p>NOT NULL, UNIQUE, CHECK, llaves foráneas</p></td>
<td><p>Validaciones antes de insertar/actualizar. Mensajes de error claros para violaciones de integridad.</p></td>
</tr>
</table>








<p><strong><br />Otras consideraciones</strong></p>




<table>
<tr>
<td><p>Aspecto</p></td>
<td><p>Detalle</p></td>
</tr>
<tr>
<td><p>Control de versiones</p></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
</tr>
</table>


















<p>hidro-smart-frontend/</p>

<p>├── public/</p>

<p>│   ├── favicon.ico</p>

<p>│   └── manifest.json</p>

<p>├── src/</p>

<p>│   ├── api/</p>

<p>│   │   ├── axiosConfig.js</p>

<p>│   │   ├── authApi.js</p>

<p>│   │   ├── homeApi.js</p>

<p>│   │   ├── deviceApi.js</p>

<p><br />│   │   ├── consumptionApi.js</p>

<p>│   │   ├── alertApi.js</p>

<p>│   │   ├── reportApi.js</p>

<p>│   │   ├── goalApi.js</p>

<p>│   │   ├── ticketApi.js</p>

<p>│   │   └── vacationApi.js</p>

<p>│   ├── components/</p>

<p>│   │   ├── common/</p>

<p>│   │   │   ├── Button.jsx</p>

<p>│   │   │   ├── Card.jsx</p>

<p>│   │   │   ├── Input.jsx</p>

<p>│   │   │   ├── Select.jsx</p>

<p>│   │   │   ├── Modal.jsx</p>

<p>│   │   │   └── LoadingSpinner.jsx</p>

<p>│   │   ├── layout/</p>

<p>│   │   │   ├── Sidebar.jsx</p>

<p>│   │   │   ├── Header.jsx</p>

<p>│   │   │   └── Footer.jsx</p>

<p>│   │   ├── dashboard/</p>

<p>│   │   │   ├── ConsumptionChart.jsx</p>

<p>│   │   │   ├── AlertCard.jsx</p>

<p>│   │   │   ├── DeviceStatusCard.jsx</p>

<p>│   │   │   └── RecommendationCard.jsx</p>

<p><br />│   │   ├── homes/</p>

<p>│   │   │   ├── HomeList.jsx</p>

<p>│   │   │   ├── HomeForm.jsx</p>

<p>│   │   │   ├── HomeDetail.jsx</p>

<p>│   │   │   └── MemberList.jsx</p>

<p>│   │   ├── devices/</p>

<p>│   │   │   ├── DeviceList.jsx</p>

<p>│   │   │   ├── DeviceForm.jsx</p>

<p>│   │   │   ├── DeviceDetail.jsx</p>

<p>│   │   │   ├── CalibrationForm.jsx</p>

<p>│   │   │   └── ConnectivityHistory.jsx</p>

<p>│   │   ├── reports/</p>

<p>│   │   │   ├── ReportGenerator.jsx</p>

<p>│   │   │   ├── ReportList.jsx</p>

<p>│   │   │   ├── ConsumptionCharts.jsx</p>

<p>│   │   │   └── CostProjection.jsx</p>

<p>│   │   ├── goals/</p>

<p>│   │   │   ├── GoalList.jsx</p>

<p>│   │   │   ├── GoalForm.jsx</p>

<p>│   │   │   └── GoalProgress.jsx</p>

<p>│   │   ├── tickets/</p>

<p>│   │   │   ├── TicketList.jsx</p>

<p>│   │   │   ├── TicketForm.jsx</p>

<p><br />│   │   │   ├── TicketDetail.jsx</p>

<p>│   │   │   └── TicketResponse.jsx</p>

<p>│   │   ├── settings/</p>

<p>│   │   │   ├── Profile.jsx</p>

<p>│   │   │   ├── Security.jsx</p>

<p>│   │   │   ├── Privacy.jsx</p>

<p>│   │   │   ├── Preferences.jsx</p>

<p>│   │   │   ├── VacationMode.jsx</p>

<p>│   │   │   └── Account.jsx</p>

<p>│   │   └── auth/</p>

<p>│   │       ├── Login.jsx</p>

<p>│   │       ├── Register.jsx</p>

<p>│   │       ├── ForgotPassword.jsx</p>

<p>│   │       └── ResetPassword.jsx</p>

<p>│   ├── contexts/</p>

<p>│   │   ├── AuthContext.jsx</p>

<p>│   │   ├── ThemeContext.jsx</p>

<p>│   │   ├── NotificationContext.jsx</p>

<p>│   │   └── SocketContext.jsx</p>

<p>│   ├── hooks/</p>

<p>│   │   ├── useAuth.js</p>

<p>│   │   ├── useWebSocket.js</p>

<p>│   │   ├── useConsumption.js</p>

<p><br />│   │   └── useNotifications.js</p>

<p>│   ├── pages/</p>

<p>│   │   ├── DashboardPage.jsx</p>

<p>│   │   ├── HomesPage.jsx</p>

<p>│   │   ├── DevicesPage.jsx</p>

<p>│   │   ├── ReportsPage.jsx</p>

<p>│   │   ├── GoalsPage.jsx</p>

<p>│   │   ├── NotificationsPage.jsx</p>

<p>│   │   ├── SupportPage.jsx</p>

<p>│   │   └── SettingsPage.jsx</p>

<p>│   ├── services/</p>

<p>│   │   ├── socketService.js</p>

<p>│   │   ├── notificationService.js</p>

<p>│   │   └── storageService.js</p>

<p>│   ├── styles/</p>

<p>│   │   ├── index.css</p>

<p>│   │   └── tailwind.css</p>

<p>│   ├── utils/</p>

<p>│   │   ├── validators.js</p>

<p>│   │   ├── formatters.js</p>

<p>│   │   ├── constants.js</p>

<p>│   │   └── helpers.js</p>

<p>│   ├── App.jsx</p>

<p><br />│   ├── main.jsx</p>

<p>│   └── router.jsx</p>

<p>├── .env</p>

<p>├── .env.example</p>

<p>├── .gitignore</p>

<p>├── index.html</p>

<p>├── package.json</p>

<p>├── tailwind.config.js</p>

<p>├── vite.config.js</p>

<p>└── README.md</p>



<p><strong>Backend (Node.js con </strong><strong>arquitectura</strong><strong> hexagonal):</strong></p>

<p>hidro-smart-backend/</p>

<p>├── src/</p>

<p>│   ├── api/</p>

<p>│   │   ├── controllers/</p>

<p>│   │   │   ├── auth.controller.js</p>

<p>│   │   │   ├── user.controller.js</p>

<p>│   │   │   ├── home.controller.js</p>

<p>│   │   │   ├── device.controller.js</p>

<p>│   │   │   ├── consumption.controller.js</p>

<p>│   │   │   ├── alert.controller.js</p>

<p>│   │   │   ├── report.controller.js</p>

<p><br />│   │   │   ├── recommendation.controller.js</p>

<p>│   │   │   ├── vacation.controller.js</p>

<p>│   │   │   ├── goal.controller.js</p>

<p>│   │   │   ├── ticket.controller.js</p>

<p>│   │   │   └── arco.controller.js</p>

<p>│   │   ├── middlewares/</p>

<p>│   │   │   ├── auth.middleware.js</p>

<p>│   │   │   ├── role.middleware.js</p>

<p>│   │   │   ├── validation.middleware.js</p>

<p>│   │   │   ├── audit.middleware.js</p>

<p>│   │   │   ├── rate-limit.middleware.js</p>

<p>│   │   │   └── error-handler.middleware.js</p>

<p>│   │   ├── routes/</p>

<p>│   │   │   └── v1/</p>

<p>│   │   │       ├── index.js</p>

<p>│   │   │       ├── auth.routes.js</p>

<p>│   │   │       ├── user.routes.js</p>

<p>│   │   │       ├── home.routes.js</p>

<p>│   │   │       ├── device.routes.js</p>

<p>│   │   │       ├── consumption.routes.js</p>

<p>│   │   │       ├── alert.routes.js</p>

<p>│   │   │       ├── report.routes.js</p>

<p>│   │   │       ├── recommendation.routes.js</p>

<p><br />│   │   │       ├── vacation.routes.js</p>

<p>│   │   │       ├── goal.routes.js</p>

<p>│   │   │       ├── ticket.routes.js</p>

<p>│   │   │       └── arco.routes.js</p>

<p>│   │   └── validators/</p>

<p>│   │       ├── auth.validator.js</p>

<p>│   │       ├── user.validator.js</p>

<p>│   │       ├── home.validator.js</p>

<p>│   │       └── ...</p>

<p>│   ├── core/</p>

<p>│   │   ├── domain/</p>

<p>│   │   │   ├── entities/</p>

<p>│   │   │   │   ├── User.js</p>

<p>│   │   │   │   ├── Home.js</p>

<p>│   │   │   │   ├── Device.js</p>

<p>│   │   │   │   ├── Reading.js</p>

<p>│   │   │   │   ├── Alert.js</p>

<p>│   │   │   │   ├── VacationMode.js</p>

<p>│   │   │   │   └── Goal.js</p>

<p>│   │   │   ├── value-objects/</p>

<p>│   │   │   │   ├── Email.js</p>

<p>│   │   │   │   ├── Password.js</p>

<p>│   │   │   │   ├── DeviceCode.js</p>

<p><br />│   │   │   │   └── Consumption.js</p>

<p>│   │   │   ├── events/</p>

<p>│   │   │   │   ├── ReadingCreatedEvent.js</p>

<p>│   │   │   │   ├── AlertTriggeredEvent.js</p>

<p>│   │   │   │   └── DeviceStatusChangedEvent.js</p>

<p>│   │   │   └── exceptions/</p>

<p>│   │   │       ├── DomainException.js</p>

<p>│   │   │       ├── ValidationException.js</p>

<p>│   │   │       ├── NotFoundException.js</p>

<p>│   │   │       └── UnauthorizedException.js</p>

<p>│   │   ├── application/</p>

<p>│   │   │   ├── use-cases/</p>

<p>│   │   │   │   ├── auth/</p>

<p>│   │   │   │   │   ├── RegisterUserUseCase.js</p>

<p>│   │   │   │   │   ├── LoginUserUseCase.js</p>

<p>│   │   │   │   │   ├── ForgotPasswordUseCase.js</p>

<p>│   │   │   │   │   └── ResetPasswordUseCase.js</p>

<p>│   │   │   │   ├── home/</p>

<p>│   │   │   │   │   ├── CreateHomeUseCase.js</p>

<p>│   │   │   │   │   ├── UpdateHomeUseCase.js</p>

<p>│   │   │   │   │   ├── DeleteHomeUseCase.js</p>

<p>│   │   │   │   │   └── InviteMemberUseCase.js</p>

<p>│   │   │   │   ├── device/</p>

<p><br />│   │   │   │   │   ├── RegisterDeviceUseCase.js</p>

<p>│   │   │   │   │   ├── CalibrateDeviceUseCase.js</p>

<p>│   │   │   │   │   ├── SuspendDeviceUseCase.js</p>

<p>│   │   │   │   │   └── UnlinkDeviceUseCase.js</p>

<p>│   │   │   │   ├── consumption/</p>

<p>│   │   │   │   │   ├── ProcessReadingUseCase.js</p>

<p>│   │   │   │   │   ├── GetConsumptionHistoryUseCase.js</p>

<p>│   │   │   │   │   └── GeneratePredictionUseCase.js</p>

<p>│   │   │   │   ├── alert/</p>

<p>│   │   │   │   │   ├── EvaluateAlertRulesUseCase.js</p>

<p>│   │   │   │   │   ├── GetAlertsUseCase.js</p>

<p>│   │   │   │   │   └── MarkAlertAsReadUseCase.js</p>

<p>│   │   │   │   ├── vacation/</p>

<p>│   │   │   │   │   ├── ActivateVacationModeUseCase.js</p>

<p>│   │   │   │   │   └── GetVacationModeUseCase.js</p>

<p>│   │   │   │   ├── goal/</p>

<p>│   │   │   │   │   ├── CreateGoalUseCase.js</p>

<p>│   │   │   │   │   ├── UpdateGoalUseCase.js</p>

<p>│   │   │   │   │   └── DeleteGoalUseCase.js</p>

<p>│   │   │   │   └── user/</p>

<p>│   │   │   │       ├── UpdateProfileUseCase.js</p>

<p>│   │   │   │       └── DeleteAccountUseCase.js</p>

<p>│   │   │   ├── ports/</p>

<p><br />│   │   │   │   ├── repositories/</p>

<p>│   │   │   │   │   ├── IUserRepository.js</p>

<p>│   │   │   │   │   ├── IHomeRepository.js</p>

<p>│   │   │   │   │   ├── IDeviceRepository.js</p>

<p>│   │   │   │   │   ├── IReadingRepository.js</p>

<p>│   │   │   │   │   ├── IAlertRepository.js</p>

<p>│   │   │   │   │   ├── IVacationRepository.js</p>

<p>│   │   │   │   │   └── IGoalRepository.js</p>

<p>│   │   │   │   └── services/</p>

<p>│   │   │   │       ├── INotificationService.js</p>

<p>│   │   │   │       ├── IEmailService.js</p>

<p>│   │   │   │       ├── IPushService.js</p>

<p>│   │   │   │       ├── IEventBus.js</p>

<p>│   │   │   │       └── IUnitOfWork.js</p>

<p>│   │   │   └── dtos/</p>

<p>│   │   │       ├── requests/</p>

<p>│   │   │       │   ├── RegisterUserRequest.js</p>

<p>│   │   │       │   ├── LoginRequest.js</p>

<p>│   │   │       │   ├── CreateHomeRequest.js</p>

<p>│   │   │       │   └── ...</p>

<p>│   │   │       └── responses/</p>

<p>│   │   │           ├── AuthResponse.js</p>

<p>│   │   │           ├── UserProfileResponse.js</p>

<p><br />│   │   │           ├── HomeResponse.js</p>

<p>│   │   │           ├── DeviceResponse.js</p>

<p>│   │   │           └── ...</p>

<p>│   │   └── infrastructure/</p>

<p>│   │       ├── repositories/</p>

<p>│   │       │   ├── postgres/</p>

<p>│   │       │   │   ├── PostgresUserRepository.js</p>

<p>│   │       │   │   ├── PostgresHomeRepository.js</p>

<p>│   │       │   │   ├── PostgresDeviceRepository.js</p>

<p>│   │       │   │   ├── PostgresReadingRepository.js</p>

<p>│   │       │   │   ├── PostgresAlertRepository.js</p>

<p>│   │       │   │   ├── PostgresVacationRepository.js</p>

<p>│   │       │   │   ├── PostgresGoalRepository.js</p>

<p>│   │       │   │   ├── PostgresUnitOfWork.js</p>

<p>│   │       │   │   └── mappers/</p>

<p>│   │       │   │       ├── UserMapper.js</p>

<p>│   │       │   │       ├── HomeMapper.js</p>

<p>│   │       │   │       └── ...</p>

<p>│   │       │   └── in-memory/</p>

<p>│   │       │       └── ...</p>

<p>│   │       ├── services/</p>

<p>│   │       │   ├── notification/</p>

<p>│   │       │   │   ├── FirebasePushService.js</p>

<p><br />│   │       │   │   ├── NodemailerEmailService.js</p>

<p>│   │       │   │   └── TwilioSMSService.js</p>

<p>│   │       │   ├── event-bus/</p>

<p>│   │       │   │   └── EventEmitterBus.js</p>

<p>│   │       │   └── cache/</p>

<p>│   │       │       └── RedisCacheService.js</p>

<p>│   │       └── config/</p>

<p>│   │           ├── database.js</p>

<p>│   │           ├── mqtt.js</p>

<p>│   │           ├── firebase.js</p>

<p>│   │           ├── redis.js</p>

<p>│   │           └── env.js</p>

<p>│   ├── events/</p>

<p>│   │   ├── handlers/</p>

<p>│   │   │   ├── ReadingCreatedHandler.js</p>

<p>│   │   │   ├── AlertTriggeredHandler.js</p>

<p>│   │   │   └── DeviceStatusChangedHandler.js</p>

<p>│   │   └── subscribers.js</p>

<p>│   ├── jobs/</p>

<p>│   │   ├── daily-summary.job.js</p>

<p>│   │   ├── monthly-summary.job.js</p>

<p>│   │   ├── generate-recommendations.job.js</p>

<p>│   │   ├── refresh-materialized-views.job.js</p>

<p><br />│   │   └── clean-audit-logs.job.js</p>

<p>│   ├── mqtt/</p>

<p>│   │   ├── mqtt.client.js</p>

<p>│   │   ├── mqtt.handlers.js</p>

<p>│   │   └── mqtt.topics.js</p>

<p>│   ├── shared/</p>

<p>│   │   ├── utils/</p>

<p>│   │   │   ├── logger.js</p>

<p>│   │   │   ├── jwt.js</p>

<p>│   │   │   ├── bcrypt.js</p>

<p>│   │   │   └── date-helper.js</p>

<p>│   │   ├── constants/</p>

<p>│   │   │   ├── roles.js</p>

<p>│   │   │   └── alert-types.js</p>

<p>│   │   └── exceptions/</p>

<p>│   │       └── AppError.js</p>

<p>│   └── app.js</p>

<p>├── tests/</p>

<p>│   ├── unit/</p>

<p>│   ├── integration/</p>

<p>│   ├── e2e/</p>

<p>│   └── fixtures/</p>

<p>├── .env</p>

<p><br />├── .gitignore</p>

<p>├── docker-compose.yml</p>

<p>├── package.json</p>

<p>└── server.js</p>





<p>Referencias</p>

<p>Servicio Nacional de Aprendizaje. (2025). <em>Especificación de requisitos de software – Hidro Smart</em> (Versión 1).</p>

<p>Motta Vargas, J. de J. (2025). <em>Acta general del proceso del proyecto Hidro Smart</em>.</p>

<p>Amaya Mosquera, J. D., Molano Cardozo, E. C., &amp; Montealegre Rodríguez, J. A. (2026). <em>Encuesta sobre el consumo de agua</em>. Google Forms.</p>

## Encabezados y pies de página del DOCX

<p>1</p>
