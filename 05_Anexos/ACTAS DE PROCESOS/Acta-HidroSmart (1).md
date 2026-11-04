> **Nota de conversión.** Copia Markdown de [Acta-HidroSmart (1).docx](<Acta-HidroSmart (1).docx>); el original se conserva y su contenido no se actualizó.

<p><strong>ACTA GENERAL DEL PROCESO DEL PROYECTO</strong></p>

<p><strong>HIDRO SMART — Control Inteligente del Consumo de Agua en el Hogar</strong></p>

<p>SENA — Programación de Software — Ficha 3145555</p>

<p>Versión 2.0 — 2025</p>


<table>
<tr>
<td><p><strong>CAMPO</strong></p></td>
<td><p><strong>DETALLE</strong></p></td>
</tr>
<tr>
<td><p><strong>Fecha de inicio</strong></p></td>
<td><p>10 de febrero de 2025</p></td>
</tr>
<tr>
<td><p><strong>Fecha de cierre</strong></p></td>
<td><p>2 de abril de 2025 (Fase de análisis y diseño)</p></td>
</tr>
<tr>
<td><p><strong>Lugar</strong></p></td>
<td><p>Centro de Formación SENA — Programa de Software</p></td>
</tr>
<tr>
<td><p><strong>Instructor / Asesor</strong></p></td>
<td><p>José de Jesús Motta Vargas</p></td>
</tr>
<tr>
<td><p><strong>Equipo de desarrollo</strong></p></td>
<td><p>Emerson Calet Molano Cardozo (Programador)</p><p>José Alejandro Montealegre Rodríguez (Base de Datos)</p><p>José David Amaya Mosquera (Analista)</p></td>
</tr>
<tr>
<td><p><strong>Alcance del acta</strong></p></td>
<td><p>Fase de análisis y documentación (SRS). El desarrollo completo abarca 6 meses (enero–junio 2026, ver Diagrama de Gantt v2).</p></td>
</tr>
</table>






<p>1. Acercamiento al cliente</p>

<p>El 10 de febrero de 2025 el equipo presentó al instructor-cliente la idea inicial del proyecto Hidro Smart: una solución tecnológica para el monitoreo y control del consumo doméstico de agua mediante aplicación móvil y medidor inteligente IoT.</p>

<p>El cliente manifestó la necesidad de una herramienta que permita visualizar el consumo diario por actividad (ducha, lavado, aseo, cocina), generar alertas de sobreconsumo y ofrecer recomendaciones de ahorro. Se enfatizó que el sistema debía ser accesible, intuitivo y compatible con diferentes dispositivos móviles, operando en tiempo real.</p>

<p>El equipo propuso un modelo de negocio tipo Software as a Service (SaaS), donde el usuario paga una suscripción mensual por el uso y mantenimiento de la plataforma, reduciendo los costos iniciales de adquisición. Este modelo quedó consignado en el Acuerdo de Licencia y Colaboración Comercial del proyecto.</p>

<p>El cliente aprobó la propuesta destacando su valor social, ambiental y tecnológico, y se acordó avanzar a la fase de análisis y diseño del software.</p>



<p>2. Definición de requerimientos</p>

<p>El 18 de febrero de 2025 se definieron los requerimientos funcionales y no funcionales conforme a la norma IEEE 830-1998, organizados en 5 módulos principales según el documento SRS v1:</p>




