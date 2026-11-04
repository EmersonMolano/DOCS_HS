# Roles y políticas actuales

`03-ROLES DE ACCESO.txt` es una guía heredada y no debe aplicarse. El control vigente se declara en `BD_HS/03_dcl`:

- `00_roles`: roles de conexión `hidro_smart_app`, `hidro_smart_ingest` y `hidro_smart_readonly` con privilegios técnicos acotados.
- `01_grants`: permisos mínimos, funciones expuestas y revocaciones.
- `02_policies`: RLS para tablas de dominio, hogares, ingesta, tickets, privacidad y actuadores.

Los roles globales de aplicación (Administrator, HomeUser y Guest) se almacenan aparte en `user_account.role`; no son roles de conexión de PostgreSQL ni equivalen a Owner/Member/Guest de membresía de hogar. La [guía DCL](../../08_Documentacion_Tecnica_Actualizada/03_Base_de_Datos/03_dcl.md) documenta el orden y el changeset de medición reciente.
