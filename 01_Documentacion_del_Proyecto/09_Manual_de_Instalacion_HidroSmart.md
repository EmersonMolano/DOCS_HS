> **Nota de conversión y vigencia.** Este archivo conserva el contenido de su documento fuente convertido a Markdown. Las afirmaciones de diseño, alcance, roles, tecnologías y fechas pertenecen a esa fuente y no prueban el estado implementado. Para el corte técnico 2026-11-03 consulta la [documentación técnica vigente](../08_Documentacion_Tecnica_Actualizada/README.md) y el [resumen de fuentes y ramas](../08_Documentacion_Tecnica_Actualizada/01_Resumen_y_Arquitectura/00_Resumen_del_Sistema.md).

<strong> HIDROSMART</strong>

Manual de instalación de HidroSmart

Preparación del ambiente local y puesta en marcha

Versión documental consolidada 1.0  
Fecha de corte: 2026-10-09  
Código documental: DOC-09


# Ampliación del procedimiento de instalación

Esta versión desarrolla la instalación local que está descrita en PT\_HS. Los pasos destructivos se separan de la instalación normal y se advierte cuándo una verificación no está cerrada. No se incluyen valores reales de contraseñas, tokens, SMTP ni Wi-Fi.

# 1. Alcance

Este manual cubre la instalación local de los componentes versionados en PT\_HS. No describe una liberación productiva ni contiene secretos. La instalación debe realizarse en una copia de trabajo y con las variables del entorno protegidas.

# 2. Requisitos

<table>
<tr>
<td><p><strong>Recurso</strong></p></td>
<td><p><strong>Uso</strong></p></td>
</tr>
<tr>
<td><p>Docker y Docker Compose</p></td>
<td><p>Servicios de PostgreSQL, Mosquitto, backend, frontend y bootstrap.</p></td>
</tr>
<tr>
<td><p>Node/npm</p></td>
<td><p>Desarrollo o ejecuci&#243;n fuera de contenedor del backend/frontend.</p></td>
</tr>
<tr>
<td><p>PlatformIO</p></td>
<td><p>Compilaci&#243;n y carga del firmware ESP32.</p></td>
</tr>
<tr>
<td><p>ESP32 y sensor</p></td>
<td><p>Prueba f&#237;sica opcional; requiere alimentaci&#243;n y red.</p></td>
</tr>
<tr>
<td><p>Development build m&#243;vil</p></td>
<td><p>Aprovisionamiento BLE; Expo Go no es suficiente para BLE nativo.</p></td>
</tr>
</table>


# 3. Configuración segura

<!-- page break -->
<p>● <del><u>Copiar los archivos de ejemplo de variables según README vigente.</u></del></p>
<!-- page break -->
<p>● <del><u>Definir valores locales para BD, JWT, MQTT y VITE\_API\_URL sin publicarlos.</u></del></p>
<!-- page break -->
<p>● <del><u>Usar nombres de servicio Docker dentro de la red de Compose; usar puertos publicados solo desde el host.</u></del></p>
<!-- page break -->
<p>● <del><u>No reutilizar credenciales de desarrollo en producción.</u></del></p>
<!-- page break -->
<p>● <del><u>Revisar docker-compose.yml antes de iniciar, porque puertos y argumentos de build pueden cambiar.</u></del></p>
# 4. Instalación de servicios

<!-- page break -->
<p>1\. <del><u>Ubicarse en la raíz PT\_HS.</u></del></p>
<!-- page break -->
<p>2\. <del><u>Construir y levantar el conjunto definido por docker-compose.yml.</u></del></p>
<!-- page break -->
<p>3\. <del><u>Esperar PostgreSQL y ejecutar el bootstrap/Liquibase del proyecto.</u></del></p>
<!-- page break -->
<p>4\. <del><u>Verificar que el changelog esté actualizado y que los servicios estén saludables.</u></del></p>
<!-- page break -->
<p>5\. <del><u>Abrir la interfaz en localhost:5173 y verificar API/backend en localhost:3000 según el compose.</u></del></p>
<!-- page break -->
<p>6\. <del><u>Verificar broker local en localhost:1883 solo desde el ambiente permitido.</u></del></p>
# 5. Instalación del firmware

<!-- page break -->
<p>7\. <del><u>Abrir firmware en PlatformIO y seleccionar esp32dev.</u></del></p>
<!-- page break -->
<p>8\. <del><u>Compilar y revisar memoria antes de cargar.</u></del></p>
<!-- page break -->
<p>9\. <del><u>Cargar firmware al ESP32 y abrir monitor a 115200.</u></del></p>
<!-- page break -->
<p>10\. <del><u>Usar el flujo BLE para guardar SSID, host, puerto y deviceCode.</u></del></p>
<!-- page break -->
<p>11\. <del><u>Confirmar estado MQTT y publicar telemetría controlada.</u></del></p>
<!-- page break -->
<p>12\. <del><u>No cargar datos de usuarios ni credenciales reales en evidencias.</u></del></p>
# 6. Verificación posterior