<table>
<tr>
<td><p><strong><br />#</strong></p></td>
<td><p><strong>Módulo SRS</strong></p></td>
<td><p><strong>Descripción resumida</strong></p></td>
</tr>
<tr>
<td><p><strong>RF1</strong></p></td>
<td><p><strong>Autenticación y seguridad</strong></p></td>
<td><p>Registro, inicio de sesión, tokens JWT, recuperación de contraseña, roles y suspensión de cuentas.</p></td>
</tr>
<tr>
<td><p><strong>RF2</strong></p></td>
<td><p><strong>Gestión de dispositivos </strong><strong>IoT</strong></p></td>
<td><p>Registro de sensores ESP32, asignación de ID único, suspensión y reactivación.</p></td>
</tr>
<tr>
<td><p><strong>RF3</strong></p></td>
<td><p><strong>Proyectos / Hogares</strong></p></td>
<td><p>Creación de hogares con estratificación, usuarios titulares/miembros y dispositivos.</p></td>
</tr>
<tr>
<td><p><strong>RF4</strong></p></td>
<td><p><strong>Configuraciones del sistema</strong></p></td>
<td><p>Topes de consumo, alertas, recomendaciones, idiomas, moneda y auditoría.</p></td>
</tr>
<tr>
<td><p><strong>RF5</strong></p></td>
<td><p><strong>Reportes y análisis</strong></p></td>
<td><p>Gráficos en tiempo real, históricos, modelo predictivo, alertas y proyectos del usuario.</p></td>
</tr>
<tr>
<td><p>RF6<strong> </strong></p></td>
<td><p>Modo Vacaciones / Ausencias<strong> </strong></p></td>
<td><p>Suspende notificaciones no críticas durante ausencias, manteniendo alertas de seguridad (fugas, desconexión).<strong> </strong></p></td>
</tr>
<tr>
<td><p>RF7<strong> </strong></p></td>
<td><p>Historial de Conectividad</p></td>
<td><p>Almacena y grafica evolución de señal, batería, voltaje y temperatura de cada dispositivo para diagnóstico.</p></td>
</tr>
<tr>
<td><p>RF8 <strong> </strong></p></td>
<td><p>Autogestión de Cuenta</p></td>
<td><p>Actualización de perfil, recuperación de contraseña, eliminación de cuenta (derecho al olvido).</p></td>
</tr>
<tr>
<td><p><strong>RF9</strong></p></td>
<td><p>Metas y presupuesto<strong> </strong></p></td>
<td><p>Establecimiento de objetivos mensuales de consumo (m³) y límites de gasto (COP), con seguimiento de progreso y proyecciones</p></td>
</tr>
<tr>
<td><p><strong>RF10</strong></p></td>
<td><p>Administración avanzada de dispositivos<strong> </strong></p></td>
<td><p>Suspender, reactivar, desvincular del hogar y configurar umbral de alerta individual.</p></td>
</tr>
<tr>
<td><p><strong>RF11</strong></p></td>
<td><p>Sistema de soporte técnico (tickets)<strong> </strong></p></td>
<td><p>Gestión de incidencias y consultas con categorías, prioridades y seguimiento de estado.<strong> </strong></p></td>
</tr>
</table>




<p>Adicionalmente se documentaron 9 grupos de requerimientos no funcionales (RNF1–RNF11): Rendimiento, Usabilidad, Compatibilidad, Disponibilidad y Confiabilidad, Seguridad, Gestión y Operación, Portabilidad, Sostenibilidad y Cumplimiento Normativo (Ley 1581 de 2012, ISO/IEC 27001, WCAG 2.1), y Requerimientos Técnicos.</p>

<p>El documento SRS fue aprobado por el instructor y constituye la línea base de requerimientos del proyecto.</p>



<p>3. Asignación de roles y tareas del equipo</p>

<p>El 25 de febrero de 2025 se definieron los roles y responsabilidades de cada integrante:</p>




