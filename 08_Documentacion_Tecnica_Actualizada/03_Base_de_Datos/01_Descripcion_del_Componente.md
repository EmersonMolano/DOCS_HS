# Componente de base de datos HidroSmart

PostgreSQL persiste cuentas, hogares, dispositivos, lecturas, alertas, soporte,
auditoría y privacidad. Liquibase versiona los cambios; los archivos de
`BD_HS` son la fuente de verdad de la estructura, los datos iniciales y los
permisos declarados. Esta descripción refleja una revisión estática de la rama
local `BD_HS/hu-23-dev` al 2026-11-03; no certifica qué migraciones están
aplicadas en cada entorno.

## Esquemas de dominio

| Esquema | Responsabilidad |
| --- | --- |
| `user_account` | Identidades, perfiles, credenciales, verificación, sesiones, MFA, roles y permisos funcionales. |
| `preference` | Catálogos de idioma, moneda y tema; preferencias por usuario. |
| `home` | Hogares, miembros, funciones, solicitudes, metas y modo vacaciones. |
| `device` | Dispositivos, historial, telemetría, calibración y actuadores. |
| `consumption` | Lecturas IoT, históricos, resúmenes y predicciones. |
| `alert_rate` | Umbrales, reglas, eventos, notificaciones, estratos y tarifas. |
| `analytics_support` | Recomendaciones, reportes, categorías, tickets y respuestas. |
| `audit` | Eventos de auditoría y errores. |
| `privacy` | Consentimientos y solicitudes ARCO. |

## Responsabilidades

- `01_ddl`: define objetos y restricciones de PostgreSQL.
- `02_dml`: carga catálogos, permisos funcionales, referencias y códigos lógicos iniciales.
- `03_dcl`: declara roles técnicos, grants, revocaciones y políticas RLS.
- `04_tcl`: contiene operaciones manuales de mantenimiento y recuperación; no es parte del `update` normal.
- `05_rollbacks`: catálogo de reversiones vinculadas a changesets concretos, no un changelog que se aplique en bloque.

El flujo principal de telemetría valida el dispositivo, la asociación activa con
el hogar, el identificador idempotente del mensaje y sus métricas antes de
persistir la lectura. La regla de negocio de medición permite pausar la
contabilización sin interrumpir la telemetría usada para vigilar fugas.

Para el inventario relacional actualizado consulta
[`09_diccionario-implementado.md`](09_diccionario-implementado.md), y para la
vista conceptual [`06_modelo-entidad-relacion.md`](06_modelo-entidad-relacion.md).
