> **Nota de conversión.** Copia Markdown de [Diseño Conceptual Y Arquitectura de Información.docx](<Diseño Conceptual Y Arquitectura de Información.docx>); el original se conserva y su contenido no se actualizó.

<p><strong>Diseño conceptual y arquitectura de información</strong></p>

<p><strong>Proyecto Hidro Smart</strong></p>









<p>Emerson Calet Molano Cardozo</p>

<p>José Alejandro Montealegre Rodríguez</p>

<p>José David Amaya Mosquera</p>









<p>Instructor</p>

<p>Carlos Julio Cadena</p>









<p>Servicio Nacional de Aprendizaje SENA</p>

<p>Análisis y Desarrollo de Software ADSO</p>



<p>2026</p>

<p><strong><br />Tabla de Contenido</strong></p>

<p><a href="#_Toc226325246">Introducción&emsp;4</a></p>

<p><a href="#_Toc226325247">Mapa de navegación (Site Map)&emsp;5</a></p>

<p><a href="#_Toc226325248">Modelo de navegación implementado&emsp;5</a></p>

<p><a href="#_Toc226325249">Navegación jerárquica&emsp;6</a></p>

<p><a href="#_Toc226325250">Navegación modular&emsp;6</a></p>

<p><a href="#_Toc226325251">Navegación condicionada por permisos&emsp;6</a></p>

<p><a href="#_Toc226325252">Estructura principal del sistema&emsp;6</a></p>

<p><a href="#_Toc226325253">Pantalla de inicio&emsp;6</a></p>

<p><a href="#_Toc226325254">Panel principal (Dashboard dinámico)&emsp;7</a></p>

<p><a href="#_Toc226325255">Navegación por perfiles de usuario&emsp;7</a></p>

<p><a href="#_Toc226325256">Usuario final&emsp;7</a></p>

<p><a href="#_Toc226325257">Técnico&emsp;8</a></p>

<p><a href="#_Toc226325258">Administrador&emsp;8</a></p>

<p><a href="#_Toc226325259">Justificación de diseño UX/UI&emsp;9</a></p>

<p><a href="#_Toc226325260">Características técnicas de navegación&emsp;9</a></p>

<p><a href="#_Toc226325261">Relación con requerimientos funcionales&emsp;10</a></p>

<p><a href="#_Toc226325262">Flujos de usuario (User FlowS)&emsp;11</a></p>

<p><a href="#_Toc226325263">&emsp;11</a></p>

<p><a href="#_Toc226325264">Título Primer Nivel&emsp;12</a></p>

<p><a href="#_Toc226325265">Descripción de los Flujos de Usuario (User Flows)&emsp;12</a></p>

<p><a href="#_Toc226325266">Flujo 1: Registro y acceso de usuario (RF1)&emsp;13</a></p>

<p><a href="#_Toc226325267">Flujo 2: Consulta de consumo en tiempo real (RF2)&emsp;13</a></p>

<p><a href="#_Toc226325268">Flujo 3: Generación de recomendaciones inteligentes (RF3)&emsp;14</a></p>

<p><a href="#_Toc226325269">Flujo 4: Registro de dispositivo por técnico (RF4)&emsp;14</a></p>

<p><a href="#_Toc226325270">Flujo 5: Administración de usuarios (RF5)&emsp;15</a></p>

<p><a href="#_Toc226325271">Flujo 6: Generación de reportes administrativos (RF6)&emsp;15</a></p>

<p><a href="#_Toc226325272">Descripción de pantallas principales (Vinculadas a RF)&emsp;16</a></p>

<p><a href="#_Toc226325273">Explicación textual del flujo de navegación&emsp;19</a></p>

<p><a href="#_Toc226325274">Modelo de Navegación&emsp;20</a></p>

<p><a href="#_Toc226325275">Lógica de Transiciones Clave&emsp;20</a></p>

<p><a href="#_Toc226325276">Adaptación por Dispositivo&emsp;21</a></p>

