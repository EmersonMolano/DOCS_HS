# ER

> Representación Markdown de [ER.drawio](<ER.drawio>). Transcripción textual del diagrama editable. No confirma por sí sola que entidades y relaciones correspondan con la base actualmente implementada.

## Página 1: ER lógico - núcleo de HidroSmart

Elementos con texto: **30**. Conectores: **36**.

### Elementos

| ID de origen | Texto visible |
|---|---|
| `n2` | user_account |
| `t3` | user_account.permission PK: permission_id |
| `t4` | user_account.role PK: role_id |
| `t5` | user_account.role_permission PK: role_id, permission_id |
| `t6` | user_account.user_account PK: user_account_id |
| `t7` | user_account.user_credential PK: credential_id |
| `t8` | user_account.user_profile PK: user_account_id |
| `t9` | user_account.user_role PK: user_account_id, role_id |
| `n10` | home |
| `t11` | home.home PK: home_id |
| `t12` | home.home_device PK: home_device_id |
| `t13` | home.home_user PK: home_user_id |
| `t14` | home.home_user_function PK: function_id |
| `n15` | device |
| `t16` | device.actuator_command PK: command_id |
| `t17` | device.actuator_state PK: actuator_state_id |
| `t18` | device.device PK: device_id |
| `t19` | device.device_history PK: history_id |
| `n20` | consumption |
| `t21` | consumption.sensor_reading PK: reading_id |
| `n22` | alert_rate |
| `t23` | alert_rate.alert_event PK: event_id |
| `t24` | alert_rate.alert_notification PK: notification_id |
| `t25` | alert_rate.alert_rule PK: rule_id |
| `t26` | alert_rate.threshold_configuration PK: config_id |
| `n27` | analytics_support |
| `t28` | analytics_support.generated_report PK: report_id |
| `t29` | analytics_support.ticket PK: ticket_id |
| `t30` | analytics_support.ticket_response PK: response_id |
| `note` | Fuente: migraciones locales BD_HS/hu-23-dev, revisión 2026-11-03. No verifica el estado aplicado en Neon. |

### Conectores

| Desde | Etiqueta | Hacia |
|---|---|---|
| alert_rate.alert_event PK: event_id | FK: rule_id | alert_rate.alert_rule PK: rule_id |
| alert_rate.alert_event PK: event_id | FK: home_id | home.home PK: home_id |
| alert_rate.alert_notification PK: notification_id | FK: event_id | alert_rate.alert_event PK: event_id |
| alert_rate.alert_rule PK: rule_id | FK: home_id | home.home PK: home_id |
| alert_rate.alert_rule PK: rule_id | FK: created_by | user_account.user_account PK: user_account_id |
| alert_rate.threshold_configuration PK: config_id | FK: home_id | home.home PK: home_id |
| alert_rate.threshold_configuration PK: config_id | FK: updated_by | user_account.user_account PK: user_account_id |
| analytics_support.generated_report PK: report_id | FK: home_id | home.home PK: home_id |
| analytics_support.generated_report PK: report_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| analytics_support.ticket PK: ticket_id | FK: assigned_to, user_account_id | user_account.user_account PK: user_account_id |
| analytics_support.ticket_response PK: response_id | FK: ticket_id | analytics_support.ticket PK: ticket_id |
| analytics_support.ticket_response PK: response_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| consumption.sensor_reading PK: reading_id | FK: device_id | device.device PK: device_id |
| consumption.sensor_reading PK: reading_id | FK: home_id | home.home PK: home_id |
| consumption.sensor_reading PK: reading_id | FK: home_id, device_id | home.home_device PK: home_device_id |
| device.actuator_command PK: command_id | FK: device_id | device.device PK: device_id |
| device.actuator_command PK: command_id | FK: home_id | home.home PK: home_id |
| device.actuator_command PK: command_id | FK: requested_by | user_account.user_account PK: user_account_id |
| device.actuator_state PK: actuator_state_id | FK: device_id | device.device PK: device_id |
| device.actuator_state PK: actuator_state_id | FK: home_id | home.home PK: home_id |
| device.device_history PK: history_id | FK: device_id | device.device PK: device_id |
| device.device_history PK: history_id | FK: registered_by | user_account.user_account PK: user_account_id |
| home.home PK: home_id | FK: suspended_by | user_account.user_account PK: user_account_id |
| home.home_device PK: home_device_id | FK: device_id | device.device PK: device_id |
| home.home_device PK: home_device_id | FK: home_id | home.home PK: home_id |
| home.home_user PK: home_user_id | FK: home_id | home.home PK: home_id |
| home.home_user PK: home_user_id | FK: added_by, user_account_id | user_account.user_account PK: user_account_id |
| home.home_user_function PK: function_id | FK: home_user_id | home.home_user PK: home_user_id |
| home.home_user_function PK: function_id | FK: assigned_by | user_account.user_account PK: user_account_id |
| user_account.role_permission PK: role_id, permission_id | FK: permission_id | user_account.permission PK: permission_id |
| user_account.role_permission PK: role_id, permission_id | FK: role_id | user_account.role PK: role_id |
| user_account.user_account PK: user_account_id | FK: suspended_by | user_account.user_account PK: user_account_id |
| user_account.user_credential PK: credential_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| user_account.user_profile PK: user_account_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| user_account.user_role PK: user_account_id, role_id | FK: role_id | user_account.role PK: role_id |
| user_account.user_role PK: user_account_id, role_id | FK: assigned_by, user_account_id | user_account.user_account PK: user_account_id |

## Alcance

Esta copia lista los rótulos y conectores encontrados en el archivo editable. No reemplaza el diseño gráfico ni verifica cardinalidades. Contrástese con las migraciones de BD_HS y el [diccionario implementado](../../08_Documentacion_Tecnica_Actualizada/03_Base_de_Datos/09_diccionario-implementado.md) antes de declarar este diagrama como definitivo.
