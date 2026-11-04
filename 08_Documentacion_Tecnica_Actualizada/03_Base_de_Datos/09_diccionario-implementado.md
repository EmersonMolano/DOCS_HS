# Diccionario físico de datos implementado

Inventario estático de la rama local `BD_HS/hu-23-dev`, revisada el 2026-11-03. Se deriva de los `CREATE TABLE` y referencias declaradas en `01_ddl`; no es una introspección de Neon y no confirma qué migraciones están instaladas en un entorno. Para columnas completas, tipos y restricciones, abre el changeset vigente indicado por la ruta de migración. No uses el diccionario DOCX convertido como fuente de esquema: conserva el vocabulario histórico del documento original.

La migración maestra incluye `01_ddl`, `02_dml` y `03_dcl`. Esta lista identifica las tablas creadas por las migraciones DDL actuales; las columnas que se añadieron después se documentan en las migraciones `04_alter` y en los changesets posteriores de `06_functions`.

**Inventario:** 56 tablas en 9 esquemas y 81 firmas FK distintas en el texto de migraciones, deduplicadas por tabla/columnas de origen y tabla/columnas de destino. Esas firmas forman 76 pares únicos de tablas. `MER_COMPLETO.drawio` contiene las 56 entidades y los 76 pares; el Mermaid de [modelo entidad-relación](06_modelo-entidad-relacion.md) presenta 23 pares representativos. Las migraciones determinan nullabilidad, acciones `ON DELETE`, índices y restricciones exactas.

## `user_account` — Identidades, autenticación y RBAC

| Tabla | PK | Referencias FK
| --- | --- | --- |
| `email_verification_token` | `verification_id` | `user_account_id` → `user_account.user_account(user_account_id)` |
| `login_attempt` | `attempt_id` | `user_account_id` → `user_account.user_account(user_account_id)` |
| `password_policy` | `policy_id` | — |
| `password_reset_token` | `reset_id` | `user_account_id` → `user_account.user_account(user_account_id)` |
| `permission` | `permission_id` | — |
| `role` | `role_id` | — |
| `role_permission` | `role_id`, `permission_id` | `permission_id` → `user_account.permission(permission_id)`; `role_id` → `user_account.role(role_id)` |
| `session` | `session_id` | `token_id` → `user_account.token(token_id)`; `user_account_id` → `user_account.user_account(user_account_id)` |
| `token` | `token_id` | `parent_id` → `user_account.token(token_id)`; `user_account_id` → `user_account.user_account(user_account_id)` |
| `user_account` | `user_account_id` | `suspended_by` → `user_account.user_account(user_account_id)` |
| `user_credential` | `credential_id` | `policy_id` → `user_account.password_policy(policy_id)`; `user_account_id` → `user_account.user_account(user_account_id)` |
| `user_mfa` | `mfa_id` | `user_account_id` → `user_account.user_account(user_account_id)` |
| `user_profile` | `user_account_id` | `user_account_id` → `user_account.user_account(user_account_id)` |
| `user_role` | `user_account_id`, `role_id` | `assigned_by` → `user_account.user_account(user_account_id)`; `role_id` → `user_account.role(role_id)`; `user_account_id` → `user_account.user_account(user_account_id)` |

## `preference` — Preferencias de usuario

| Tabla | PK | Referencias FK
| --- | --- | --- |
| `currency` | `currency_id` | — |
| `language` | `language_id` | — |
| `theme` | `theme_id` | — |
| `user_preference` | `preference_id` | `currency_id` → `preference.currency(currency_id)`; `language_id` → `preference.language(language_id)`; `theme_id` → `preference.theme(theme_id)`; `user_account_id` → `user_account.user_account(user_account_id)` |

## `home` — Hogares y membresías

| Tabla | PK | Referencias FK
| --- | --- | --- |
| `home` | `home_id` | `suspended_by` → `user_account.user_account(user_account_id)`; `tier` → `alert_rate.estratos(numero_estrato)` |
| `home_device` | `home_device_id` | `device_id` → `device.device(device_id)`; `home_id` → `home.home(home_id)` |
| `home_member_request` | `request_id` | `answered_by` → `user_account.user_account(user_account_id)`; `home_id` → `home.home(home_id)`; `user_account_id` → `user_account.user_account(user_account_id)` |
| `home_user` | `home_user_id` | `added_by` → `user_account.user_account(user_account_id)`; `home_id` → `home.home(home_id)`; `user_account_id` → `user_account.user_account(user_account_id)` |
| `home_user_function` | `function_id` | `assigned_by` → `user_account.user_account(user_account_id)`; `home_user_id` → `home.home_user(home_user_id)` |
| `saving_goal` | `goal_id` | `home_id` → `home.home(home_id)` |
| `vacation_mode` | `vacation_id` | `home_id` → `home.home(home_id)` |

## `device` — Dispositivos IoT y actuadores

| Tabla | PK | Referencias FK
| --- | --- | --- |
| `actuator_command` | `command_id` | `device_id` → `device.device(device_id)`; `home_id` → `home.home(home_id)`; `requested_by` → `user_account.user_account(user_account_id)` |
| `actuator_state` | `actuator_state_id` | `device_id` → `device.device(device_id)`; `home_id` → `home.home(home_id)` |
| `calibration_history` | `calibration_id` | `device_id` → `device.device(device_id)`; `performed_by` → `user_account.user_account(user_account_id)` |
| `device` | `device_id` | — |
| `device_history` | `history_id` | `device_id` → `device.device(device_id)`; `registered_by` → `user_account.user_account(user_account_id)` |
| `device_telemetry_history` | `telemetry_id` | `device_id` → `device.device(device_id)` |