<p><a href="#_Toc226325277">Plataforma Web&emsp;22</a></p>

<p><a href="#_Toc226325278">Seguridad en la Navegación (RF de Seguridad)&emsp;22</a></p>

<p><a href="#_Toc226325279">Referencias Bibliográficas&emsp;23</a></p>























<p><br />Introducción</p>

<p>El presente documento de Diseño Conceptual y Arquitectura de Información tiene como propósito establecer la estructura lógica, organizacional y funcional del proyecto Hidro Smart, tomando como base los requerimientos definidos en el Documento de Especificación de Requisitos de Software (SRS) y en el análisis previo del sistema.</p>

<p>Durante esta fase se plantea la organización de la información, la distribución de módulos y la definición de los flujos de navegación necesarios para garantizar una interacción clara, eficiente e intuitiva entre los diferentes usuarios y el sistema. La arquitectura de información permite identificar cómo se relacionan los componentes funcionales de la aplicación, facilitando la comprensión de su funcionamiento y apoyando el posterior desarrollo e implementación.</p>

<p>Asimismo, se busca asegurar que la solución propuesta responda de manera adecuada a las necesidades operativas del proyecto, priorizando funcionalidades esenciales como el monitoreo en tiempo real, la gestión de alertas, el control de dispositivos, la administración de usuarios y la generación de reportes.</p>

<p>Como resultado de esta etapa se presentan los siguientes elementos:</p>

- Mapa de navegación (Site Map): representación jerárquica de los módulos y secciones principales del sistema.

- Flujos de usuario (User Flows): secuencia de interacción para los procesos funcionales más relevantes.

- Descripción de pantallas principales: identificación de interfaces vinculadas a los requerimientos funcionales.

- Explicación textual del flujo de navegación: descripción de la lógica de acceso y transición entre funcionalidades.

<p><br />Mapa de navegación (Site Map)</p>

<p><img src="Diseño Conceptual Y Arquitectura de Información_assets/image-01.png" alt="Imagen 1" /></p>

<p>El Mapa de Navegación del sistema Hidro Smart representa la estructura jerárquica de las interfaces, módulos y rutas de interacción disponibles dentro de la plataforma, permitiendo visualizar de manera organizada el comportamiento general de navegación según cada tipo de usuario definido en el sistema.</p>

<p>Su propósito principal es establecer una visión estructural del acceso a funcionalidades, facilitando tanto el diseño de experiencia de usuario como la implementación técnica de los módulos de software.</p>

<p>El diseño del site map se fundamenta en una arquitectura modular y escalable, donde cada perfil de acceso dispone de funcionalidades específicas de acuerdo con sus responsabilidades dentro del sistema.Estructura principal (común a los roles)</p>



<p>Modelo de navegación implementado</p>

<p>La arquitectura de navegación del sistema responde a un modelo híbrido compuesto por tres enfoques principales:</p>

<p><br />Navegación jerárquica</p>

<p>Se establece un nodo principal de entrada desde el cual se distribuyen los diferentes caminos de acceso:</p>

- Inicio

- Registro / autenticación

- Redirección por rol

<p>Navegación modular</p>

<p>Cada panel organiza funciones relacionadas dentro de módulos independientes:</p>

- monitoreo

- administración

- configuración

- control técnico

<p>Navegación condicionada por permisos</p>

<p>La interfaz mostrada depende del rol autenticado en el sistema, garantizando seguridad y control de acceso.</p>



<p>Estructura principal del sistema</p>

<p>Pantalla de inicio</p>

<p>Constituye el punto inicial de acceso al sistema.</p>

<p>Incluye:</p>

- autenticación de usuarios

- registro de nuevas cuentas

- validación de credenciales

<p><br />Esta etapa corresponde al proceso inicial de control de acceso del sistema.</p>

<p>Panel principal (Dashboard dinámico)</p>