<table>
<tr>
<td><p><strong>Integrante</strong></p></td>
<td><p><strong>Rol</strong></p></td>
<td><p><strong>Responsabilidades principales</strong></p></td>
</tr>
<tr>
<td><p><strong><br />José David Amaya Mosquera</strong></p></td>
<td><p>Analista</p></td>
<td><p>Análisis funcional, documentación de requerimientos, diseño de casos de uso, comunicación directa con el cliente, actualización del SRS y manuales.</p></td>
</tr>
<tr>
<td><p><strong>Emerson Calet Molano Cardozo</strong></p></td>
<td><p>Programador</p></td>
<td><p>Desarrollo de la API (Node.js), integración MQTT, gestión de WebSockets, firmware ESP32, notificaciones push, implementación de patrones arquitectónicos (Event Bus, Circuit Breaker), y optimización del backend.</p></td>
</tr>
<tr>
<td><p><strong>José Alejandro Montealegre R.</strong></p></td>
<td><p>Base de Datos</p></td>
<td><p>Diseño, normalización e implementación de la BD (PostgreSQL), consultas SQL, procedimientos almacenados, integridad de datos, pruebas unitarias y de integración, gestión de backups.</p></td>
</tr>
<tr>
<td><p><strong>José de Jesús Motta Vargas</strong></p></td>
<td><p>Asesor técnico</p></td>
<td><p>Supervisión del avance, revisión de entregables, retroalimentación técnica y alineación con estándares SENA.</p></td>
</tr>
</table>




<p>El equipo acordó mantener reuniones semanales de seguimiento y enviar reportes de avance documentados, siguiendo la metodología ágil Scrum con sprints de 2 semanas.</p>



<p>4. Seguimiento del proyecto — 15 de marzo de 2025</p>

<p>En el encuentro del 15 de marzo se revisó el progreso del proyecto, estimado en un 70% de la fase de análisis y documentación completada. Los avances y su estado fueron los siguientes:</p>




<table>
<tr>
<td><p><strong>#</strong></p></td>
<td><p><strong>Avance reportado</strong></p></td>
<td><p><strong>Responsable</strong></p></td>
<td><p><strong>Estado</strong></p></td>
</tr>
<tr>
<td><p><strong>1</strong></p></td>
<td><p>Diseño de la base de datos y estructuras principales del sistema.</p></td>
<td><p>José Alejandro M.</p></td>
<td><p><strong>✓</strong><strong> Completado</strong></p></td>
</tr>
<tr>
<td><p><strong>2</strong></p></td>
<td><p>Módulo de gestión de usuarios y roles (autenticación y control de acceso).</p></td>
<td><p>Emerson C.</p></td>
<td><p><strong>✓</strong><strong> Completado</strong></p></td>
</tr>
<tr>
<td><p><strong>3</strong></p></td>
<td><p>Pruebas de conexión entre el medidor IoT (ESP32) y la aplicación.</p></td>
<td><p>Emerson C.</p></td>
<td><p><strong>✓</strong><strong> Completado</strong></p></td>
</tr>
<tr>
<td><p><strong>4</strong></p></td>
<td><p>Detección de fugas de agua por flujo continuo con alertas automáticas.</p></td>
<td><p>Emerson C.</p></td>
<td><p><strong>✓</strong><strong> Completado</strong></p></td>
</tr>
<tr>
<td><p><strong>5</strong></p></td>
<td><p>Optimización de código y compatibilidad Android 9–14.</p></td>
<td><p>Equipo completo</p></td>
<td><p><strong>En progreso</strong></p></td>
</tr>
<tr>
<td><p><strong><br />6</strong></p></td>
<td><p>Integración final y pruebas completas del sistema.</p></td>
<td><p>Equipo completo</p></td>
<td><p><strong>Pendiente</strong></p></td>
</tr>
</table>




<p>Nota: El 70% de avance corresponde a la fase de análisis y documentación, no al desarrollo total del producto. El cronograma completo de 6 meses (enero–junio 2026) .</p>





<p>5. Cambios en la arquitectura y tecnologías — Julio 2026</p>

<p>Durante la fase de diseño y construcción, el equipo decidió realizar ajustes significativos en la arquitectura y tecnologías del sistema para mejorar la escalabilidad, mantenibilidad y experiencia de usuario:</p>

<p><strong>5.1 Cambio de tecnología </strong><strong>frontend</strong></p>


