# Documentación técnica de HidroSmart

Esta sección reúne la documentación técnica vigente de `PT_HS`, organizada por tema y no por la estructura interna del código.

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
- Los archivos `00_` son índices o puntos de entrada.
- Se conservaron los documentos originales; solo se corrigieron nombres de ubicación y enlaces relativos para que la copia sea navegable.
- Los documentos académicos, diagramas y anexos continúan en las carpetas `01` a `07` del repositorio.

## Orden de precedencia

Cuando exista una diferencia entre una guía y el sistema implementado, prevalecen las migraciones, el código y las pruebas ejecutables. Esta carpeta es una referencia documental sincronizada desde `PT_HS`; al cambiar el proyecto, actualiza también la guía correspondiente.
