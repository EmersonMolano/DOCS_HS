# Vistas y vistas materializadas

`05-VISTAS.txt` contiene consultas del modelo antiguo. No lo uses como contrato de consulta vigente.

Las migraciones Liquibase actuales crean cinco vistas materializadas:

- `consumption.mv_home_monthly_consumption`: agregados mensuales por hogar.
- `consumption.mv_hourly_consumption_avg`: agregación por hora y hogar.
- `alert_rate.mv_pending_alerts`: alertas pendientes.
- `device.mv_active_devices`: dispositivos activos por hogar.
- `analytics_support.mv_recommendation_summary`: resumen de recomendaciones.

La definición y evolución están en `BD_HS/01_ddl/05_materialized_views`; varios cambios posteriores ajustan proyecciones e índices. La consulta autorizada desde la aplicación puede pasar por funciones `SECURITY DEFINER`; no expongas la vista directamente sin revisar DCL/RLS.
