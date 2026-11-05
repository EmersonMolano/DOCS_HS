# HidroSmart: resumen del sistema

Corte de revisión local: **2026-11-03**. Este documento describe los checkouts disponibles en esta fecha; no certifica que los servicios remotos estén desplegados, activos o sincronizados.

HidroSmart reúne clientes web y móvil, API, PostgreSQL, broker MQTT y firmware ESP32 para consultar el consumo de agua por hogar, administrar dispositivos y procesar alertas.

## Fuentes revisadas

| Copia local | Rama / revisión | Qué representa |
| --- | --- | --- |
| PT_HS | hu-19-dev · 73fc47c | Monorepo integrado revisado para arquitectura y comportamiento. |
| BD_HS | hu-23-dev · 7095168 | Migraciones Liquibase y datos de referencia. |
| BK_HS | hu-15-dev · 9db5040 | Backend separado. |
| FT_HS | hu-16-staging · 18d26e3 | Frontend separado. |
| Firmaware_HS | hu-03-dev · 5ec5013 | Firmware separado. |
| DOCS_HS | main · eab6c78 | Base consultada antes de esta sincronización documental. |

Las ramas separadas y el monorepo **no están en una única revisión coordinada**. El repositorio PT_HS contiene la integración más reciente revisada; los repositorios separados tienen ramas y contenidos distintos. Usa las guías de cada componente para conocer su alcance; no asumas que un cambio del monorepo ya llegó a los repositorios separados.

## Componentes de la copia integrada

| Componente | Ubicación en PT_HS | Responsabilidad documentada |
| --- | --- | --- |
| Web | FT_HS/Web | Cliente React/Vite servido como sitio web. |
| Móvil y frontend usado por Docker | FT_HS/frontend | Cliente Expo/React Native y recursos web usados por la pila local. Las funciones BLE requieren una compilación nativa compatible. |
| Backend | BK_HS | API Express, sesión y CSRF, permisos, reglas de negocio y cliente MQTT. |
| Base de datos | BD_HS | PostgreSQL y migraciones Liquibase; roles, funciones y RLS. |
| Firmware | firmware | ESP32, sensor de caudal, BLE, Wi-Fi, MQTT y lógica de medición. |
| Entorno local | docker-compose.yml | Servicios de desarrollo, incluido Mosquitto local. |

## Dónde se ejecuta cada integración

- El frontend publicado se documenta en Cloudflare Pages; la API en Render; PostgreSQL administrado en Neon.
- La rama integrada documenta Flespi en mqtt.flespi.io:8883 con TLS para MQTT de producción. Las credenciales se guardan en variables del entorno y ACL, nunca en esta guía.
- Mosquitto y PostgreSQL de Docker son opciones para desarrollo local; Mosquitto local no equivale al broker Flespi.
- Brevo envía correo transaccional por HTTPS desde el backend.
- BLE se usa para aprovisionamiento local. El flujo normal de telemetría utiliza Wi-Fi y MQTT.

Estos nombres de servicio describen la configuración documentada en código y guías. No demuestran disponibilidad, credenciales vigentes, configuración actual del proveedor ni una prueba física reciente.

## Reglas de identidad y medición

- El deviceCode es la identidad lógica que se registra/vincula en el sistema.
- El hardwareId identifica la placa ESP32. No sustituye el deviceCode ni demuestra que exista una asociación activa.
- La copia integrada PT_HS/hu-19-dev contiene cuatro códigos reconocidos por su firmware y SQL; la copia separada BD_HS/hu-23-dev reserva tres. El firmware integrado suscribe comandos para los códigos reconocidos, pero publica cada lectura bajo un solo deviceCode activo. No son cuatro lecturas independientes ni cuatro sensores físicos. Alinear las ramas y comprobar las asociaciones reales antes de describirlas como una sola versión; los códigos sembrados en SQL no demuestran conexión.
- El modo de vigilancia de fuga con **measurementEnabled=false** no apaga el ESP32, el sensor, el Wi-Fi ni MQTT: congela el volumen contabilizado y conserva el caudal/los pulsos para evaluar reglas.
- Desvincular elimina la relación con el hogar y solicita volver a BLE; no necesariamente borra las credenciales Wi-Fi guardadas.

## Ejecución local

Ejecuta las instrucciones desde la raíz del checkout **PT_HS**, no desde DOCS_HS. Los requisitos, archivo de entorno y comandos actualizados están en [Operación local](../02_Operacion_y_Despliegue/02_operacion-local.md) y en el README del checkout PT_HS integrado, que está fuera de este repositorio DOCS_HS.

## Referencias

- [Arquitectura y flujos](01_arquitectura.md)
- [Producto y alcance](02_producto.md)
- [Índice de guías](03_Indice_Guias_Generales_PT_HS.md)
- [Estado técnico de los repositorios](../08_Estado_y_Mantenimiento/01_estado-actual.md)
- [Documentación de la base de datos](../03_Base_de_Datos/00_Indice.md)
