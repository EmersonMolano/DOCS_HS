# Triggers y procedimientos actuales

`04-TRIGGERS.txt` describe otra versión del modelo y no debe ejecutarse. En `BD_HS/01_ddl` las responsabilidades vigentes se separan:

- `08_triggers`: 11 migraciones externas crean o reemplazan triggers de auditoría, actualización de `updated_at`, invariantes de Owner, estado de dispositivo y efectos posteriores a lecturas/alertas.
- `07_procedures`: procedimientos para actualizar materialized views, generar resumen diario, limpiar logs de auditoría y archivar tickets cerrados.
- `06_functions`: guarda las funciones manejadoras llamadas por los triggers y otros flujos SQL.

Un trigger solo corre en respuesta a la tabla/evento definido en su SQL. No se debe asumir que una rutina de mantenimiento se ejecuta en horario automático; los jobs corresponden al backend/operación y requieren evidencia propia. Revisa `0000changelog.yaml` para la versión final de cada objeto.