<table>
<tr>
<td><p><strong>Verificaci&#243;n</strong></p></td>
<td><p><strong>Aprobaci&#243;n</strong></p></td>
</tr>
<tr>
<td><p>Contenedores</p></td>
<td><p>Postgres, broker, backend y frontend responden.</p></td>
</tr>
<tr>
<td><p>BD</p></td>
<td><p>Liquibase v&#225;lido y tablas disponibles.</p></td>
</tr>
<tr>
<td><p>API</p></td>
<td><p>Autenticaci&#243;n y ruta protegida responden con datos de prueba.</p></td>
</tr>
<tr>
<td><p>MQTT</p></td>
<td><p>Mensaje de prueba aparece en logs y/o lectura persistida.</p></td>
</tr>
<tr>
<td><p>Frontend</p></td>
<td><p>Login, dashboard y consulta de dispositivo funcionan.</p></td>
</tr>
<tr>
<td><p>Firmware</p></td>
<td><p>ESP32 publica estado y telemetr&#237;a; RSSI visible.</p></td>
</tr>
</table>


# 7. Desinstalación y recuperación

Antes de eliminar volúmenes o reiniciar datos, obtener backup y confirmar el objetivo. No ejecutar acciones destructivas sobre una base compartida. El material revisado no aporta una receta validada de restauración completa; DOC-11 mantiene esta actividad como pendiente prioritaria.

<strong>Nota de control documental. </strong>Puertos y servicios derivados de docker-compose.yml y documentación de ejecución local. Los nombres de variables se deben tomar de los archivos .env.example del commit que se instale.


# 8. Preparación del ambiente

La instalación documentada se realiza desde la raíz de PT\_HS en Windows PowerShell con Docker Desktop iniciado. El equipo debe tener acceso a los archivos del repositorio y permiso para publicar los puertos locales. Para firmware se necesita además PlatformIO y una placa ESP32; para BLE móvil se necesita un development build.

<table>
<tr>
<td><p><strong>Requisito</strong></p></td>
<td><p><strong>Comprobaci&#243;n / uso</strong></p></td>
<td><p><strong>No hacer</strong></p></td>
</tr>
<tr>
<td><p>Docker Desktop</p></td>
<td><p>Debe estar iniciado; se verifica con docker version.</p></td>
<td><p>No levantar contenedores con variables secretas incompletas.</p></td>
</tr>
<tr>
<td><p>Compose</p></td>
<td><p>docker compose --env-file .env config --quiet.</p></td>
<td><p>No ignorar errores de interpolaci&#243;n.</p></td>
</tr>
<tr>
<td><p>Archivo .env</p></td>
<td><p>Se crea desde .env.example y conserva credenciales locales.</p></td>
<td><p>No subir .env ni copiar secretos en tickets.</p></td>
</tr>
<tr>
<td><p>ESP32/hardware</p></td>
<td><p>Necesario solo para instalaci&#243;n y prueba f&#237;sica IoT.</p></td>
<td><p>No conectar se&#241;ales sin revisar compatibilidad el&#233;ctrica.</p></td>
</tr>
<tr>
<td><p>Development build m&#243;vil</p></td>
<td><p>Necesario para react-native-ble-plx.</p></td>
<td><p>No usar Expo Go como sustituto de BLE nativo.</p></td>
</tr>
</table>


# 9. Variables de entorno sin valores

Los nombres siguientes aparecen en docker-compose.yml o en la documentación del repositorio. Deben tomar sus valores del .env.example y del ambiente autorizado; este manual no fija contraseñas ni direcciones productivas.

