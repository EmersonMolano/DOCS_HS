# Backend HidroSmart

API REST construida con Node.js y Express. Coordina autenticación, hogares,
dispositivos, consumo, MQTT, reportes y comunicación con PostgreSQL.

## Ejecución

La forma recomendada es levantar la pila desde la raíz del repositorio; consulta
[../docs/operacion-local.md](../02_Operacion_y_Despliegue/02_operacion-local.md).

Para ejecutar solo el backend se necesita PostgreSQL y Mosquitto accesibles
desde Windows y un archivo `BK_HS/.env` basado en `.env.example`:

```powershell
Set-Location BK_HS
npm.cmd install
npm.cmd run check
npm.cmd test
npm.cmd run dev
```

La API local escucha en `http://localhost:3000` y expone salud en `/health`.

## Scripts

| Comando | Uso |
| --- | --- |
| `npm run dev` | Ejecuta la API con recarga por cambios. |
| `npm run check` | Revisión estática de JavaScript. |
| `npm test` | Pruebas unitarias. |
| `npm run seed:integration` | Crea usuarios de prueba para integración. |
| `npm run test:integration` | Ejecuta pruebas con PostgreSQL y MQTT. |
| `npm run simulate:iot` | Simula vínculo, telemetría y desvinculación contra recursos de prueba. |

## Documentación

- [Arquitectura y operación del backend](00_Indice.md)
- [Resumen de API](api.md)
- [Arquitectura general](../01_Resumen_y_Arquitectura/01_arquitectura.md)
- [Flujo IoT](../06_IoT_y_Firmware/01_iot.md)