<table>
<tr>
<td><p><strong>Aspecto</strong></p></td>
<td><p><strong>Anterior</strong></p></td>
<td><p><strong>Actual</strong></p></td>
</tr>
<tr>
<td><p><strong>Frontend</strong></p></td>
<td><p>Flutter (Dart) — App móvil nativa Android</p></td>
<td><p>React + Vite — Aplicación web/móvil responsiva + PWA</p></td>
</tr>
<tr>
<td><p><strong>Justificación</strong></p></td>
<td><p>Multiplataforma nativa</p></td>
<td><p>Mayor flexibilidad, PWA (modo offline), desarrollo más rápido (HMR), ecosistema amplio de librerías (recharts, react-hook-form, Tailwind CSS) y facilidad de despliegue.</p></td>
</tr>
</table>


<p><strong>5.2 Patrones arquitectónicos implementados</strong></p>

<p>Se adoptaron los siguientes patrones para garantizar escalabilidad, mantenibilidad y tolerancia a fallos:</p>


<table>
<tr>
<td><p><strong>Patrón</strong></p></td>
<td><p><strong>Descripción</strong></p></td>
</tr>
<tr>
<td><p><strong>Arquitectura Hexagonal (Puertos y Adaptadores)</strong></p></td>
<td><p>Aísla la lógica de negocio de los detalles externos (BD, HTTP, MQTT).</p></td>
</tr>
<tr>
<td><p><strong>Event-Driven</strong><strong> (</strong><strong>Event</strong><strong> Bus)</strong></p></td>
<td><p>Desacopla la ingesta MQTT de las alertas/notificaciones mediante eventos asíncronos.</p></td>
</tr>
<tr>
<td><p><strong>Repository</strong><strong> </strong><strong>Pattern</strong></p></td>
<td><p>Abstrae el acceso a datos (PostgreSQL).</p></td>
</tr>
<tr>
<td><p><strong><br />DTO (Data Transfer </strong><strong>Object</strong><strong>)</strong></p></td>
<td><p>Estructura las respuestas de la API para no exponer entidades internas.</p></td>
</tr>
<tr>
<td><p><strong>Unit</strong><strong> </strong><strong>of</strong><strong> Work (</strong><strong>UoW</strong><strong>)</strong></p></td>
<td><p>Agrupa operaciones en transacciones ACID.</p></td>
</tr>
<tr>
<td><p><strong>Circuit</strong><strong> Breaker</strong></p></td>
<td><p>Tolerancia a fallos en servicios externos (Firebase, emails, SMS).</p></td>
</tr>
<tr>
<td><p><strong>Retry</strong><strong> Pattern</strong></p></td>
<td><p>Reintentos con backoff exponencial para operaciones fallidas.</p></td>
</tr>
<tr>
<td><p><strong>CQRS básico</strong></p></td>
<td><p>Separación de lecturas (resúmenes precalculados) y escrituras (tablas transaccionales).</p></td>
</tr>
</table>


<p><strong>5.3 Nuevas tablas en la base de datos</strong></p>

<p>Se agregaron las siguientes tablas y columnas para soportar los nuevos RFs:</p>


<table>
<tr>
<td><p><strong>Tabla</strong></p></td>
<td><p><strong>Propósito</strong></p></td>
</tr>
<tr>
<td><p>device_telemetry_history</p></td>
<td><p>Historial de conectividad (señal, batería, voltaje, temperatura).</p></td>
</tr>
<tr>
<td><p>umbral_alerta (columna en device)</p></td>
<td><p>Umbral de alerta individual por dispositivo.</p></td>
</tr>
<tr>
<td><p>ticket, ticket_response, ticket_category, ticket_priority, ticket_status</p></td>
<td><p>Sistema de soporte técnico (tickets).</p></td>
</tr>
</table>


<p><strong>6. Validación final con el cliente — 2 de abril de 2026</strong></p>

<p>El equipo presentó el prototipo funcional de Hidro Smart. El cliente verificó el cumplimiento de los objetivos planteados, incluyendo los nuevos módulos:</p>

- Registro y autenticación segura de usuarios con tokens JWT.