<p>Una vez validado el acceso, el sistema redirige automáticamente al panel correspondiente según el perfil autenticado.</p>



<p>Navegación por perfiles de usuario</p>

<p>Usuario final</p>

<p>El usuario dispone de un entorno orientado al monitoreo del consumo hídrico y control doméstico.</p>

<p><strong>Funcionalidades principales</strong></p>

- visualización de consumo en tiempo real

- consulta de gráficos comparativos

- análisis por periodos:

- diario

- semanal

- mensual

- anual

- recepción de alertas automáticas

- consulta de recomendaciones inteligentes

- gestión de perfil

- selección de hogares asociados

<p><strong>Objetivo de navegación</strong></p>

<p>Permitir acceso rápido a información crítica de consumo y toma de decisiones de ahorro.</p>

<p><br />Técnico</p>

<p>El técnico accede a un entorno orientado a la gestión operativa de dispositivos IoT.</p>

<p><strong>Funcionalidades principales</strong></p>

- registro de dispositivos

- asignación de identificadores únicos

- vinculación de sensores a hogares

- validación de conectividad

- control de estado operativo

<p><strong>Objetivo de navegación</strong></p>

<p>Facilitar procesos de instalación, activación y mantenimiento técnico.</p>

<p>Administrador</p>

<p>El administrador concentra la gestión global del sistema.</p>

<p><strong>Funcionalidades principales</strong></p>

- gestión de usuarios

- administración de proyectos

- configuración general del sistema

- auditoría de operaciones

- generación de reportes

<p><strong>Objetivo de navegación</strong></p>

<p>Garantizar control administrativo y supervisión integral de la plataforma.</p>



<p><br />Justificación de diseño UX/UI</p>

<p>El diseño de navegación fue estructurado bajo principios de usabilidad y eficiencia operativa.</p>

<p><strong>Principios aplicados</strong></p>

- simplicidad visual

- agrupación funcional

- reducción de carga cognitiva

- consistencia estructural

<p><strong>Beneficios del diseño</strong></p>

- acceso intuitivo

- disminución de errores de navegación

- rápida localización de funciones críticas

- facilidad de escalabilidad futura



<p>Características técnicas de navegación</p>

<p><strong>Diseño adaptable</strong></p>

<p>La estructura está preparada para entornos web responsivos.</p>

<p><strong>Integración tecnológica</strong></p>

- Compatible con:

- servicios REST

- gestión de sesiones

- comunicación IoT

<p><strong>Escalabilidad</strong></p>

<p><br />Permite incorporar nuevos módulos sin afectar la arquitectura existente.</p>



<p>Relación con requerimientos funcionales</p>

<p>La navegación del sistema responde directamente a los requerimientos funcionales establecidos en el SRS.</p>

<p><strong>Usuario</strong></p>

- monitoreo

- alertas

- recomendaciones

- perfil

<p><strong>Técnico</strong></p>

- registro de dispositivos

- validación de conexión

<p><strong>Administrador</strong></p>

- usuarios

- proyectos

- auditoría

- reportes

































<p>Flujos de usuario (User FlowS)</p>

<p><img src="Diseño Conceptual Y Arquitectura de Información_assets/image-02.png" alt="Imagen 2" /></p>







































<p>Título Primer Nivel</p>



<p>Descripción de los Flujos de Usuario (User Flows)</p>

<p>Los Flujos de Usuario (User Flows) representan las principales secuencias de interacción entre los usuarios y el sistema Hidro Smart, describiendo cómo cada actor cumple sus objetivos dentro de la plataforma.</p>

<p>Cada flujo se encuentra alineado con un Requisito Funcional (RF) y fue diseñado siguiendo principios de:</p>

- Usabilidad

- Experiencia de usuario (UX)

- Automatización de procesos

- Monitoreo inteligente del consumo hídrico



<p><br />Flujo 1: Registro y acceso de usuario (RF1)</p>

<p><strong>Escenario:</strong></p>

