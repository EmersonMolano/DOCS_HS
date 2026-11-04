> **Nota de conversión.** Copia Markdown de [Diccionario de Datos.docx](<Diccionario de Datos.docx>); el original se conserva y su contenido no se actualizó.

<p><strong>Diccionario de Datos (Organizado por Dominios)</strong></p>

<p><strong>Dominio 1: Usuarios y Autenticación (user_account)</strong></p>


<table>
<tr>
<td><p>Nombre</p></td>
<td><p>Función</p></td>
<td><p>Campos Clave</p></td>
<td><p>Relaciones</p></td>
<td><p>Índices</p></td>
</tr>
<tr>
<td><p>user_account</p></td>
<td><p>Almacena los datos principales de la cuenta de usuario.</p></td>
<td><p>user_account_id (PK), username (UQ), email (UQ), status, created_at, deleted_at</p></td>
<td><p>1:N con user_profile, user_credential, token, session, login_attempt, password_reset_token</p></td>
<td><p>idx_user_account_status, idx_user_account_created_at</p></td>
</tr>
<tr>
<td><p>user_profile</p></td>
<td><p>Almacena los datos personales del usuario.</p></td>
<td><p>user_account_id (PK/FK), full_name, document_type, document_number (UQ), phone, city</p></td>
<td><p>N:1 con user_account</p></td>
<td><p>idx_user_profile_city</p></td>
</tr>
<tr>
<td><p>role</p></td>
<td><p>Catálogo de roles del sistema (Administrador, Soporte, Usuario Doméstico).</p></td>
<td><p>role_id (PK), name (UQ), description, status</p></td>
<td><p>1:N con user_role, 1:N con role_permission</p></td>
<td><p>idx_role_name</p></td>
</tr>
<tr>
<td><p>permission</p></td>
<td><p>Catálogo de permisos del sistema.</p></td>
<td><p>permission_id (PK), name (UQ), type, status</p></td>
<td><p>1:N con role_permission</p></td>
<td><p>idx_permission_name</p></td>
</tr>
<tr>
<td><p>user_role</p></td>
<td><p>Asigna roles a los usuarios (N:N).</p></td>
<td><p>user_account_id (PK/FK), role_id (PK/FK), assigned_at</p></td>
<td><p>N:1 con user_account, N:1 con role</p></td>
<td><p>idx_user_role_user_account_id, idx_user_role_role_id</p></td>
</tr>
<tr>
<td><p>role_permission</p></td>
<td><p>Asigna permisos a los roles (N:N).</p></td>
<td><p>role_id (PK/FK), permission_id (PK/FK), assigned_at</p></td>
<td><p>N:1 con role, N:1 con permission</p></td>
<td><p>idx_role_permission_role_id, idx_role_permission_permission_id</p></td>
</tr>
<tr>
<td><p>user_credential</p></td>
<td><p>Almacena el hash y salt de la contraseña (bcrypt).</p></td>
<td><p>credential_id (PK), user_account_id (UQ/FK), password_hash, salt, changed_at</p></td>
<td><p>N:1 con user_account, N:1 con password_policy</p></td>
<td><p>idx_user_credential_policy_id</p></td>
</tr>
<tr>
<td><p>password_policy</p></td>
<td><p>Define las políticas de seguridad para contraseñas.</p></td>
<td><p>policy_id (PK), name (UQ), min_longitud, requiere_mayuscula, lockout_attempts, lockout_minutes</p></td>
<td><p>1:N con user_credential</p></td>
<td><p>-</p></td>
</tr>
<tr>
<td><p>login_attempt</p></td>
<td><p>Registra los intentos fallidos de inicio de sesión y bloqueos.</p></td>
<td><p>attempt_id (PK), user_account_id (FK), failed_attempts, blocked_until, last_attempt_at</p></td>
<td><p>N:1 con user_account</p></td>
<td><p>idx_login_attempt_user_account_id, idx_login_attempt_blocked_until</p></td>
</tr>
<tr>
<td><p>password_reset_token</p></td>
<td><p>Almacena tokens para recuperación de contraseña (expiran en 1 hora).</p></td>
<td><p>reset_id (PK), user_account_id (FK), token_hash (UQ), expires_at, used, used_at</p></td>
<td><p>N:1 con user_account</p></td>
<td><p>idx_password_reset_token_user_account_id, idx_password_reset_token_expires_at</p></td>
</tr>
<tr>
<td><p>token</p></td>
<td><p>Almacena los tokens JWT (Access y Refresh).</p></td>
<td><p>token_id (PK), user_account_id (FK), type, token_hash (UQ), expires_at, status, revoked_at</p></td>
<td><p>N:1 con user_account, 1:N con session</p></td>
<td><p>idx_token_user_account_id, idx_token_status_expira, idx_token_parent_id</p></td>
</tr>
<tr>
<td><p>session</p></td>
<td><p>Registra las sesiones activas de los usuarios.</p></td>
<td><p>session_id (PK), user_account_id (FK), token_id (FK), status, started_at, ended_at</p></td>
<td><p>N:1 con user_account, N:1 con token</p></td>
<td><p>idx_session_user_account_id, idx_session_status_date, idx_session_token_id</p></td>
</tr>
</table>




