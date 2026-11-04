> **Nota de conversión y vigencia.** Este archivo conserva el contenido de su documento fuente convertido a Markdown. Las afirmaciones de diseño, alcance, roles, tecnologías y fechas pertenecen a esa fuente y no prueban el estado implementado. Para el corte técnico 2026-11-03 consulta la [documentación técnica vigente](../08_Documentacion_Tecnica_Actualizada/README.md) y el [resumen de fuentes y ramas](../08_Documentacion_Tecnica_Actualizada/01_Resumen_y_Arquitectura/00_Resumen_del_Sistema.md).

# Diccionario y modelo de datos HidroSmart

## Fuente vigente

El esquema vigente se documenta a partir de changesets Liquibase del repositorio BD_HS. Esta copia corresponde a la rama local hu-23-dev, revisada el 2026-11-03. Es un inventario estático de archivos; no consulta Neon ni demuestra qué migraciones se han aplicado remotamente.

- [Diccionario físico generado desde DDL](../08_Documentacion_Tecnica_Actualizada/03_Base_de_Datos/09_diccionario-implementado.md)
- [Modelo entidad-relación](../08_Documentacion_Tecnica_Actualizada/03_Base_de_Datos/06_modelo-entidad-relacion.md)
- [Guía DDL](../08_Documentacion_Tecnica_Actualizada/03_Base_de_Datos/01_ddl.md)
- [Seguridad, roles y RLS](../08_Documentacion_Tecnica_Actualizada/03_Base_de_Datos/07_rls-y-seguridad.md)

## Dominios de datos observados

| Esquema | Dominio |
|---|---|
| user_account | Cuentas, credenciales, sesiones, tokens, roles y permisos |
| preference | Idioma, moneda, tema y preferencias |
| home | Hogares, miembros, solicitudes, metas y vacaciones |
| device | Dispositivos, asociaciones, historial y actuadores |
| consumption | Lecturas, resúmenes y predicciones de consumo |
| alert_rate | Reglas, eventos, umbrales y tarifas |
| analytics_support | Recomendaciones, reportes y tickets |
| audit | Auditoría y errores |
| privacy | Consentimientos y solicitudes ARCO |

El inventario actual describe 56 tablas en nueve esquemas.

## Reconciliación con la fuente

El DOCX fuente contiene nombres de tablas, columnas y claves de una versión anterior. Se conserva como antecedente; no se debe usar para generar SQL ni inferir el esquema actual. Columnas, restricciones, índices, cardinalidades y acciones ON DELETE se verifican en los cambios Liquibase correspondientes.

Los códigos de dispositivos difieren por rama: BD_HS hu-23-dev contiene tres códigos lógicos en el upsert; PT_HS hu-19-dev documenta cuatro en el firmware integrado. El número sembrado por SQL no demuestra cuántas placas están vinculadas o conectadas.