## `consumption` — Lecturas y agregados de consumo

| Tabla | PK | Referencias FK
| --- | --- | --- |
| `consumption_prediction` | `prediction_id` | `home_id` → `home.home(home_id)` |
| `daily_consumption_summary` | `summary_id` | `home_id` → `home.home(home_id)` |
| `hourly_consumption_history` | `hourly_history_id` | `home_id` → `home.home(home_id)` |
| `monthly_consumption_history` | `history_id` | `home_id` → `home.home(home_id)` |
| `sensor_reading` | `reading_id` | `device_id` → `device.device(device_id)`; `home_id` → `home.home(home_id)`; `home_id, device_id` → `home.home_device(home_id, device_id)` |

## `alert_rate` — Alertas y tarifas

| Tabla | PK | Referencias FK
| --- | --- | --- |
| `alert_event` | `event_id` | `home_id` → `home.home(home_id)`; `rule_id` → `alert_rate.alert_rule(rule_id)` |
| `alert_notification` | `notification_id` | `event_id` → `alert_rate.alert_event(event_id)` |
| `alert_rule` | `rule_id` | `created_by` → `user_account.user_account(user_account_id)`; `home_id` → `home.home(home_id)` |
| `estratos` | `estrato_id` | — |
| `home_rate` | `rate_id` | `home_id` → `home.home(home_id)`; `tier` → `alert_rate.estratos(numero_estrato)` |
| `reference_rate` | `reference_rate_id` | `tier` → `alert_rate.estratos(numero_estrato)` |
| `threshold_configuration` | `config_id` | `home_id` → `home.home(home_id)`; `updated_by` → `user_account.user_account(user_account_id)` |

## `analytics_support` — Analítica, reportes y soporte

| Tabla | PK | Referencias FK
| --- | --- | --- |
| `generated_report` | `report_id` | `home_id` → `home.home(home_id)`; `user_account_id` → `user_account.user_account(user_account_id)` |
| `recommendation` | `recommendation_id` | `category_id` → `analytics_support.recommendation_category(category_id)`; `created_by` → `user_account.user_account(user_account_id)` |
| `recommendation_category` | `category_id` | — |
| `ticket` | `ticket_id` | `assigned_to` → `user_account.user_account(user_account_id)`; `category_id` → `analytics_support.ticket_category(category_id)`; `priority_id` → `analytics_support.ticket_priority(priority_id)`; `status_id` → `analytics_support.ticket_status(status_id)`; `user_account_id` → `user_account.user_account(user_account_id)` |
| `ticket_category` | `category_id` | — |
| `ticket_priority` | `priority_id` | — |
| `ticket_response` | `response_id` | `ticket_id` → `analytics_support.ticket(ticket_id)`; `user_account_id` → `user_account.user_account(user_account_id)` |
| `ticket_status` | `status_id` | — |
| `user_recommendation` | `user_recommendation_id` | `home_id` → `home.home(home_id)`; `recommendation_id` → `analytics_support.recommendation(recommendation_id)`; `user_account_id` → `user_account.user_account(user_account_id)` |

## `audit` — Auditoría y errores

| Tabla | PK | Referencias FK
| --- | --- | --- |
| `audit_log` | `audit_id` | `user_account_id` → `user_account.user_account(user_account_id)` |
| `log_error` | `log_error_id` | `user_account_id` → `user_account.user_account(user_account_id)` |

## `privacy` — Privacidad y ARCO

| Tabla | PK | Referencias FK
| --- | --- | --- |
| `arco_request` | `request_id` | `answered_by` → `user_account.user_account(user_account_id)`; `user_account_id` → `user_account.user_account(user_account_id)` |
| `user_consent` | `consent_id` | `user_account_id` → `user_account.user_account(user_account_id)` |

## Lectura y mantenimiento

- Los nombres de tablas y claves se conservan como están en PostgreSQL; no se traducen a alias de prototipos antiguos.
- La misma tabla puede tener varios cambios posteriores. Para obtener la forma vigente hay que seguir los changesets en orden, no solo leer el archivo de creación inicial.
- `home.home_device` es la asociación temporal entre hogar y dispositivo. La lectura valida el par hogar/dispositivo; el índice parcial `uq_home_device_one_active_device` limita a un vínculo activo por equipo.
- `consumption.sensor_reading.mqtt_message_id` participa en la deduplicación por dispositivo; la telemetría también mantiene tiempos medido/recibido y métricas del ESP32.
- `device.device.measurement_enabled` pausa la contabilización pero conserva telemetría para la detección de fugas.
- Los diagramas que representan usuarios SQL anteriores, contraseñas reversibles, tablas `medidor` o modelos 2FA distintos al DDL actual se consideran obsoletos hasta actualizarse.

Fuentes: `BD_HS/changelog-master.yaml`, `BD_HS/01_ddl/changelog.yaml`, `BD_HS/01_ddl/03_tables`, `BD_HS/01_ddl/04_alter`, `BD_HS/01_ddl/05_materialized_views`, `BD_HS/01_ddl/06_functions` y `BD_HS/01_ddl/09_indexes`.