- Monitoreo del consumo en tiempo real desde sensores IoT (ESP32) con WebSockets.

- Alertas automáticas de sobreconsumo y detección de fugas.

- Reportes periódicos de consumo con histórico por actividades.

- Interfaz responsive (React + Vite) compatible con navegadores modernos y dispositivos móviles.

- <strong>Modo vacaciones</strong> para suspender notificaciones no críticas.

- <strong>Historial de conectividad</strong> de dispositivos (señal, batería, voltaje, temperatura).

- <strong><br />Metas de ahorro</strong> con seguimiento de progreso y proyecciones.

- <strong>Sistema de soporte técnico</strong> basado en tickets.

- <strong>Eliminación de cuenta</strong> con anonimización de datos (derecho al olvido).

<p>El cliente expresó satisfacción con el producto y propuso que versiones futuras incluyan un módulo educativo con gamificación.</p>





<p><strong>8. Conclusión general del proceso</strong></p>

<p>El proyecto <strong>Hidro Smart</strong> ha evolucionado significativamente desde su concepción inicial. Se han cumplido los objetivos técnicos y sociales de su fase de análisis, diseño y construcción parcial, con una actualización importante en la arquitectura y tecnologías:</p>

- <strong>Cambio de </strong><strong>Flutter</strong><strong> a </strong><strong>React</strong><strong> + Vite</strong> para mejorar la flexibilidad, el rendimiento y la experiencia de usuario (PWA, modo offline, desarrollo más rápido).

- <strong>Implementación de nuevos módulos</strong> (RF6 a RF11) que amplían el alcance del sistema: Modo Vacaciones, Historial de Conectividad, Autogestión de Cuenta, Metas, Administración Avanzada de Dispositivos y Soporte Técnico.

- <strong>Adopción de patrones arquitectónicos modernos</strong> (Hexagonal, Event Bus, Circuit Breaker, DTOs, Unit of Work) para garantizar escalabilidad, mantenibilidad y tolerancia a fallos.

- <strong>Ampliación de la base de datos</strong> con nuevas tablas y columnas para soportar las nuevas funcionalidades.

- <strong>Actualización de los documentos</strong> SRS, Informe de Diseño, MER y Diccionario de Datos.

<p>El trabajo colaborativo, la comunicación fluida entre instructor, cliente y equipo, la correcta aplicación de la norma IEEE 830-1998, el modelo de negocio SaaS y el cumplimiento de la Ley 1581 de 2012 han sido claves para la solidez del proyecto.</p>

<p>La siguiente fase —pruebas, implementación piloto y despliegue final— se ejecutará conforme al cronograma actualizado y los documentos aprobados.</p>



<p>Firmas de aprobación</p>

<p>Los abajo firmantes certifican que el contenido de esta acta refleja fielmente los acuerdos y avances del proyecto Hidro Smart durante la fase de análisis y documentación.</p>




<table>
<tr>
<td><p><strong>INSTRUCTOR / ASESOR</strong></p></td>
<td><p><strong>ANALISTA</strong></p></td>
<td><p><strong>PROGRAMADOR</strong></p></td>
<td><p><strong>BASE DE DATOS</strong></p></td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td><p><strong>José de Jesús Motta Vargas</strong></p></td>
<td><p><strong>José David Amaya Mosquera</strong></p></td>
<td><p><strong>Emerson Calet Molano Cardozo</strong></p></td>
<td><p><strong>José Alejandro Montealegre R.</strong></p></td>
</tr>
<tr>
<td><p>C.C. _____________________</p></td>
<td><p>C.C. _____________________</p></td>
<td><p>C.C. _____________________</p></td>
<td><p>C.C. _____________________</p></td>
</tr>
<tr>
<td><p>Fecha: ___________________</p></td>
<td><p>Fecha: ___________________</p></td>
<td><p>Fecha: ___________________</p></td>
<td><p>Fecha: ___________________</p></td>
</tr>
</table>
