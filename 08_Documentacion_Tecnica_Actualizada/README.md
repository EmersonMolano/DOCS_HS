# Documentación técnica de HidroSmart

Esta sección agrupa guías por componente y tarea. El corte de revisión actual
se encuentra en [Resumen del sistema](01_Resumen_y_Arquitectura/00_Resumen_del_Sistema.md)
y [Estado actual](08_Estado_y_Mantenimiento/01_estado-actual.md).

## Ruta recomendada

| Necesidad | Ir a |
| --- | --- |
| Entender el sistema | [Resumen y arquitectura](01_Resumen_y_Arquitectura/README.md) |
| Instalar, levantar o desplegar | [Operación y despliegue](02_Operacion_y_Despliegue/README.md) |
| Consultar datos y migraciones | [Base de datos](03_Base_de_Datos/README.md) |
| Integrar o revisar la API | [Backend y API](04_Backend_y_API/README.md) |
| Trabajar en la interfaz web o móvil | [Frontend y móvil](05_Frontend_y_Movil/README.md) |
| Configurar ESP32, BLE o MQTT | [IoT y firmware](06_IoT_y_Firmware/README.md) |
| Ejecutar validaciones o revisar seguridad | [Pruebas, seguridad y calidad](07_Pruebas_Seguridad_y_Calidad/README.md) |
| Conocer el estado y lo pendiente | [Estado y mantenimiento](08_Estado_y_Mantenimiento/README.md) |
| Consultar atribuciones | [Referencias y atribuciones](09_Referencias_y_Atribuciones/README.md) |

## Criterio de organización

- Los documentos se agrupan por tarea y componente.
- Los archivos 00_ son índices o puntos de entrada.
- Los documentos académicos, diagramas y anexos permanecen en las carpetas 01 a 07.
- La carpeta 08 contiene guías operativas y notas con fecha; los documentos
  fechados no deben leerse como estado actual sin comprobar la fecha y la rama.

## Orden de precedencia

Cuando una guía y el sistema difieren, prevalecen el código, las migraciones y
las pruebas de la rama que se está evaluando. Los checkouts del monorepo y de
los repositorios separados no están coordinados automáticamente; cada documento
debe indicar qué copia describe. Las pruebas fechadas son evidencia histórica,
no garantía de que pasen en el HEAD actual.