<p><strong>Dominio 2: Preferencias y Personalización (preference)</strong></p>


<table>
<tr>
<td><p>Nombre</p></td>
<td><p>Función</p></td>
<td><p>Campos Clave</p></td>
<td><p>Relaciones</p></td>
<td><p>Índices</p></td>
</tr>
<tr>
<td><p>language</p></td>
<td><p>Catálogo de idiomas disponibles (es, en, pt, fr).</p></td>
<td><p>language_id (PK), code (UQ), name, active</p></td>
<td><p>1:N con user_preference</p></td>
<td><p>idx_language_code, idx_language_active</p></td>
</tr>
<tr>
<td><p>currency</p></td>
<td><p>Catálogo de monedas disponibles (COP, USD, EUR, MXN).</p></td>
<td><p>currency_id (PK), code (UQ), name, symbol, active</p></td>
<td><p>1:N con user_preference</p></td>
<td><p>idx_currency_code, idx_currency_active</p></td>
</tr>
<tr>
<td><p>theme</p></td>
<td><p>Catálogo de temas visuales (Light, Dark, High Contrast).</p></td>
<td><p>theme_id (PK), name (UQ), primary_color, secondary_color, mode, is_default</p></td>
<td><p>1:N con user_preference</p></td>
<td><p>idx_theme_mode_active, idx_theme_is_default</p></td>
</tr>
<tr>
<td><p>user_preference</p></td>
<td><p>Almacena las preferencias del usuario (idioma, moneda, tema, FCM, notificaciones).</p></td>
<td><p>preference_id (PK), user_account_id (UQ/FK), language_id (FK), currency_id (FK), theme_id (FK), fcm_token, notification_preferences (JSONB)</p></td>
<td><p>N:1 con user_account, N:1 con language, N:1 con currency, N:1 con theme</p></td>
<td><p>idx_user_preference_language, idx_user_preference_currency, idx_user_preference_theme</p></td>
</tr>
</table>










<p><strong>Dominio 3: Hogares y Miembros (home)</strong></p>


