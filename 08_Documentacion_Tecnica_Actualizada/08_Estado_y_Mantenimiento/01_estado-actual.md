# Estado actual de HidroSmart

**Corte estático local: 2026-11-03.** No se ejecutaron en esta revisión los
servicios remotos, las suites ni una placa física. Este documento informa qué
código se inspeccionó y separa esa evidencia de las pruebas fechadas anteriores.

## Fuentes locales revisadas

| Repositorio | Rama | HEAD consultado |
| --- | --- | --- |
| PT_HS integrado | hu-19-dev | 73fc47c |
| BD_HS separado | hu-23-dev | 7095168 |
| BK_HS separado | hu-15-dev | 9db5040 |
| FT_HS separado | hu-16-staging | 18d26e3 |
| Firmaware_HS separado | hu-03-dev | 5ec5013 |
| DOCS_HS | main | eab6c78, base consultada antes de esta sincronización documental |

Los componentes separados y el monorepo están en ramas/revisiones distintas.
No se debe presentar esa combinación como una única versión liberada.

## Capacidades documentadas en el monorepo

- Clientes web y Expo/React Native, API Express, PostgreSQL/Liquibase y firmware ESP32.
- Autenticación con cookies y CSRF; autorización en la API y aislamiento de datos en PostgreSQL.
- Asociación hogar-dispositivo por deviceCode lógico y hardwareId físico.
- MQTT transporta estado, telemetría y comandos; BLE se usa durante el aprovisionamiento.
- La vigilancia de fuga puede pausar el volumen contabilizado y mantener el ESP32, el sensor y MQTT activos.
- La pila Docker incluye Mosquitto para desarrollo local; la integración documentada para broker externo usa Flespi/TLS.
- La configuración del backend de correo apunta a Brevo.

Estas son observaciones estáticas de los archivos, no pruebas de despliegue o de hardware.

## Diferencias de versión que requieren conciliación

1. El DML del checkout separado BD_HS/hu-23-dev reserva tres códigos lógicos.
2. El PT_HS/hu-19-dev integrado contiene cuatro códigos en firmware y SQL. El firmware permite elegir un código activo, suscribirse a los topics de comando de los códigos y publica cada lectura solamente bajo el código activo. Esto no crea cuatro lecturas independientes ni cuatro sensores físicos.
3. La base de datos integrada y el repositorio BD_HS separado no son el mismo checkout. El firmware integrado publica cada lectura con un solo código activo; no representa cuatro sensores simultáneos. Antes de instalar una combinación de ramas, alinear y verificar los códigos aceptados por SQL, API, firmware y ACL.
4. Firmaware_HS/hu-03-dev no debe suponerse idéntico al firmware integrado. Verifica su commit y configuración TLS antes de programar una placa.
5. FT_HS y BK_HS separados tampoco comparten las ramas del monorepo; verifica qué commit consume Cloudflare/Render antes de atribuirles funciones descritas aquí.

## Evidencia histórica disponible

El informe previo en este repositorio registra resultados de pruebas del **18 de octubre de 2026**, incluida una simulación HTTP de clientes virtuales y resultados de builds. No se repitieron en el corte actual y no equivalen a validación E2E, carga real ni prueba con ESP32. El número de vulnerabilidades citado en ese informe también es histórico; debe volver a ejecutarse el audit en la rama candidata.

## No verificado en este corte

- Estado de despliegue, branch, root directory, variables o checks actuales de Cloudflare Pages y Render.
- Inicio/cierre de sesión entre dominios y cookies/CSRF en navegador real.
- Entrega real de correos de todos los flujos mediante Brevo.
- Aplicación de cada changeset en Neon y compatibilidad de la rama desplegada.
- ACL de Flespi, credenciales activas por dispositivo y publicación/suscripción real.
- Lecturas físicas, calibración, alerta de fuga, modo de vigilancia y reactivación BLE.
- Pruebas de carga con usuarios y base de datos reales.

## Siguiente orden recomendado

1. Alinear los IDs aceptados por SQL, API, firmware y ACL entre ramas. El comportamiento documentado en PT_HS es un código activo por placa y una publicación por lectura; cualquier despliegue multi-placa requiere códigos distintos y pruebas de asociación independientes.
2. Comparar y promover las ramas de componentes a un conjunto coherente.
3. Verificar configuración y ejecución remota de Pages, Render, Neon, Brevo y Flespi sin revelar secretos.
4. Ampliar las pruebas de componentes y estados visibles del frontend; ejecutar
   también pruebas autenticadas de navegador por rol y pruebas físicas del
   ESP32.
5. Repetir audit y suites en los commits candidatos y registrar SHA, entorno, comandos y resultados.

Consulta [pendientes y evidencias](02_pendientes-documentacion.md) para los criterios de cierre.

## Actualización de promoción — 2026-11-05

Se verificaron los siguientes `main` remotos después de promover los cambios:

| Repositorio | `main` | Promoción comprobada |
| --- | --- | --- |
| PT_HS | `09c9e4c` | `hu-20-dev` → `hu-20-qa` → `hu-20-staging` → `hu-20-main` → `main` |
| Firmaware_HS | `2e5cfca` | `hu-03-dev` → `hu-03-qa` → `hu-03-staging` → `hu-03-main` → `main` |
| BD_HS | `42ee03b` | La rama HU-23 ya estaba integrada en `main`; no requería una nueva promoción. |
| BK_HS | `190263d` | La rama HU-15 ya estaba integrada en `main`; no requería una nueva promoción. |
| FT_HS | `91a5ef3` | `main` ya contenía la integración HU-20. |
| DOCS_HS | `44bb611` | Las actualizaciones documentales locales se integraron en `main`. |

La entrega SENA `ADSO-3145555` también recibió el paquete de diseño en `main`, commit `993c5b2`.
La promoción verifica referencias Git, no compilación, despliegue ni operación física.

### Divergencia de migraciones que requiere conciliación

No copiar cambiosets de BD_HS a PT_HS ni al contrario sin una migración de compatibilidad revisada. El changeset de estado de medición conserva IDs distintos (`20261028-device-measurement-state` en PT_HS y `20261030-device-measurement-state` en BD_HS). La regla de fuga también usa IDs y rutas distintas (`20261030-default-leak-detection-rule`/`073_fn_default_leak_detection_rule.sql` en PT_HS y `20261030-fn-default-leak-detection-rule`/`067_fn_default_leak_detection_rule.sql` en BD_HS). Liquibase identifica los cambios por ID, autor y ruta; una aplicación cruzada puede volver a ejecutar SQL.

En esta promoción no se ejecutó PlatformIO, CI, pruebas automatizadas, Neon, Flespi ni una placa física. Mantén esos puntos en la sección **No verificado en este corte** hasta registrar evidencia nueva.