<p>Un usuario doméstico crea una cuenta en la aplicación Hidro Smart y accede por primera vez al sistema para comenzar el monitoreo de consumo de agua.</p>

<p><strong>Puntos clave:</strong></p>

- Registro guiado mediante ingreso de datos personales.

- Validación automática de información ingresada.

- Corrección inmediata en caso de errores detectados.

- Verificación de cuenta mediante correo electrónico.

- Acceso seguro al dashboard del usuario tras autenticación exitosa.

- Tiempo estimado de proceso: 1 – 2 minutos desde registro hasta acceso al sistema.

<p>Flujo 2: Consulta de consumo en tiempo real (RF2)</p>

<p><strong>Escenario:</strong></p>

<p>Un usuario autenticado consulta el consumo de agua de su hogar desde la aplicación móvil para monitorear su gasto diario.</p>

<p><strong>Puntos clave:</strong></p>

- Acceso directo desde el dashboard principal.

- Selección del hogar asociado al usuario.

- Visualización del consumo en tiempo real proveniente del dispositivo IoT.

- Actualización automática de datos sin intervención manual.

- Evaluación automática de límites de consumo configurados.

- Generación de alertas inmediatas cuando se supera el umbral definido.

- <br />Continuidad del monitoreo en segundo plano.

<p>Tiempo objetivo: menos de 10 segundos para visualizar datos actualizados.</p>



<p>Flujo 3: Generación de recomendaciones inteligentes (RF3)</p>

<p><strong>Escenario:</strong></p>

<p>El usuario revisa recomendaciones personalizadas para reducir su consumo de agua basadas en su historial de uso.</p>

<p><strong>Puntos clave:</strong></p>

- Consulta del historial de consumo desde el dashboard.

- Análisis automático de patrones de uso.

- Generación de recomendaciones inteligentes de ahorro.

- Presentación visual de consejos prácticos al usuario.

- Apoyo a la toma de decisiones sostenibles.

- Mejora progresiva del comportamiento de consumo.



<p>Flujo 4: Registro de dispositivo por técnico (RF4)</p>

<p><strong>Escenario:</strong></p>

<p>Un técnico instala y configura un dispositivo Hidro Smart en el hogar del usuario.</p>

<p><strong>Puntos clave:</strong></p>

- Acceso mediante autenticación técnica.

- Registro del nuevo dispositivo dentro del sistema.

- Asignación de identificador único (ID).

- Vinculación del dispositivo con el hogar del usuario.

- <br />Validación automática de conexión del dispositivo IoT.

- Activación del dispositivo tras conexión exitosa.

- Flujo alternativo para revisión de configuración en caso de fallo.

<p>Tiempo estimado de instalación digital: 3 – 5 minutos.</p>



<p>Flujo 5: Administración de usuarios (RF5)</p>

<p><strong>Escenario:</strong></p>

<p>Un administrador gestiona los usuarios registrados dentro del sistema desde el panel administrativo.</p>

<p><strong>Puntos clave:</strong></p>

- Acceso al panel administrativo mediante credenciales seguras.

- Visualización del listado de usuarios.

- Selección individual de usuarios.

- Acciones disponibles:

- Crear nuevo usuario.

- Suspender usuario.

- Reactivar usuario.

- Actualización inmediata del estado del usuario dentro del sistema.

- Control centralizado de acceso a la plataforma.



<p>Flujo 6: Generación de reportes administrativos (RF6)</p>

<p><strong>Escenario:</strong></p>

<p><br />Un administrador genera reportes de consumo hídrico para análisis institucional o toma de decisiones.</p>

<p><strong>Puntos clave:</strong></p>

- Acceso a módulo de consultas y reportes.

- Selección de periodo de análisis.

- Generación automática de reportes estadísticos.

- Exportación de información en formatos PDF y Excel.

- Apoyo a análisis de consumo y estrategias de ahorro hídrico.

<p>Tiempo objetivo: menos de 15 segundos para generación del reporte.</p>









