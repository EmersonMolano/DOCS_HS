# MER_COMPLETO

> Representación Markdown de [MER_COMPLETO.drawio](<MER_COMPLETO.drawio>). Transcripción textual del diagrama editable. No confirma por sí sola que entidades y relaciones correspondan con la base actualmente implementada.

## Página 1: Modelo físico vigente - BD_HS

Elementos con texto: **66**. Conectores: **76**.

### Elementos

| ID de origen | Texto visible |
|---|---|
| `n2` | user_account |
| `t3` | user_account.email_verification_token PK: verification_id |
| `t4` | user_account.login_attempt PK: attempt_id |
| `t5` | user_account.password_policy PK: policy_id |
| `t6` | user_account.password_reset_token PK: reset_id |
| `t7` | user_account.permission PK: permission_id |
| `t8` | user_account.role PK: role_id |
| `t9` | user_account.role_permission PK: role_id, permission_id |
| `t10` | user_account.session PK: session_id |
| `t11` | user_account.token PK: token_id |
| `t12` | user_account.user_account PK: user_account_id |
| `t13` | user_account.user_credential PK: credential_id |
| `t14` | user_account.user_mfa PK: mfa_id |
| `t15` | user_account.user_profile PK: user_account_id |
| `t16` | user_account.user_role PK: user_account_id, role_id |
| `n17` | preference |
| `t18` | preference.currency PK: currency_id |
| `t19` | preference.language PK: language_id |
| `t20` | preference.theme PK: theme_id |
| `t21` | preference.user_preference PK: preference_id |
| `n22` | home |
| `t23` | home.home PK: home_id |
| `t24` | home.home_device PK: home_device_id |
| `t25` | home.home_member_request PK: request_id |
| `t26` | home.home_user PK: home_user_id |
| `t27` | home.home_user_function PK: function_id |
| `t28` | home.saving_goal PK: goal_id |
| `t29` | home.vacation_mode PK: vacation_id |
| `n30` | device |
| `t31` | device.actuator_command PK: command_id |
| `t32` | device.actuator_state PK: actuator_state_id |
| `t33` | device.calibration_history PK: calibration_id |
| `t34` | device.device PK: device_id |
| `t35` | device.device_history PK: history_id |
| `t36` | device.device_telemetry_history PK: telemetry_id |
| `n37` | consumption |
| `t38` | consumption.consumption_prediction PK: prediction_id |
| `t39` | consumption.daily_consumption_summary PK: summary_id |
| `t40` | consumption.hourly_consumption_history PK: hourly_history_id |
| `t41` | consumption.monthly_consumption_history PK: history_id |
| `t42` | consumption.sensor_reading PK: reading_id |
| `n43` | alert_rate |
| `t44` | alert_rate.alert_event PK: event_id |
| `t45` | alert_rate.alert_notification PK: notification_id |
| `t46` | alert_rate.alert_rule PK: rule_id |
| `t47` | alert_rate.estratos PK: estrato_id |
| `t48` | alert_rate.home_rate PK: rate_id |
| `t49` | alert_rate.reference_rate PK: reference_rate_id |
| `t50` | alert_rate.threshold_configuration PK: config_id |
| `n51` | analytics_support |
| `t52` | analytics_support.generated_report PK: report_id |
| `t53` | analytics_support.recommendation PK: recommendation_id |
| `t54` | analytics_support.recommendation_category PK: category_id |
| `t55` | analytics_support.ticket PK: ticket_id |
| `t56` | analytics_support.ticket_category PK: category_id |
| `t57` | analytics_support.ticket_priority PK: priority_id |
| `t58` | analytics_support.ticket_response PK: response_id |
| `t59` | analytics_support.ticket_status PK: status_id |
| `t60` | analytics_support.user_recommendation PK: user_recommendation_id |
| `n61` | audit |
| `t62` | audit.audit_log PK: audit_id |
| `t63` | audit.log_error PK: log_error_id |
| `n64` | privacy |
| `t65` | privacy.arco_request PK: request_id |
| `t66` | privacy.user_consent PK: consent_id |
| `n143` | Fuente: migraciones locales de BD_HS/hu-23-dev, revisadas 2026-11-03. El diagrama no prueba el estado aplicado en Neon. |

