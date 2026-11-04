> **Nota de conversión y vigencia.** Este archivo conserva el contenido de su documento fuente convertido a Markdown. Las afirmaciones de diseño, alcance, roles, tecnologías y fechas pertenecen a esa fuente y no prueban el estado implementado. Para el corte técnico 2026-11-03 consulta la [documentación técnica vigente](../08_Documentacion_Tecnica_Actualizada/README.md) y el [resumen de fuentes y ramas](../08_Documentacion_Tecnica_Actualizada/01_Resumen_y_Arquitectura/00_Resumen_del_Sistema.md).

<strong>HIDROSMART</strong>

Acciones correctivas, preventivas y de mejora

Registro de brechas, prioridad y criterio de cierre

Versión documental consolidada 1.0  
Fecha de corte: 2026-10-09  
Código documental: DOC-11


# 1. Objetivo

Este documento convierte las brechas identificadas en el corte documental en acciones trazables. Una acción se considera cerrada solo con evidencia fechada, responsable, commit o configuración identificable y resultado de prueba.

# 2. Acciones priorizadas

<table>
<tr>
<td><p><strong>ID</strong></p></td>
<td><p><strong>Tipo</strong></p></td>
<td><p><strong>Tema</strong></p></td>
<td><p><strong>Prioridad</strong></p></td>
<td><p><strong>Hallazgo</strong></p></td>
<td><p><strong>Acci&#243;n</strong></p></td>
<td><p><strong>Cierre</strong></p></td>
</tr>
<tr>
<td><p>ACP-01</p></td>
<td><p>Correctiva</p></td>
<td><p>Seguridad MQTT de producci&#243;n</p></td>
<td><p>Alta</p></td>
<td><p>Local opera sin TLS/ACL.</p></td>
<td><p>Configurar TLS, autenticaci&#243;n, ACL, rotaci&#243;n y probar reconexi&#243;n.</p></td>
<td><p>Prueba de conexi&#243;n autorizada/no autorizada y evidencia de certificados.</p></td>
</tr>
<tr>
<td><p>ACP-02</p></td>
<td><p>Correctiva</p></td>
<td><p>Calibraci&#243;n f&#237;sica</p></td>
<td><p>Alta</p></td>
<td><p>Hay lecturas f&#237;sicas, no ensayo de volumen conocido.</p></td>
<td><p>Comparar volumen patr&#243;n, pulsos y error por rango.</p></td>
<td><p>Acta de calibraci&#243;n, datos crudos y aceptaci&#243;n.</p></td>
</tr>
<tr>
<td><p>ACP-03</p></td>
<td><p>Preventiva</p></td>
<td><p>Backup y restore</p></td>
<td><p>Alta</p></td>
<td><p>No verificado end-to-end.</p></td>
<td><p>Automatizar backup, restauraci&#243;n y comprobaci&#243;n de integridad.</p></td>
<td><p>Log de restore, checksum y prueba de consultas.</p></td>
</tr>
<tr>
<td><p>ACP-04</p></td>
<td><p>Correctiva</p></td>
<td><p>SMTP/alertas</p></td>
<td><p>Media</p></td>
<td><p>Credenciales reales no probadas.</p></td>
<td><p>Configurar ambiente seguro y probar entrega/reintento.</p></td>
<td><p>Mensaje recibido, log y manejo de error.</p></td>
</tr>
<tr>
<td><p>ACP-05</p></td>
<td><p>Mejora</p></td>
<td><p>Frontend E2E y accesibilidad</p></td>
<td><p>Media</p></td>
<td><p>Lint/build no cubren flujos de usuario.</p></td>
<td><p>A&#241;adir pruebas de rutas, responsive, teclado y lector.</p></td>
<td><p>Reporte por navegador/dispositivo.</p></td>
</tr>
<tr>
<td><p>ACP-06</p></td>
<td><p>Mejora</p></td>
<td><p>Push de tiempo real</p></td>
<td><p>Media</p></td>
<td><p>UI usa polling HTTP de 5 segundos.</p></td>
<td><p>Evaluar WebSocket/SSE solo si el requisito lo exige y medir costo.</p></td>
<td><p>Decisi&#243;n arquitect&#243;nica y prueba de latencia.</p></td>
</tr>
<tr>
<td><p>ACP-07</p></td>
<td><p>Preventiva</p></td>
<td><p>Sincronizaci&#243;n documental</p></td>
<td><p>Media</p></td>
<td><p>Hay versiones locales con cifras/tecnolog&#237;as hist&#243;ricas.</p></td>
<td><p>Usar DOC-00 y fecha de corte en cada entrega.</p></td>
<td><p>Matriz actualizada y revisi&#243;n cruzada.</p></td>
</tr>
<tr>
<td><p>ACP-08</p></td>
<td><p>Mejora</p></td>
<td><p>Identidad institucional</p></td>
<td><p>Alta</p></td>
<td><p>PDF y documentos locales muestran c&#243;digos/fichas distintos.</p></td>
<td><p>Confirmar c&#243;digo, programa, ficha, centro y periodo con coordinaci&#243;n.</p></td>
<td><p>Acta o fuente institucional aprobada.</p></td>
</tr>
</table>


# 3. Clasificación de causas

<table>
<tr>
<td><p><strong>Causa</strong></p></td>
<td><p><strong>Ejemplo</strong></p></td>
<td><p><strong>Respuesta</strong></p></td>
</tr>
<tr>
<td><p>Evidencia incompleta</p></td>
<td><p>No hay prueba de backup/restore.</p></td>
<td><p>Planificar prueba y registrar resultado.</p></td>
</tr>
<tr>
<td><p>Deriva documental</p></td>
<td><p>WebSockets/cloud en documento antiguo.</p></td>
<td><p>Comparar contra c&#243;digo y marcar hist&#243;rico.</p></td>
</tr>
<tr>
<td><p>Dependencia externa</p></td>
<td><p>SMTP, certificados y hardware.</p></td>
<td><p>Definir ambiente, responsable y criterio de aceptaci&#243;n.</p></td>
</tr>
<tr>
<td><p>Riesgo operativo</p></td>
<td><p>Broker local an&#243;nimo.</p></td>
<td><p>Endurecer configuraci&#243;n antes de producci&#243;n.</p></td>
</tr>
</table>


# 4. Seguimiento

Registrar responsable y fecha objetivo fuera de este documento o en el sistema de gestión aprobado.

No cerrar por declaración; adjuntar evidencia reproducible.

Revisar acciones en cada cambio de rama o corte del repositorio.

Priorizar seguridad, integridad de datos, calibración y recuperación antes de ampliar funcionalidades.

<strong>Nota de control documental. </strong>Las acciones se derivan de docs/estado-verificado-2026-09-26.md, contrato MQTT, README de firmware y discrepancias entre documentación local y código. No se asignan responsables o fechas no proporcionados por el proyecto.

<!-- footer: HidroSmart | DOC-11 | Versión documental consolidada 1.0 | Página PAGE -->