<p>Descripción de pantallas principales (Vinculadas a RF)</p>


<table>
<tr>
<td><p>Pantalla</p></td>
<td><p>RF Relacionado</p></td>
<td><p>Componentes Claves</p></td>
<td><p>Funcionalidad</p></td>
</tr>
<tr>
<td><p>Inicio</p></td>
<td><p>----</p></td>
<td><p>Logo del sistema, botones Iniciar sesión / Registrarse</p></td>
<td><p>Acceso inicial al sistema</p></td>
</tr>
<tr>
<td><p>Login Usuario</p></td>
<td><p>RF1</p></td>
<td><p>Correo electrónico, contraseña, recuperación de contraseña</p></td>
<td><p>Autenticación segura de usuarios</p></td>
</tr>
<tr>
<td><p>Registro Usuario</p></td>
<td><p>RF1</p></td>
<td><p>Formulario de registro, validación de datos, verificación por correo</p></td>
<td><p>Creación de cuenta</p></td>
</tr>
<tr>
<td><p><br />Dashboard Usuario</p></td>
<td><p>RF2, RF3</p></td>
<td><p>Resumen de consumo, alertas, accesos rápidos, hogares asociados</p></td>
<td><p>Vista general del consumo hídrico</p></td>
</tr>
<tr>
<td><p>Consumo en Tiempo Real</p></td>
<td><p>RF2</p></td>
<td><p>Gráficas dinámicas, indicadores de consumo, rangos diario/semanal/mensual/anual</p></td>
<td><p>Monitoreo en tiempo real</p></td>
</tr>
<tr>
<td><p>Alertas y Notificaciones</p></td>
<td><p>RF2</p></td>
<td><p>Lista de alertas, estado de consumo, avisos automáticos</p></td>
<td><p>Prevención de sobreconsumo</p></td>
</tr>
<tr>
<td><p>Recomendaciones Inteligentes</p></td>
<td><p>RF3</p></td>
<td><p>Consejos de ahorro, análisis histórico</p></td>
<td><p>Optimización del uso del agua</p></td>
</tr>
<tr>
<td><p>Gestión de Perfil</p></td>
<td><p>RF1</p></td>
<td><p>Actualizar datos personales, cambio de contraseña</p></td>
<td><p>Administración de cuenta</p></td>
</tr>
<tr>
<td><p>Proyectos / Hogares Asociados</p></td>
<td><p>RF2</p></td>
<td><p>Lista de hogares, selección de hogar</p></td>
<td><p>Gestión de entornos monitoreados</p></td>
</tr>
<tr>
<td><p>Login Técnico</p></td>
<td><p>RF4</p></td>
<td><p>Usuario técnico, contraseña</p></td>
<td><p>Acceso al panel técnico</p></td>
</tr>
<tr>
<td><p>Panel Técnico</p></td>
<td><p>RF4</p></td>
<td><p>Registro de dispositivo, asignación ID</p></td>
<td><p>Configuración de dispositivos IoT</p></td>
</tr>
<tr>
<td><p>Registro de Dispositivo</p></td>
<td><p>RF4</p></td>
<td><p>ID único, vinculación a hogar</p></td>
<td><p>Instalación digital del sensor</p></td>
</tr>
<tr>
<td><p><br />Estado del Dispositivo</p></td>
<td><p>RF4</p></td>
<td><p>Estado conexión IoT, activar/suspender dispositivo</p></td>
<td><p>Control operativo del dispositivo</p></td>
</tr>
<tr>
<td><p>Login Administrador</p></td>
<td><p>RF5, RF6</p></td>
<td><p>Credenciales administrativas</p></td>
<td><p>Acceso administrativo</p></td>
</tr>
<tr>
<td><p>Panel Administrativo</p></td>
<td><p>RF5, RF6</p></td>
<td><p>Menú administrativo general</p></td>
<td><p>Control total del sistema</p></td>
</tr>
<tr>
<td><p>Gestión de Usuarios</p></td>
<td><p>RF5</p></td>
<td><p>Crear, suspender, reactivar usuarios</p></td>
<td><p>Administración de accesos</p></td>
</tr>
<tr>
<td><p>Gestión de Proyectos</p></td>
<td><p>RF5</p></td>
<td><p>Crear hogar, asignar titular y miembros</p></td>
<td><p>Organización del sistema</p></td>
</tr>
<tr>
<td><p>Configuración del Sistema</p></td>
<td><p>RF6</p></td>
<td><p>Idioma, moneda, alertas, colores</p></td>
<td><p>Personalización global</p></td>
</tr>
<tr>
<td><p>Auditoría</p></td>
<td><p>RF6</p></td>
<td><p>Registro de acciones del sistema</p></td>
<td><p>Seguimiento y control</p></td>
</tr>
<tr>
<td><p>Consultas y Reportes</p></td>
<td><p>RF6</p></td>
<td><p>Filtros, generación de reportes</p></td>
<td><p>Análisis administrativo</p></td>
</tr>
<tr>
<td><p>Exportación de Reportes</p></td>
<td><p>RF6</p></td>
<td><p>Exportar PDF / Excel</p></td>
<td><p>Generación de informes</p></td>
</tr>
</table>








































