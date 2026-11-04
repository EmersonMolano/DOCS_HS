# Tablas vigentes

`01-TABLAS.txt` es una copia heredada de `Hidro Smart v3`: declara otro modelo, incluye instrucciones destructivas de limpieza y no coincide con el esquema vigente. No lo ejecutes ni tomes sus nombres como contrato de la API.

La estructura actual proviene de `BD_HS/01_ddl/03_tables` y de alteraciones posteriores en `BD_HS/01_ddl/04_alter`. El inventario de 56 tablas, sus PK y referencias está en el [diccionario físico vigente](../../08_Documentacion_Tecnica_Actualizada/03_Base_de_Datos/09_diccionario-implementado.md). Las columnas y restricciones finales requieren seguir todos los changesets en orden.

| Dominio | Esquema |
| --- | --- |
| Cuentas y permisos | `user_account` |
| Preferencias | `preference` |
| Hogares | `home` |
| Equipos IoT y actuadores | `device` |
| Lecturas y agregados | `consumption` |
| Alertas y tarifas | `alert_rate` |
| Reportes, recomendaciones y soporte | `analytics_support` |
| Auditoría | `audit` |
| Privacidad | `privacy` |

La instalación normal la controla Liquibase desde `BD_HS/changelog-master.yaml`; no ejecutes todos los archivos SQL de las migraciones manualmente.
