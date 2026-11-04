# Diagrama de clases

> Representación Markdown de [Diagrama de clases.drawio](<Diagrama de clases.drawio>). Transcripción textual del diagrama editable. No confirma por sí sola que entidades y relaciones correspondan con la base actualmente implementada.

## Página 1: Tablas principales

Elementos con texto: **13**. Conectores: **14**.

### Elementos

| ID de origen | Texto visible |
|---|---|
| `u` | user_account.user_account PK user_account_id |
| `ur` | user_account.user_role PK user_account_id, role_id |
| `h` | home.home PK home_id |
| `hu` | home.home_user PK home_user_id |
| `d` | device.device PK device_id |
| `hd` | home.home_device PK home_device_id |
| `sr` | consumption.sensor_reading PK reading_id |
| `ar` | alert_rate.alert_rule PK rule_id |
| `ae` | alert_rate.alert_event PK event_id |
| `goal` | home.saving_goal PK goal_id |
| `ticket` | analytics_support.ticket PK ticket_id |
| `report` | analytics_support.generated_report PK report_id |
| `note` | Seleccion de tablas/FK segun BD_HS hu-23-dev. No es introspeccion de Neon. |

### Conectores

| Desde | Etiqueta | Hacia |
|---|---|---|
| user_account.user_account PK user_account_id | user_account_id | user_account.user_role PK user_account_id, role_id |
| user_account.user_account PK user_account_id | user_account_id | home.home_user PK home_user_id |
| home.home PK home_id | home_id | home.home_user PK home_user_id |
| home.home PK home_id | home_id | home.home_device PK home_device_id |
| device.device PK device_id | device_id | home.home_device PK home_device_id |
| home.home_device PK home_device_id | home_id/device_id | consumption.sensor_reading PK reading_id |
| device.device PK device_id | device_id | consumption.sensor_reading PK reading_id |
| home.home PK home_id | home_id | alert_rate.alert_rule PK rule_id |
| alert_rate.alert_rule PK rule_id | rule_id | alert_rate.alert_event PK event_id |
| home.home PK home_id | home_id | alert_rate.alert_event PK event_id |
| home.home PK home_id | home_id | home.saving_goal PK goal_id |
| user_account.user_account PK user_account_id | user_account_id | analytics_support.ticket PK ticket_id |
| user_account.user_account PK user_account_id | user_account_id | analytics_support.generated_report PK report_id |
| home.home PK home_id | home_id | analytics_support.generated_report PK report_id |

## Alcance

Esta copia lista los rótulos y conectores encontrados en el archivo editable. No reemplaza el diseño gráfico ni verifica cardinalidades. Contrástese con las migraciones de BD_HS y el [diccionario implementado](../../08_Documentacion_Tecnica_Actualizada/03_Base_de_Datos/09_diccionario-implementado.md) antes de declarar este diagrama como definitivo.
