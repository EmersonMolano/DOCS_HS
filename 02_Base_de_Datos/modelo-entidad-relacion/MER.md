# MER

> Representación Markdown de [MER.drawio](<MER.drawio>). Transcripción textual del diagrama editable. No confirma por sí sola que entidades y relaciones correspondan con la base actualmente implementada.

## Página 1: Consumo IoT y alertas

Elementos con texto: **15**. Conectores: **18**.

### Elementos

| ID de origen | Texto visible |
|---|---|
| `t2` | home.home PK: home_id |
| `t3` | home.home_device PK: home_device_id |
| `t4` | device.device PK: device_id |
| `t5` | consumption.sensor_reading PK: reading_id |
| `t6` | consumption.daily_consumption_summary PK: summary_id |
| `t7` | consumption.hourly_consumption_history PK: hourly_history_id |
| `t8` | consumption.monthly_consumption_history PK: history_id |
| `t9` | consumption.consumption_prediction PK: prediction_id |
| `t10` | alert_rate.threshold_configuration PK: config_id |
| `t11` | alert_rate.alert_rule PK: rule_id |
| `t12` | alert_rate.alert_event PK: event_id |
| `t13` | alert_rate.alert_notification PK: notification_id |
| `t14` | device.actuator_state PK: actuator_state_id |
| `t15` | device.actuator_command PK: command_id |
| `note` | Fuente: cambios DDL de BD_HS/hu-23-dev, revisión 2026-11-03. Consulta migrations para detalles completos. |

### Conectores

| Desde | Etiqueta | Hacia |
|---|---|---|
| alert_rate.alert_event PK: event_id | FK home_id | home.home PK: home_id |
| alert_rate.alert_event PK: event_id | FK rule_id | alert_rate.alert_rule PK: rule_id |
| alert_rate.alert_notification PK: notification_id | FK event_id | alert_rate.alert_event PK: event_id |
| alert_rate.alert_rule PK: rule_id | FK home_id | home.home PK: home_id |
| alert_rate.threshold_configuration PK: config_id | FK home_id | home.home PK: home_id |
| consumption.consumption_prediction PK: prediction_id | FK home_id | home.home PK: home_id |
| consumption.daily_consumption_summary PK: summary_id | FK home_id | home.home PK: home_id |
| consumption.hourly_consumption_history PK: hourly_history_id | FK home_id | home.home PK: home_id |
| consumption.monthly_consumption_history PK: history_id | FK home_id | home.home PK: home_id |
| consumption.sensor_reading PK: reading_id | FK device_id | device.device PK: device_id |
| consumption.sensor_reading PK: reading_id | FK home_id | home.home PK: home_id |
| consumption.sensor_reading PK: reading_id | FK home_id, device_id | home.home_device PK: home_device_id |
| device.actuator_command PK: command_id | FK device_id | device.device PK: device_id |
| device.actuator_command PK: command_id | FK home_id | home.home PK: home_id |
| device.actuator_state PK: actuator_state_id | FK device_id | device.device PK: device_id |
| device.actuator_state PK: actuator_state_id | FK home_id | home.home PK: home_id |
| home.home_device PK: home_device_id | FK device_id | device.device PK: device_id |
| home.home_device PK: home_device_id | FK home_id | home.home PK: home_id |

## Alcance

Esta copia lista los rótulos y conectores encontrados en el archivo editable. No reemplaza el diseño gráfico ni verifica cardinalidades. Contrástese con las migraciones de BD_HS y el [diccionario implementado](../../08_Documentacion_Tecnica_Actualizada/03_Base_de_Datos/09_diccionario-implementado.md) antes de declarar este diagrama como definitivo.
