# Datos iniciales y actualizaciones

`02-INSERTS.txt` combina datos de prueba y un modelo anterior. No representa el contenido que se carga actualmente.

La fuente vigente está en `BD_HS/02_dml`:

- `00_inserts`: roles funcionales, catálogos de idioma/moneda/tema, estratos, categorías/estados de soporte, política de contraseña, permisos RBAC y referencias de facturación.
- `01_updates` y `02_deletes`: tienen changelogs, pero al corte revisado no registran scripts activos.
- `03_upserts`: reserva tres códigos lógicos ESP32 (`HS-7A3F91C8D2E4`, `HS-B6E04D79A153`, `HS-2C8A5F01E7B9`) con `PENDING` y sin hogar.
- `04_patches`: contiene seis correcciones históricas de auditoría y permisos.

Liquibase impide repetir changesets ya registrados, pero los SQL no son necesariamente idempotentes si se copian y ejecutan manualmente. Consulta la [guía DML](../../08_Documentacion_Tecnica_Actualizada/03_Base_de_Datos/02_dml.md).