### Conectores

| Desde | Etiqueta | Hacia |
|---|---|---|
| alert_rate.alert_event PK: event_id | FK: rule_id | alert_rate.alert_rule PK: rule_id |
| alert_rate.alert_event PK: event_id | FK: home_id | home.home PK: home_id |
| alert_rate.alert_notification PK: notification_id | FK: event_id | alert_rate.alert_event PK: event_id |
| alert_rate.alert_rule PK: rule_id | FK: home_id | home.home PK: home_id |
| alert_rate.alert_rule PK: rule_id | FK: created_by | user_account.user_account PK: user_account_id |
| alert_rate.home_rate PK: rate_id | FK: tier | alert_rate.estratos PK: estrato_id |
| alert_rate.home_rate PK: rate_id | FK: home_id | home.home PK: home_id |
| alert_rate.reference_rate PK: reference_rate_id | FK: tier | alert_rate.estratos PK: estrato_id |
| alert_rate.threshold_configuration PK: config_id | FK: home_id | home.home PK: home_id |
| alert_rate.threshold_configuration PK: config_id | FK: updated_by | user_account.user_account PK: user_account_id |
| analytics_support.generated_report PK: report_id | FK: home_id | home.home PK: home_id |
| analytics_support.generated_report PK: report_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| analytics_support.recommendation PK: recommendation_id | FK: category_id | analytics_support.recommendation_category PK: category_id |
| analytics_support.recommendation PK: recommendation_id | FK: created_by | user_account.user_account PK: user_account_id |
| analytics_support.ticket PK: ticket_id | FK: category_id | analytics_support.ticket_category PK: category_id |
| analytics_support.ticket PK: ticket_id | FK: priority_id | analytics_support.ticket_priority PK: priority_id |
| analytics_support.ticket PK: ticket_id | FK: status_id | analytics_support.ticket_status PK: status_id |
| analytics_support.ticket PK: ticket_id | FK: assigned_to, user_account_id | user_account.user_account PK: user_account_id |
| analytics_support.ticket_response PK: response_id | FK: ticket_id | analytics_support.ticket PK: ticket_id |
| analytics_support.ticket_response PK: response_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| analytics_support.user_recommendation PK: user_recommendation_id | FK: recommendation_id | analytics_support.recommendation PK: recommendation_id |
| analytics_support.user_recommendation PK: user_recommendation_id | FK: home_id | home.home PK: home_id |
| analytics_support.user_recommendation PK: user_recommendation_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| audit.audit_log PK: audit_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| audit.log_error PK: log_error_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| consumption.consumption_prediction PK: prediction_id | FK: home_id | home.home PK: home_id |
| consumption.daily_consumption_summary PK: summary_id | FK: home_id | home.home PK: home_id |
| consumption.hourly_consumption_history PK: hourly_history_id | FK: home_id | home.home PK: home_id |
| consumption.monthly_consumption_history PK: history_id | FK: home_id | home.home PK: home_id |
| consumption.sensor_reading PK: reading_id | FK: device_id | device.device PK: device_id |
| consumption.sensor_reading PK: reading_id | FK: home_id | home.home PK: home_id |
| consumption.sensor_reading PK: reading_id | FK: home_id, device_id | home.home_device PK: home_device_id |
| device.actuator_command PK: command_id | FK: device_id | device.device PK: device_id |
| device.actuator_command PK: command_id | FK: home_id | home.home PK: home_id |
| device.actuator_command PK: command_id | FK: requested_by | user_account.user_account PK: user_account_id |
| device.actuator_state PK: actuator_state_id | FK: device_id | device.device PK: device_id |
| device.actuator_state PK: actuator_state_id | FK: home_id | home.home PK: home_id |
| device.calibration_history PK: calibration_id | FK: device_id | device.device PK: device_id |
| device.calibration_history PK: calibration_id | FK: performed_by | user_account.user_account PK: user_account_id |
| device.device_history PK: history_id | FK: device_id | device.device PK: device_id |
| device.device_history PK: history_id | FK: registered_by | user_account.user_account PK: user_account_id |
| device.device_telemetry_history PK: telemetry_id | FK: device_id | device.device PK: device_id |
| home.home PK: home_id | FK: tier | alert_rate.estratos PK: estrato_id |
| home.home PK: home_id | FK: suspended_by | user_account.user_account PK: user_account_id |
| home.home_device PK: home_device_id | FK: device_id | device.device PK: device_id |
| home.home_device PK: home_device_id | FK: home_id | home.home PK: home_id |
| home.home_member_request PK: request_id | FK: home_id | home.home PK: home_id |
| home.home_member_request PK: request_id | FK: answered_by, user_account_id | user_account.user_account PK: user_account_id |
| home.home_user PK: home_user_id | FK: home_id | home.home PK: home_id |
| home.home_user PK: home_user_id | FK: added_by, user_account_id | user_account.user_account PK: user_account_id |
| home.home_user_function PK: function_id | FK: home_user_id | home.home_user PK: home_user_id |
| home.home_user_function PK: function_id | FK: assigned_by | user_account.user_account PK: user_account_id |
| home.saving_goal PK: goal_id | FK: home_id | home.home PK: home_id |
| home.vacation_mode PK: vacation_id | FK: home_id | home.home PK: home_id |
| preference.user_preference PK: preference_id | FK: currency_id | preference.currency PK: currency_id |
| preference.user_preference PK: preference_id | FK: language_id | preference.language PK: language_id |
| preference.user_preference PK: preference_id | FK: theme_id | preference.theme PK: theme_id |
| preference.user_preference PK: preference_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| privacy.arco_request PK: request_id | FK: answered_by, user_account_id | user_account.user_account PK: user_account_id |
| privacy.user_consent PK: consent_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| user_account.email_verification_token PK: verification_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| user_account.login_attempt PK: attempt_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| user_account.password_reset_token PK: reset_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| user_account.role_permission PK: role_id, permission_id | FK: permission_id | user_account.permission PK: permission_id |
| user_account.role_permission PK: role_id, permission_id | FK: role_id | user_account.role PK: role_id |
| user_account.session PK: session_id | FK: token_id | user_account.token PK: token_id |
| user_account.session PK: session_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| user_account.token PK: token_id | FK: parent_id | user_account.token PK: token_id |
| user_account.token PK: token_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| user_account.user_account PK: user_account_id | FK: suspended_by | user_account.user_account PK: user_account_id |
| user_account.user_credential PK: credential_id | FK: policy_id | user_account.password_policy PK: policy_id |
| user_account.user_credential PK: credential_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| user_account.user_mfa PK: mfa_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| user_account.user_profile PK: user_account_id | FK: user_account_id | user_account.user_account PK: user_account_id |
| user_account.user_role PK: user_account_id, role_id | FK: role_id | user_account.role PK: role_id |
| user_account.user_role PK: user_account_id, role_id | FK: assigned_by, user_account_id | user_account.user_account PK: user_account_id |

## Alcance

Esta copia lista los rótulos y conectores encontrados en el archivo editable. No reemplaza el diseño gráfico ni verifica cardinalidades. Contrástese con las migraciones de BD_HS y el [diccionario implementado](../../08_Documentacion_Tecnica_Actualizada/03_Base_de_Datos/09_diccionario-implementado.md) antes de declarar este diagrama como definitivo.