<table>
<tr>
<td><p>Nombre</p></td>
<td><p>Función</p></td>
<td><p>Campos Clave</p></td>
<td><p>Relaciones</p></td>
<td><p>Índices</p></td>
</tr>
<tr>
<td><p>home</p></td>
<td><p>Almacena los datos del hogar (nombre, dirección, ciudad, estrato, estado).</p></td>
<td><p>home_id (PK), name, address, city, tier, status, suspension_reason, created_at</p></td>
<td><p>1:N con home_user, home_device, home_member_request, vacation_mode, sensor_reading, alert_event, threshold_configuration</p></td>
<td><p>idx_home_status, idx_home_city, idx_home_tier, idx_home_name</p></td>
</tr>
<tr>
<td><p>home_user</p></td>
<td><p>Relaciona usuarios con hogares (Owner, Member, Guest).</p></td>
<td><p>home_user_id (PK), home_id (FK), user_account_id (FK), home_role, assigned_at</p></td>
<td><p>N:1 con home, N:1 con user_account, 1:N con home_user_function</p></td>
<td><p>idx_home_user_user_account_id, idx_home_user_role</p></td>
</tr>
<tr>
<td><p>home_user_function</p></td>
<td><p>Asigna funciones especiales a los miembros del hogar.</p></td>
<td><p>function_id (PK), home_user_id (FK), function, active, assigned_at</p></td>
<td><p>N:1 con home_user</p></td>
<td><p>idx_home_user_function_home_user_id</p></td>
</tr>
<tr>
<td><p>home_device</p></td>
<td><p>Relaciona dispositivos con hogares (N:N).</p></td>
<td><p>home_device_id (PK), home_id (FK), device_id (FK), status, instalado_en, suspendido_en</p></td>
<td><p>N:1 con home, N:1 con device</p></td>
<td><p>idx_home_device_home_id, idx_home_device_status, idx_home_device_suspendido_en</p></td>
</tr>
<tr>
<td><p>home_member_request</p></td>
<td><p>Registra las solicitudes de invitación a hogares.</p></td>
<td><p>request_id (PK), home_id (FK), user_account_id (FK), status, requested_at, answered_at</p></td>
<td><p>N:1 con home, N:1 con user_account</p></td>
<td><p>idx_home_member_request_user_account_id, idx_home_member_request_status, idx_home_member_request_home_status</p></td>
</tr>
<tr>
<td><p>vacation_mode</p></td>
<td><p>Configura el modo vacaciones por hogar.</p></td>
<td><p>vacation_id (PK), home_id (FK), active, started_at, ended_at, daily_target_consumption, notify_on_return</p></td>
<td><p>N:1 con home</p></td>
<td><p>idx_vacation_mode_home_active, idx_vacation_mode_dates</p></td>
</tr>
</table>




<p><strong>Dominio 4: Dispositivos IoT (device)</strong></p>


<table>
<tr>
<td><p>Nombre</p></td>
<td><p>Función</p></td>
<td><p>Campos Clave</p></td>
<td><p>Relaciones</p></td>
<td><p>Índices</p></td>
</tr>
<tr>
<td><p>device</p></td>
<td><p>Almacena los datos del dispositivo IoT (código, tipo, estado, calibración, umbral_alerta).</p></td>
<td><p>device_id (PK), code (UQ), name, type, status, calibration_factor, calibration_offset, umbral_alerta (NUEVO), last_connection_at</p></td>
<td><p>1:N con device_history, calibration_history, device_telemetry_history, sensor_reading</p></td>
<td><p>idx_device_status, idx_device_type, idx_device_last_connection_at, idx_device_code (UQ)</p></td>
</tr>
<tr>
<td><p>device_history</p></td>
<td><p>Historial de cambios de estado del dispositivo.</p></td>
<td><p>history_id (PK), device_id (FK), previous_status, new_status, changed_at, reason</p></td>
<td><p>N:1 con device</p></td>
<td><p>idx_device_history_device_id, idx_device_history_changed_at</p></td>
</tr>
<tr>
<td><p>calibration_history</p></td>
<td><p>Historial de calibraciones (factor K y offset).</p></td>
<td><p>calibration_id (PK), device_id (FK), previous_factor, new_factor, previous_offset, new_offset, reason, calibrated_at</p></td>
<td><p>N:1 con device</p></td>
<td><p>idx_calibration_history_device_id, idx_calibration_history_date</p></td>
</tr>
<tr>
<td><p>device_telemetry_history</p></td>
<td><p>Historial de conectividad (señal, batería, voltaje, temperatura).</p></td>
<td><p>telemetry_id (PK), device_id (FK), recorded_at, signal_quality, battery_level, voltage, temperature</p></td>
<td><p>N:1 con device</p></td>
<td><p>idx_device_telemetry_device_id, idx_device_telemetry_recorded_at</p></td>
</tr>
</table>




<p><strong>Dominio 5: Consumo y Monitoreo (consumption)</strong></p>