<p>Explicación textual del flujo de navegación</p>

<p>La navegación del sistema Hidro Smart sigue un modelo híbrido orientado a roles, diseñado para garantizar accesibilidad, eficiencia operativa y control seguro de las funcionalidades del sistema.</p>

<p>El diseño combina:</p>

- Navegación jerárquica, donde el Dashboard actúa como centro principal de operaciones.

- Acceso directo a funciones críticas como monitoreo de consumo, gestión de dispositivos y generación de reportes.

<p><br />Este enfoque permite reducir el número de pasos necesarios para ejecutar tareas frecuentes y mejora la experiencia del usuario en entornos móviles y web.</p>



<p>Modelo de Navegación</p>

<p><strong>Navegación Jerárquica</strong></p>

<p>El sistema organiza las funcionalidades desde pantallas principales hacia módulos especializados:</p>

- Inicio → Autenticación → Panel correspondiente según rol.

- Dashboard como punto central de interacción.

- Submódulos accesibles mediante menús contextuales.

<p>El flujo se adapta dinámicamente según el tipo de usuario:</p>

- Usuario doméstico

- Técnico instalador

- Administrador del sistema

<p>Lógica de Transiciones Clave</p>

1. <strong>Inicio → Login → </strong><strong>Dashboard</strong>

<p>El usuario ingresa sus credenciales y, tras validación exitosa, accede al panel correspondiente. (RF1 – Autenticación y acceso seguro).</p>

1. <strong>Dashboard</strong><strong> Usuario → Consumo en Tiempo Real</strong>

<p>El usuario consulta métricas actualizadas provenientes del dispositivo IoT instalado en el hogar. (RF2 – Monitoreo de consumo hídrico).</p>

1. <strong>Consumo → Alertas Automáticas</strong>

<p><br />Cuando el sistema detecta valores superiores al umbral configurado, se generan notificaciones automáticas visibles desde el dashboard. (RF2 – Sistema de alertas inteligentes).</p>

1. <strong>Dashboard</strong><strong> → Recomendaciones Inteligentes</strong>

<p>El usuario accede a sugerencias generadas a partir del análisis histórico de consumo. (RF3 – Optimización del uso del agua).</p>

1. <strong>Panel Técnico → Registro de Dispositivo → Validación </strong><strong>IoT</strong>

<p>El técnico registra un dispositivo, asigna un identificador único y valida su conexión con el sistema. (RF4 – Gestión de dispositivos IoT).</p>

1. <strong>Panel Administrativo → Gestión del Sistema</strong>

<p>El administrador gestiona usuarios, proyectos, configuraciones globales y reportes institucionales. (RF5 y RF6 – Administración y análisis del sistema).</p>