<table>
<tr>
<td><p><strong>Grupo</strong></p></td>
<td><p><strong>Variables documentadas</strong></p></td>
<td><p><strong>Uso</strong></p></td>
</tr>
<tr>
<td><p>PostgreSQL</p></td>
<td><p>POSTGRES_DB, POSTGRES_USER, POSTGRES_PASSWORD, POSTGRES_PORT</p></td>
<td><p>Base, rol administrador y puerto publicado.</p></td>
</tr>
<tr>
<td><p>Aplicaci&#243;n BD</p></td>
<td><p>DB_USER, DB_PASSWORD, DB_INGEST_USER, DB_INGEST_PASSWORD</p></td>
<td><p>Roles hidro_smart_app e hidro_smart_ingest.</p></td>
</tr>
<tr>
<td><p>JWT</p></td>
<td><p>JWT_SECRET, JWT_EXPIRES_IN, JWT_REFRESH_EXPIRES_IN, JWT_ISSUER, JWT_AUDIENCE</p></td>
<td><p>Sesiones y validaci&#243;n de tokens.</p></td>
</tr>
<tr>
<td><p>Backend</p></td>
<td><p>BACKEND_PORT, FRONTEND_URL, CORS_ORIGIN, APP_TIMEZONE</p></td>
<td><p>API, origen permitido y zona horaria.</p></td>
</tr>
<tr>
<td><p>MQTT</p></td>
<td><p>MQTT_BROKER_URL, MQTT_PORT, MQTT_DEVICE_HOST, MQTT_DEVICE_PORT, MQTT_USERNAME, MQTT_PASSWORD</p></td>
<td><p>Broker del backend y host accesible por ESP32.</p></td>
</tr>
<tr>
<td><p>Correo</p></td>
<td><p>SMTP_HOST, SMTP_PORT, SMTP_SECURE, SMTP_USER, SMTP_PASSWORD, SMTP_FROM</p></td>
<td><p>Recuperaci&#243;n/notificaciones; credenciales reales no verificadas.</p></td>
</tr>
<tr>
<td><p>Frontend</p></td>
<td><p>VITE_API_URL, VITE_MQTT_DEVICE_HOST, VITE_MQTT_DEVICE_PORT</p></td>
<td><p>API y broker que el m&#243;vil/ESP32 puede alcanzar.</p></td>
</tr>
</table>


# 10. Instalación desde cero con Docker

Ejecute desde PT\_HS y deténgase si un comando devuelve error. El orden respeta dependencias de salud, bootstrap de roles y migraciones.

<!-- page break -->
<p>13\. <del><u>Crear el archivo local: Copy-Item .env.example .env.</u></del></p>
<!-- page break -->
<p>14\. <del><u>Revisar valores sin publicarlos y validar Docker: docker version.</u></del></p>
<!-- page break -->
<p>15\. <del><u>Validar interpolación: docker compose --env-file .env config --quiet.</u></del></p>
<!-- page break -->
<p>16\. <del><u>Levantar persistencia y broker: docker compose --env-file .env up -d postgres db-bootstrap mosquitto.</u></del></p>
<!-- page break -->
<p>17\. <del><u>Validar migraciones: docker compose --env-file .env --profile tooling run --rm liquibase validate.</u></del></p>
<!-- page break -->
<p>18\. <del><u>Consultar migraciones: docker compose --env-file .env --profile tooling run --rm liquibase status --verbose.</u></del></p>
<!-- page break -->
<p>19\. <del><u>Aplicar migraciones: docker compose --env-file .env --profile tooling run --rm liquibase update.</u></del></p>
<!-- page break -->
<p>20\. <del><u>Construir y levantar aplicación: docker compose --env-file .env up -d --build backend frontend.</u></del></p>
<!-- page break -->
<p>21\. <del><u>Consultar servicios: docker compose --env-file .env ps.</u></del></p>
<!-- page break -->
<p>22\. <del><u>Probar backend: Invoke-WebRequest http://localhost:3000/health.</u></del></p>
<!-- page break -->
<p>23\. <del><u>Probar frontend: Invoke-WebRequest http://localhost:5173/health.</u></del></p>
## 10.1 Arranque normal y actualización

Cuando la base ya está aplicada, el arranque normal documentado es docker compose --env-file .env up -d. Si se incorporan changesets nuevos, se ejecutan nuevamente validate, status --verbose y update antes de reiniciar o probar el backend.

## 10.2 Reinicio limpio: solo desarrollo

docker compose --env-file .env down --volumes --remove-orphans elimina el volumen local de PostgreSQL y datos de desarrollo. No es una actualización normal. Debe ejecutarse solo después de confirmar que el objetivo es reconstruir desde cero y que no contiene datos que deban conservarse.

# 11. Validación posterior a la instalación

<table>
<tr>
<td><p><strong>Nivel</strong></p></td>
<td><p><strong>Prueba</strong></p></td>
<td><p><strong>Resultado que se busca</strong></p></td>
</tr>
<tr>
<td><p>Servicios</p></td>
<td><p>docker compose ps y logs del servicio con error.</p></td>
<td><p>Postgres, db-bootstrap, Mosquitto, backend y frontend saludables.</p></td>
</tr>
<tr>
<td><p>BD</p></td>
<td><p>validate, status --verbose y consulta controlada.</p></td>
<td><p>Liquibase actualizado; roles y estructura disponibles.</p></td>
</tr>
<tr>
<td><p>API</p></td>
<td><p>GET /health, /health/live y /health/ready.</p></td>
<td><p>Proceso, BD y MQTT reportan estado esperado.</p></td>
</tr>
<tr>
<td><p>Frontend</p></td>
<td><p>GET /health y navegaci&#243;n inicial.</p></td>
<td><p>Nginx entrega la aplicaci&#243;n y /api/ se reenv&#237;a.</p></td>
</tr>
<tr>
<td><p>MQTT</p></td>
<td><p>Test-NetConnection localhost -Port 1883.</p></td>
<td><p>Broker escucha localmente; la telemetr&#237;a se prueba despu&#233;s con payload controlado.</p></td>
</tr>
<tr>
<td><p>Integraci&#243;n</p></td>
<td><p>Backend npm test/check/test:integration seg&#250;n variables disponibles.</p></td>
<td><p>Resultados registrados; las pruebas omitidas se explican.</p></td>
</tr>
</table>