<table>
<tr>
<td><p>Nombre</p></td>
<td><p>Función</p></td>
<td><p>Campos Clave</p></td>
<td><p>Relaciones</p></td>
<td><p>Índices</p></td>
</tr>
<tr>
<td><p>sensor_reading</p></td>
<td><p>Almacena las lecturas individuales de consumo (litros, actividad, costo).</p></td>
<td><p>reading_id (PK), device_id (FK), home_id (FK), date, consumption_liters, consumption_m3 (GENERATED), activity, estimated_cost</p></td>
<td><p>N:1 con device, N:1 con home</p></td>
<td><p>idx_sensor_reading_device_id, idx_sensor_reading_home_id, idx_sensor_reading_date, idx_sensor_reading_activity, idx_sensor_reading_home_date</p></td>
</tr>
<tr>
<td><p>daily_consumption_summary</p></td>
<td><p>Resumen diario de consumo por hogar.</p></td>
<td><p>summary_id (PK), home_id (FK), date (UQ), total_consumption_m3, total_consumption_liters, reading_count, total_cost</p></td>
<td><p>N:1 con home</p></td>
<td><p>idx_daily_consumption_summary_home_date</p></td>
</tr>
<tr>
<td><p>hourly_consumption_history</p></td>
<td><p>Resumen horario de consumo por hogar.</p></td>
<td><p>hourly_history_id (PK), home_id (FK), date, hour, consumption_liters, consumption_m3, reading_count</p></td>
<td><p>N:1 con home</p></td>
<td><p>idx_hourly_consumption_history_home_date_hour</p></td>
</tr>
<tr>
<td><p>monthly_consumption_history</p></td>
<td><p>Resumen mensual de consumo por hogar.</p></td>
<td><p>history_id (PK), home_id (FK), year, month, total_consumption_m3, total_cost</p></td>
<td><p>N:1 con home</p></td>
<td><p>idx_monthly_consumption_history_home_year_month</p></td>
</tr>
<tr>
<td><p>consumption_prediction</p></td>
<td><p>Almacena las predicciones de consumo (modelo predictivo).</p></td>
<td><p>prediction_id (PK), home_id (FK), period_start, period_end, estimated_consumption_m3, estimated_cost, confidence, model_version</p></td>
<td><p>N:1 con home</p></td>
<td><p>idx_consumption_prediction_home_period</p></td>
</tr>
</table>




<p><strong>Dominio 6: Alertas, Tarifas y Control (alert_rate)</strong></p>


<table>
<tr>
<td><p>Nombre</p></td>
<td><p>Función</p></td>
<td><p>Campos Clave</p></td>
<td><p>Relaciones</p></td>
<td><p>Índices</p></td>
</tr>
<tr>
<td><p>threshold_configuration</p></td>
<td><p>Configura los topes de consumo (diario y mensual) por hogar.</p></td>
<td><p>config_id (PK), home_id (UQ/FK), monthly_limit, daily_limit, active, updated_at</p></td>
<td><p>N:1 con home</p></td>
<td><p>idx_threshold_configuration_home</p></td>
</tr>
<tr>
<td><p>alert_rule</p></td>
<td><p>Define las reglas de alerta personalizadas (tipo, umbral, unidad).</p></td>
<td><p>rule_id (PK), home_id (FK), alert_type, threshold, unit, active, created_at</p></td>
<td><p>N:1 con home, 1:N con alert_event</p></td>
<td><p>idx_alert_rule_home_id, idx_alert_rule_type_active</p></td>
</tr>
<tr>
<td><p>alert_event</p></td>
<td><p>Registra los eventos de alerta generados.</p></td>
<td><p>event_id (PK), rule_id (FK), home_id (FK), message, detected_value, generated_at, status, read_at</p></td>
<td><p>N:1 con alert_rule, N:1 con home, 1:N con alert_notification</p></td>
<td><p>idx_alert_event_rule_id, idx_alert_event_home_id, idx_alert_event_status_date, idx_alert_event_generated_at</p></td>
</tr>
<tr>
<td><p>alert_notification</p></td>
<td><p>Registra las notificaciones enviadas por cada evento.</p></td>
<td><p>notification_id (PK), event_id (FK), channel, recipient, sent, sent_at, send_error</p></td>
<td><p>N:1 con alert_event</p></td>
<td><p>idx_alert_notification_event_id, idx_alert_notification_sent</p></td>
</tr>
<tr>
<td><p>home_rate</p></td>
<td><p>Define las tarifas de agua (valor por m³ y cargo fijo) con vigencia.</p></td>
<td><p>rate_id (PK), home_id (FK), tier, m3_value, fixed_charge, valid_from, valid_until</p></td>
<td><p>N:1 con home</p></td>
<td><p>idx_home_rate_home_id, idx_home_rate_vigente, idx_home_rate_tier</p></td>
</tr>
<tr>
<td><p>estratos</p></td>
<td><p>(Si existe) Catálogo de estratos con valores base y subsidios.</p></td>
<td><p>estrato_id (PK), numero_estrato (UQ), valor_base_m3, subsidio_porcentaje, estado</p></td>
<td><p>1:N con home</p></td>
<td><p>idx_estrato_numero</p></td>
</tr>
</table>




