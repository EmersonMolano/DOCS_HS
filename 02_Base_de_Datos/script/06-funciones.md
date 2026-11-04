# Funciones SQL actuales

`06-FUNCIONES.txt` pertenece a un diseño anterior y no es un catálogo confiable de funciones actuales. El código ejecutable versionado está en `BD_HS/01_ddl/06_functions` y `BD_HS/03_dcl/01_grants`.

Las migraciones agrupan funciones por autenticación y sesiones, contexto de autorización, hogares, membresías, dispositivos, ingesta MQTT, consumo, alertas, tarifas, auditoría, reportes y soporte. Una misma función puede redefinirse en cambios posteriores; la versión vigente se obtiene aplicando los changesets en su orden, no escogiendo el archivo de nombre más conveniente.

Cambios recientes de la rama revisada:

- `064_fn_home_creation_default_alerts.sql`: límites editables iniciales al crear un hogar.
- `065_fn_record_device_measurement_state.sql`: persiste la confirmación de medición y descarta eventos obsoletos.
- `066_fn_leak_watch_measurement_paused.sql`: mantiene la detección basada en caudal/pulsos mientras se pausa la contabilización.
- `067_fn_default_leak_detection_rule.sql`: regla activa de fuga de 30 minutos para hogares existentes y nuevos.

La función de estado de medición se concede al rol app mediante `03_dcl/01_grants/056_device_measurement_state.sql`. Las firmas, permisos y cuerpos completos están en los SQL y changelogs de `BD_HS`; no se copian aquí para evitar mantener una segunda versión ejecutable.
