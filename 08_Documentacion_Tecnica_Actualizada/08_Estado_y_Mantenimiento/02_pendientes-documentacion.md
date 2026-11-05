# Pendientes técnicos y evidencias

Revisión estática: **2026-11-03**. Este listado separa código documentado de
resultados que todavía requieren evidencia. Un comando local o una simulación
aislada no prueba un despliegue ni una placa física.

## Prioridad alta

1. **Alinear ramas y contratos entre monorepo y repositorios separados.** La
   matriz de [estado actual](01_estado-actual.md) muestra ramas distintas.
   PT_HS/hu-19-dev incluye cuatro deviceCode configurables; firmware publica
   bajo un solo código activo por placa; BD_HS/hu-23-dev reserva tres mientras
   el firmware y SQL integrados en PT_HS documentan cuatro. Alinear SQL,
   firmware, backend, frontend y ACL antes de tratar esos repos como una versión
   única; una lectura no debe duplicarse entre códigos.
2. **Despliegue Cloudflare Pages y Render.** Registrar rama/commit reales,
   directorio raíz, comando de build, variables requeridas (sin sus valores),
   CORS y ruta de API. Probar en navegador login, recarga, refresh, CSRF y
   logout. No afirmar que los dominios/cookies están correctos sin evidencia
   del navegador y panel de proveedores.
3. **E2E por rol.** Ampliar [plan de pruebas](../07_Pruebas_Seguridad_y_Calidad/01_pruebas.md)
   para Owner, Guest y Administrator: permisos, hogar, vínculo/desvínculo,
   consumo, reportes, reglas/alertas, soporte y logout. Registrar entorno,
   commit, datos ficticios y evidencias redactadas.
4. **Restauración PostgreSQL.** La [guía de respaldo](../02_Operacion_y_Despliegue/04_respaldo-postgresql.md)
   explica el procedimiento. Falta una restauración documentada en una base
   aislada con versión, comandos sin contraseña, conteos/consultas de control y
   resultado. No subir el respaldo.
5. **Variables y secretos por entorno.** Mantener una matriz de nombres,
   proveedor, obligatoriedad y método de verificación sin imprimir valores.
   Rotar credenciales expuestas y revocar sesiones comprometidas fuera de este
   documento. Nunca publicar archivos .env reales.

## Prioridad media

6. **OpenAPI.** Completar esquemas de request/response, parámetros, errores y
   permisos; empezar por autenticación, hogares y dispositivos y cotejar con
   controladores y pruebas.
7. **Pruebas de componentes del frontend.** Ampliar la cobertura de componentes,
   rutas, formularios y estados de error visibles. Las pruebas unitarias de
   lógica y el E2E con API simulada no sustituyen una validación visual en
   navegador ni prueban servicios externos.
8. **Carga y observabilidad.** La simulación de clientes virtuales no usa
   usuarios reales ni PostgreSQL. Diseñar un ensayo aislado con cuentas
   ficticias, duración, concurrencia, límites p95, errores, CPU, memoria y pool;
   registrar limpieza y SHA.
9. **Prueba física móvil/ESP32.** Ejecutar build móvil nativo para BLE y
   verificar provisioning, Wi-Fi, MQTT/TLS, telemetría, pérdida de red,
   medición/vigilancia, desvinculación y retorno de BLE. Registrar teléfono,
   Android, firmware, broker y calibración.
10. **Dependencias.** Volver a ejecutar audit en la rama candidata y registrar
   paquetes/advisories actuales, alcance y decisión compatible con Expo SDK 57.
   Los conteos del informe de octubre son históricos y no se deben citar como
   estado actual sin nueva ejecución.
11. **Correo transaccional.** Documentar un envío real con remitente autorizado,
    variables presentes sin revelar valores, destinatario de prueba, log del
    proveedor y recepción en buzón. Distinguir aceptación HTTP de entrega.

## Criterio de cierre

Cada evidencia debe registrar fecha, rama y commit, entorno, procedimiento,
resultado esperado y real, y ubicación de logs/capturas redactados. Al cerrar un
punto, actualizar [estado-actual.md](01_estado-actual.md) y la guía del
componente. No marcar como completa una validación pendiente.