<p><strong>Dominio 7: Análisis, Reportes y Metas (analytics)</strong></p>


<table>
<tr>
<td><p>Nombre</p></td>
<td><p>Función</p></td>
<td><p>Campos Clave</p></td>
<td><p>Relaciones</p></td>
<td><p>Índices</p></td>
</tr>
<tr>
<td><p>recommendation_category</p></td>
<td><p>Catálogo de categorías de recomendaciones de ahorro.</p></td>
<td><p>category_id (PK), name (UQ), description, active</p></td>
<td><p>1:N con recommendation</p></td>
<td><p>idx_recommendation_category_name</p></td>
</tr>
<tr>
<td><p>recommendation</p></td>
<td><p>Recomendaciones de ahorro (título, descripción, umbral de activación).</p></td>
<td><p>recommendation_id (PK), title, description, category_id (FK), activation_threshold, threshold_unit, active</p></td>
<td><p>N:1 con recommendation_category, 1:N con user_recommendation</p></td>
<td><p>idx_recommendation_category_id, idx_recommendation_active</p></td>
</tr>
<tr>
<td><p>user_recommendation</p></td>
<td><p>Recomendaciones asignadas a usuarios (estado, utilidad).</p></td>
<td><p>user_recommendation_id (PK), recommendation_id (FK), user_account_id (FK), home_id (FK), status, usefulness, sent_at, read_at</p></td>
<td><p>N:1 con recommendation, N:1 con user_account, N:1 con home</p></td>
<td><p>idx_user_recommendation_user_account_id, idx_user_recommendation_status, idx_user_recommendation_home_id</p></td>
</tr>
<tr>
<td><p>generated_report</p></td>
<td><p>Reportes generados (PDF/Excel) con su estado y ruta de almacenamiento.</p></td>
<td><p>report_id (PK), user_account_id (FK), home_id (FK), type (pdf/excel), category, status, storage_path, size_bytes, created_at, available_until (GENERATED)</p></td>
<td><p>N:1 con user_account, N:1 con home</p></td>
<td><p>idx_generated_report_user_account_id, idx_generated_report_home_id, idx_generated_report_status, idx_generated_report_created_at, idx_generated_report_available_until</p></td>
</tr>
<tr>
<td><p>saving_goal</p></td>
<td><p>Metas de ahorro (consumo objetivo en m³ y presupuesto en COP).</p></td>
<td><p>goal_id (PK), home_id (FK), type (monthly/semanal/anual), target_m3, period_start, period_end, achieved</p></td>
<td><p>N:1 con home</p></td>
<td><p>idx_saving_goal_home_type, idx_saving_goal_period_start</p></td>
</tr>
</table>




<p><strong>Dominio 8: Auditoría y Logs (audit)</strong></p>


<table>
<tr>
<td><p>Nombre</p></td>
<td><p>Función</p></td>
<td><p>Campos Clave</p></td>
<td><p>Relaciones</p></td>
<td><p>Índices</p></td>
</tr>
<tr>
<td><p>audit_log</p></td>
<td><p>Registro de todas las acciones críticas del sistema (INSERT, UPDATE, DELETE, LOGIN, etc.).</p></td>
<td><p>audit_id (PK), user_account_id (FK), action, table_name, record_id, old_value (JSONB), new_value (JSONB), description, source_ip, user_agent, date</p></td>
<td><p>N:1 con user_account</p></td>
<td><p>idx_audit_log_user_account_id, idx_audit_log_date, idx_audit_log_action, idx_audit_log_table_name</p></td>
</tr>
<tr>
<td><p>log_error</p></td>
<td><p>Registro de errores del sistema (stack trace, severidad, módulo).</p></td>
<td><p>log_error_id (PK), user_account_id (FK), module, description, stack_trace, severity, source_ip, date</p></td>
<td><p>N:1 con user_account</p></td>
<td><p>idx_log_error_user_account_id, idx_log_error_severity, idx_log_error_date, idx_log_error_module</p></td>
</tr>
</table>
















