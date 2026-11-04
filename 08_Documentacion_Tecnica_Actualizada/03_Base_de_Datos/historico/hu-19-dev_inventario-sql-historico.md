# Inventario de SQL histórico y no referenciado

## Alcance

Este inventario corresponde a la rama `hu-19-dev`. Se obtuvo comparando los
archivos SQL rastreados bajo `BD_HS` con las rutas `sqlFile.path` de los
changelogs rastreados.

La identidad de un changeset Liquibase depende de su `id`, `author` y ruta del
changelog. No se deben renumerar, renombrar ni reubicar changesets que pudieron
haberse aplicado. Para cambiar su comportamiento, crea un changeset nuevo y
verifica primero `DATABASECHANGELOG` en cada base de datos destino.

## Resumen

- SQL de migración fuera de `05_rollbacks`: 277 archivos; 266 están referenciados
  por changelogs y 11 no están referenciados.
- SQL de rollback: 217 archivos; 212 están referenciados desde changelogs y 5
  no están referenciados.
- No se encontraron rutas SQL declaradas en changelogs que apunten a archivos
  inexistentes.

Los archivos listados abajo se clasifican como **históricos/no referenciados por
el changelog actual**. Se conservan en su ubicación. Esta clasificación no
confirma si alguien ejecutó el SQL manualmente o si una base antigua lo registró
con otro changelog; no los ejecutes ni los borres sin revisar el historial de la
base destino.

## SQL de migración no referenciado

- `01_ddl/04_alter/022_email_verification.sql`
- `01_ddl/04_alter/023_profile_avatar.sql`
- `01_ddl/04_alter/024_profile_phone_max_60.sql`
- `01_ddl/06_functions/041_fn_get_password_reset_email.sql`
- `01_ddl/06_functions/042_fix_authorization_context_order.sql`
- `01_ddl/06_functions/043_email_verification.sql`
- `01_ddl/06_functions/044_register_pending_email_verification.sql`
- `01_ddl/08_triggers/004_trg_after_alert_insert.sql`
- `01_ddl/08_triggers/005_trg_after_reading_update_mv.sql`
- `03_dcl/01_grants/034_password_reset_context.sql`
- `03_dcl/01_grants/035_email_verification.sql`

## SQL de rollback no referenciado

- `05_rollbacks/01_ddl/04_alter/031_home_usage_and_billing_reference.rollback.sql`
- `05_rollbacks/01_ddl/06_functions/033_fn_generate_alert_events.rollback.sql`
- `05_rollbacks/01_ddl/06_functions/057_fn_billing_cost_logic.rollback.sql`
- `05_rollbacks/02_dml/00_inserts/012_home_billing_reference_excess_fix.rollback.sql`
- `05_rollbacks/03_dcl/01_grants/050_home_billing_references.rollback.sql`

## Bundle móvil generado

`FT_HS/frontend/src/mobile/webBundle.js` no está rastreado en `hu-19-dev` ni en
`origin/hu-19-dev`; la regla `src/mobile/webBundle.js` de
`FT_HS/frontend/.gitignore` lo excluye. `mobile:prepare` lo genera localmente
para empaquetar la aplicación. No se debe agregar al repositorio como fuente.
