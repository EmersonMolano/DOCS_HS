# Scripts SQL de referencia

Los `.txt` de esta carpeta son copias históricas de un diseño anterior (varios empiezan con `Hidro Smart v3` y usan nombres de tablas distintos). **No son scripts vigentes ni deben ejecutarse** sobre una base de datos actual. La implementación válida está en las migraciones Liquibase del repositorio `BD_HS`, rama local `hu-23-dev`, revisada el 2026-11-03. Esta revisión de archivos no demuestra qué changesets están aplicados en Neon; para eso se consulta `liquibase status --verbose`.

Los archivos de `script/NO/` son referencias históricas y se dejan sin cambios. Las guías Markdown de esta carpeta describen el equivalente vigente y remiten a la capa correspondiente; no duplican SQL ejecutable.

| Referencia `.txt` | Guía actual | Fuente ejecutable en BD_HS |
| --- | --- | --- |
| [01-TABLAS.txt](01-TABLAS.txt) | [01-tablas.md](01-tablas.md) | `01_ddl/03_tables`, `01_ddl/04_alter` |
| [02-INSERTS.txt](02-INSERTS.txt) | [02-inserts.md](02-inserts.md) | `02_dml/00_inserts`, `02_dml/03_upserts`, `02_dml/04_patches` |
| [03-ROLES DE ACCESO.txt](03-ROLES%20DE%20ACCESO.txt) | [03-roles-de-acceso.md](03-roles-de-acceso.md) | `03_dcl/00_roles`, `03_dcl/01_grants`, `03_dcl/02_policies` |
| [04-TRIGGERS.txt](04-TRIGGERS.txt) | [04-triggers.md](04-triggers.md) | `01_ddl/08_triggers`, `01_ddl/07_procedures` |
| [05-VISTAS.txt](05-VISTAS.txt) | [05-vistas.md](05-vistas.md) | `01_ddl/05_materialized_views` |
| [06-FUNCIONES.txt](06-FUNCIONES.txt) | [06-funciones.md](06-funciones.md) | `01_ddl/06_functions` |

Las guías de detalle están en [documentación técnica de base de datos](../../08_Documentacion_Tecnica_Actualizada/03_Base_de_Datos/README.md), y el inventario físico reconciliado en [diccionario implementado](../../08_Documentacion_Tecnica_Actualizada/03_Base_de_Datos/09_diccionario-implementado.md).


## Transcripciones Markdown de las fuentes

Las siguientes copias contienen el texto de los archivos fuente, con una etiqueta explícita de referencia. Los nombres terminados en `_fuente` evitan conflictos con las guías explicativas que ya existían (Windows no distingue nombres que solo cambian por mayúsculas/minúsculas).

| Fuente | Copia de texto en Markdown |
|---|---|
| [01-TABLAS.txt](01-TABLAS.txt) | [01-TABLAS_fuente.md](<01-TABLAS_fuente.md>) |
| [02-INSERTS.txt](02-INSERTS.txt) | [02-INSERTS_fuente.md](<02-INSERTS_fuente.md>) |
| [03-ROLES DE ACCESO.txt](03-ROLES%20DE%20ACCESO.txt) | [03-ROLES DE ACCESO_fuente.md](<03-ROLES DE ACCESO_fuente.md>) |
| [04-TRIGGERS.txt](04-TRIGGERS.txt) | [04-TRIGGERS_fuente.md](<04-TRIGGERS_fuente.md>) |
| [05-VISTAS.txt](05-VISTAS.txt) | [05-VISTAS_fuente.md](<05-VISTAS_fuente.md>) |
| [06-FUNCIONES.txt](06-FUNCIONES.txt) | [06-FUNCIONES_fuente.md](<06-FUNCIONES_fuente.md>) |

Las transcripciones históricas de `script/NO/` están etiquetadas como archivo y no deben ejecutarse: [SCRIPT (TXT).md](<NO/SCRIPT (TXT).md>), [Script completo.md](<NO/Script completo.md>) y [Script (SQL).md](<NO/Script (SQL).md>). En `Script (SQL).md` se sustituyeron dos literales de contraseña; no se alter? el SQL original.