<p><strong>Dominio 9: Privacidad y ARCO (privacy)</strong></p>


<table>
<tr>
<td><p>Nombre</p></td>
<td><p>Función</p></td>
<td><p>Campos Clave</p></td>
<td><p>Relaciones</p></td>
<td><p>Índices</p></td>
</tr>
<tr>
<td><p>user_consent</p></td>
<td><p>Consentimientos firmados por el usuario (políticas, términos, marketing).</p></td>
<td><p>consent_id (PK), user_account_id (FK), type, document_version, accepted, date, source_ip</p></td>
<td><p>N:1 con user_account</p></td>
<td><p>idx_user_consent_user_account_id, idx_user_consent_type, idx_user_consent_date, idx_user_consent_accepted_type</p></td>
</tr>
<tr>
<td><p>arco_request</p></td>
<td><p>Solicitudes ARCO (acceso, rectificación, cancelación, oposición, portabilidad).</p></td>
<td><p>request_id (PK), user_account_id (FK), type, description, status, requested_at, deadline_at, answered_at, answer</p></td>
<td><p>N:1 con user_account</p></td>
<td><p>idx_arco_request_user_account_id, idx_arco_request_status, idx_arco_request_deadline_at, idx_arco_request_type, idx_arco_request_requested_at</p></td>
</tr>
</table>




<p><strong>Dominio 10: Soporte Técnico (support) </strong></p>


<table>
<tr>
<td><p>Nombre</p></td>
<td><p>Función</p></td>
<td><p>Campos Clave</p></td>
<td><p>Relaciones</p></td>
<td><p>Índices</p></td>
</tr>
<tr>
<td><p>ticket_category</p></td>
<td><p>Catálogo de categorías de tickets (Dispositivo, Reportes, Tarifas, Detección, Otros).</p></td>
<td><p>category_id (PK), name (UQ), active</p></td>
<td><p>1:N con ticket</p></td>
<td><p>idx_ticket_category_active</p></td>
</tr>
<tr>
<td><p>ticket_priority</p></td>
<td><p>Catálogo de prioridades (Baja, Media, Alta).</p></td>
<td><p>priority_id (PK), name (UQ), level (UQ)</p></td>
<td><p>1:N con ticket</p></td>
<td><p>-</p></td>
</tr>
<tr>
<td><p>ticket_status</p></td>
<td><p>Catálogo de estados (Abierto, En Proceso, Resuelto, Cerrado).</p></td>
<td><p>status_id (PK), name (UQ)</p></td>
<td><p>1:N con ticket</p></td>
<td><p>-</p></td>
</tr>
<tr>
<td><p>ticket</p></td>
<td><p>Tickets de soporte creados por los usuarios.</p></td>
<td><p>ticket_id (PK), user_account_id (FK), category_id (FK), priority_id (FK), status_id (FK), title, description, created_at, updated_at, resolved_at, closed_at</p></td>
<td><p>N:1 con user_account, N:1 con ticket_category, N:1 con ticket_priority, N:1 con ticket_status, 1:N con ticket_response</p></td>
<td><p>idx_ticket_user_account_id, idx_ticket_status_id, idx_ticket_created_at</p></td>
</tr>
<tr>
<td><p>ticket_response</p></td>
<td><p>Respuestas asociadas a cada ticket.</p></td>
<td><p>response_id (PK), ticket_id (FK), user_account_id (FK), message, created_at</p></td>
<td><p>N:1 con ticket, N:1 con user_account</p></td>
<td><p>idx_ticket_response_ticket_id</p></td>
</tr>
</table>