<p>Adaptación por Dispositivo</p>

<p><strong>Dispositivos Móviles</strong></p>

<p>La navegación prioriza rapidez y accesibilidad mediante:</p>



- Menú inferior persistente:

- Dashboard

- Consumo

- Alertas

- Perfil

<p>Optimizado para monitoreo continuo y consulta rápida.</p>



<p><br />Plataforma Web</p>

<p>Se emplea navegación estructurada para operaciones avanzadas:</p>

- Menú superior para usuarios domésticos.

- Menú lateral administrativo para técnicos y administradores.

- Uso de breadcrumb navigation para mantener la referencia jerárquica dentro del sistema.



<p>Seguridad en la Navegación (RF de Seguridad)</p>

<p>El sistema implementa mecanismos de protección durante toda la navegación:</p>

- Comunicación segura mediante HTTPS obligatorio.

- Expiración automática de sesión tras 15 minutos de inactividad.

- Control de acceso basado en roles:

- Usuario

- Técnico

- Administrador

- Restricción automática de módulos según permisos asignados.

- Validación continua del estado de autenticación.











































<p>Referencias Bibliográficas</p>

<p>Bahga, A., &amp; Madisetti, V. (2014). <em>Internet </em><em>of</em><em> </em><em>Things</em><em>: A </em><em>hands-on</em><em> </em><em>approach</em>. Universities Press.</p>

<p>Garrett, J. J. (2010). <em>The </em><em>elements</em><em> </em><em>of</em><em> user </em><em>experience</em><em>: User-</em><em>centered</em><em> </em><em>design</em><em> </em><em>for</em><em> </em><em>the</em><em> web and </em><em>beyond</em> (2nd ed.). New Riders.</p>

<p>International Organization for Standardization. (2018). <em>ISO/IEC/IEEE 29148:2018 </em><em>systems</em><em> and software </em><em>engineering</em><em> — Life </em><em>cycle</em><em> </em><em>processes</em><em> — </em><em>Requirements</em><em> </em><em>engineering</em>. ISO.</p>

<p><br />Krug, S. (2014). <em>Don’t</em><em> </em><em>make</em><em> me </em><em>think</em><em>: A </em><em>common</em><em> </em><em>sense</em><em> </em><em>approach</em><em> </em><em>to</em><em> web </em><em>usability</em> (3rd ed.). New Riders.</p>

<p>Morville, P., &amp; Rosenfeld, L. (2015). <em>Information</em><em> </em><em>architecture</em><em> </em><em>for</em><em> </em><em>the</em><em> web and </em><em>beyond</em> (4th ed.). O’Reilly Media.</p>

<p>National Institute of Standards and Technology. (2020). <em>Digital </em><em>identity</em><em> </em><em>guidelines</em><em> (NIST Special </em><em>Publication</em><em> 800-63)</em>. https://doi.org/10.6028/NIST.SP.800-63</p>

<p>Nielsen Norman Group. (2020). <em>User </em><em>experience</em><em> </em><em>basics</em>. <a href="https://www.nngroup.com">https://www.nngroup.com</a></p>

<p>OWASP Foundation. (2021). <em>OWASP top 10: The ten </em><em>most</em><em> </em><em>critical</em><em> web </em><em>application</em><em> </em><em>security</em><em> </em><em>risks</em>. <a href="https://owasp.org/www-project-top-ten/">https://owasp.org/www-project-top-ten/</a></p>

<p>Pressman, R. S., &amp; Maxim, B. R. (2019). <em>Software </em><em>engineering</em><em>: A </em><em>practitioner’s</em><em> </em><em>approach</em> (9th ed.). McGraw-Hill Education.</p>

<p>Sommerville, I. (2016). <em>Software </em><em>engineering</em> (10th ed.). Pearson Education Limited.</p>

## Encabezados y pies de página del DOCX

<p>2</p>