# 12. Instalación y aprovisionamiento del ESP32

Abra firmware en PlatformIO, seleccione el entorno esp32dev y mantenga el monitor a 115200. El firmware declara PubSubClient, ArduinoJson y NimBLE-Arduino. El flujo BLE guarda SSID, contraseña, host, puerto y deviceCode en NVS; el usuario final no debe escribir la IP del PC en una pantalla de la aplicación.

<!-- page break -->
<p>24\. <del><u>Energizar el ESP32 y confirmar que el hardware BLE sea visible.</u></del></p>
<!-- page break -->
<p>25\. <del><u>Usar el servicio BLE documentado y escribir el JSON de configuración en la característica correspondiente.</u></del></p>
<!-- page break -->
<p>26\. <del><u>Enviar mqttHost y mqttPort cuando el broker no sea el valor previamente guardado.</u></del></p>
<!-- page break -->
<p>27\. <del><u>Leer estados wifi\_connecting, wifi\_failed, wifi\_connected, mqtt\_unreachable o provisioning\_complete.</u></del></p>
<!-- page break -->
<p>28\. <del><u>Confirmar que el ESP32 publique status y telemetry con el deviceCode esperado.</u></del></p>
<!-- page break -->
<p>29\. <del><u>No registrar la contraseña Wi-Fi; el firmware documenta que no se publica en MQTT, PostgreSQL, Git ni logs.</u></del></p>
# 13. Actualización, rollback y respaldo

<!-- page break -->
<p>● <del><u>Registrar commit, fecha, ambiente, variables no secretas y estado de Liquibase antes de actualizar.</u></del></p>
<!-- page break -->
<p>● <del><u>Aplicar cambios de BD mediante Liquibase; no editar tablas manualmente para compensar diagramas.</u></del></p>
<!-- page break -->
<p>● <del><u>Conservar logs de build, migración y pruebas.</u></del></p>
<!-- page break -->
<p>● <del><u>Antes de reiniciar o eliminar volúmenes, confirmar backup y restauración; el flujo completo de backup/restore no está verificado en el corte.</u></del></p>
<!-- page break -->
<p>● <del><u>Si falla una verificación, detener la liberación y conservar la versión previamente validada según la política del ambiente.</u></del></p>
# 14. Resolución de problemas de instalación

<table>
<tr>
<td><p><strong>Problema</strong></p></td>
<td><p><strong>Revisi&#243;n</strong></p></td>
</tr>
<tr>
<td><p>config --quiet falla</p></td>
<td><p>Variables obligatorias, especialmente contrase&#241;as y MQTT_DEVICE_HOST.</p></td>
</tr>
<tr>
<td><p>db-bootstrap no termina</p></td>
<td><p>PostgreSQL healthy, POSTGRES_PASSWORD, DB_PASSWORD y DB_INGEST_PASSWORD.</p></td>
</tr>
<tr>
<td><p>Liquibase no conecta</p></td>
<td><p>Servicio postgres:5432 dentro de Docker; no usar localhost:5433 desde el contenedor.</p></td>
</tr>
<tr>
<td><p>Backend unhealthy</p></td>
<td><p>Logs, conexi&#243;n a BD, JWT_SECRET, usuario ingest y broker mqtt://mosquitto:1883.</p></td>
</tr>
<tr>
<td><p>Frontend no construye</p></td>
<td><p>VITE_API_URL, VITE_MQTT_DEVICE_HOST y VITE_MQTT_DEVICE_PORT.</p></td>
</tr>
<tr>
<td><p>ESP32 no publica</p></td>
<td><p>Host alcanzable desde la red del ESP32; localhost solo sirve para el equipo local.</p></td>
</tr>
</table>


<strong>Control de evidencia. </strong>Fuentes: PT\_HS/README.md, docker-compose.yml, docs/estado-verificado-2026-09-26.md, BD\_HS/docs/README.md, firmware/README.md, platformio.ini y package.json. Los pasos destructivos se describen para advertir, no para ejecutarlos automáticamente.

<!-- footer: HidroSmart | DOC-09 | Versión documental consolidada 1.0 | Página PAGE -->
