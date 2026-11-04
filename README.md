# DOCS_HS — HidroSmart

Repositorio documental del proyecto HidroSmart. Las carpetas están numeradas para mantener un orden estable y separar documentación base, artefactos de diseño, evidencias y guías técnicas vigentes.

## Por dónde empezar

- Si necesitas una visión completa del proyecto, empieza en `01_Documentacion_del_Proyecto`.
- Si buscas requisitos y sus versiones, revisa `07_Requisitos_SRS`.
- Si vas a trabajar con la implementación actual, usa el [índice de documentación técnica](08_Documentacion_Tecnica_Actualizada/README.md).
- Si buscas modelos, diagramas o prototipos, consulta `02_Base_de_Datos`, `03_Diagramas` y `06_Prototipos`.
- Si necesitas soportes del proceso, informes o anexos, consulta `04_Informes` y `05_Anexos`.

## Estructura

| Carpeta | Contenido |
| --- | --- |
| `01_Documentacion_del_Proyecto` | Documentos principales del proyecto: cobertura, análisis, propuesta, diseño, manuales, operación, pruebas y artículo. |
| `02_Base_de_Datos` | Diccionario de datos, modelos entidad-relación, diagramas de clases y scripts SQL. |
| `03_Diagramas` | Diagramas de casos de uso, actividades, secuencia, componentes, despliegue, dominio y estados. |
| `04_Informes` | Informes técnicos y propuesta técnica-económica; conserva las versiones anteriores en sus subcarpetas. |
| `05_Anexos` | Actas, anteproyecto, entrevistas, cuestionarios, cronograma, licenciamiento, talleres y otros soportes. |
| `06_Prototipos` | Wireframes, flujos de usuario y material de arquitectura de información. |
| `07_Requisitos_SRS` | Versiones fuente y anteriores de la especificación de requisitos. |
| `08_Documentacion_Tecnica_Actualizada` | Guías técnicas vigentes organizadas por tarea: arquitectura, operación, base de datos, backend/API, frontend/móvil, IoT, pruebas y estado. |

## Criterio de organización

Se conservaron los nombres y contenidos de los archivos existentes. Las subcarpetas `ANTIGUO`, `antiguo` y `NO` se mantienen dentro de su tema original para distinguir versiones previas y materiales apartados sin perder su contexto.

La documentación técnica incorporada desde `PT_HS` está reorganizada por tema dentro de `08_Documentacion_Tecnica_Actualizada`; los enlaces internos fueron actualizados y los documentos académicos existentes no se movieron.

## Regla de mantenimiento

Los documentos numerados del `01` al `07` conservan el material académico, histórico y de soporte del proyecto. La carpeta `08` es la referencia técnica operativa: cuando cambie la implementación, actualiza allí la guía correspondiente y conserva las versiones anteriores en su ubicación histórica cuando sea necesario.


## Corte técnico consultado

La revisión documental local del 2026-11-03 usa PT_HS/hu-19-dev como integración y contrasta las copias separadas BD_HS/hu-23-dev, BK_HS/hu-15-dev, FT_HS/hu-16-staging y Firmaware_HS/hu-03-dev. No están sincronizadas entre sí; cada guía identifica qué rama describe. El detalle está en [Resumen del sistema](08_Documentacion_Tecnica_Actualizada/01_Resumen_y_Arquitectura/00_Resumen_del_Sistema.md).

Los documentos académicos y diagramas dentro de NO/antiguo se conservan como referencia. La documentación técnica de la carpeta 08 es la guía operativa y debe actualizarse con el código y las migraciones de la rama correspondiente.
