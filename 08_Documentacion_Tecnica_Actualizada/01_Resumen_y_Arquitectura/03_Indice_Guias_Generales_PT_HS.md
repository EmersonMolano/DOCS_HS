# Documentación de HidroSmart

Esta carpeta contiene únicamente la documentación operativa vigente. Los
documentos históricos, auditorías con fecha y bitácoras antiguas se retiraron
para evitar que compitan con el código actual; el historial permanece en Git.

## Guías generales

| Documento | Uso |
| --- | --- |
| [Arquitectura](01_arquitectura.md) | Componentes, límites y flujos de datos. |
| [Instalación de dependencias](../02_Operacion_y_Despliegue/01_instalacion-dependencias.md) | Qué descargar en Windows y cómo preparar web, ESP32 y Android. |
| [Operación local](../02_Operacion_y_Despliegue/02_operacion-local.md) | Levantar, detener y diagnosticar la pila Docker. |
| [IoT](../06_IoT_y_Firmware/01_iot.md) | Vinculación, BLE, Wi-Fi, MQTT y pruebas físicas del ESP32. |
| [Válvula de 12 V](../06_IoT_y_Firmware/04_electrovalvula-esp32.md) | Integración eléctrica segura y límites actuales del control físico. |
| [Seguridad](../07_Pruebas_Seguridad_y_Calidad/03_seguridad.md) | Sesión, CSRF, secretos y límites del entorno local. |
| [Pruebas](../07_Pruebas_Seguridad_y_Calidad/01_pruebas.md) | Calidad, integración, roles, simulación IoT y móvil. |
| [Respaldo PostgreSQL](../02_Operacion_y_Despliegue/04_respaldo-postgresql.md) | Backup, restauración y verificación. |
| [Estado actual](../08_Estado_y_Mantenimiento/01_estado-actual.md) | Capacidades verificadas y trabajo pendiente. |
| [Diagnóstico de autenticación y despliegue (20 oct 2026)](../02_Operacion_y_Despliegue/05_diagnostico-estabilizacion-despliegue-2026-10-20.md) | Evidencia de CORS/CSRF, pruebas locales, bloqueo de Pages y siguientes pasos. |
| [Documentación pendiente](../08_Estado_y_Mantenimiento/02_pendientes-documentacion.md) | Evidencias y guías que faltan antes de producción. |
| [HU-16: alertas, web, MQTT y despliegue](../08_Estado_y_Mantenimiento/03_hu-16-alertas-web-mqtt-despliegue.md) | Cambios incluidos, migraciones, variables seguras, Cloudflare Pages y comprobaciones. |

## Guías IoT complementarias

- [Guía operativa de dispositivos](../06_IoT_y_Firmware/02_dispositivos-iot.md): identidad, vinculación, traslado entre hogares y desvinculación.
- [Host MQTT del ESP32](../06_IoT_y_Firmware/03_mqtt-esp32-red-local.md): `.env`, DNS local y comprobación del broker.

## Documentación por componente

- [Base de datos](../03_Base_de_Datos/00_Indice.md)
- [Backend](../04_Backend_y_API/00_Indice.md)
- [Frontend y móvil](../05_Frontend_y_Movil/00_Indice.md)
- [Firmware ESP32](../06_IoT_y_Firmware/05_Manual_Firmware_ESP32.md)

## Regla de mantenimiento

Si una guía contradice el proyecto, prevalece en este orden: migraciones y
código, pruebas ejecutables, archivos `.env.example` y, por último, esta
documentación. Toda modificación funcional debe ajustar el documento de su
componente y eliminar instrucciones que dejen de aplicar.

