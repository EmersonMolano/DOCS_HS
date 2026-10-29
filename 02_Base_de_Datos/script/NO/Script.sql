-- Verificar si la base de datos existe y eliminarla
DROP DATABASE IF EXISTS hidro_smart;

-- Crear la base de datos
CREATE DATABASE hidro_smart
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'es_CO.UTF-8'
    LC_CTYPE = 'es_CO.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE = template0;

-- Comentario de la base de datos
COMMENT ON DATABASE hidro_smart 
    IS 'Base de datos del sistema Hidro Smart - Monitoreo inteligente de consumo de agua en hogares';

-- Conectar a la base de datos recién creada
\c hidro_smart;

-- CONFIGURACIÓN DE EXTENSIONES
-- Habilitar extensión para generar UUIDs
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Habilitar extensión para funciones criptográficas
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- Habilitar extensión para búsqueda de texto completo en español
CREATE EXTENSION IF NOT EXISTS "unaccent";

-- CREACIÓN DE ESQUEMAS
-- Esquema para tablas principales del sistema
CREATE SCHEMA IF NOT EXISTS hidro_smart;

-- Esquema para funciones y procedimientos almacenados
CREATE SCHEMA IF NOT EXISTS funciones;

-- Esquema para vistas del sistema
CREATE SCHEMA IF NOT EXISTS vistas;

-- Esquema para auditoría y logs
CREATE SCHEMA IF NOT EXISTS auditoria;

-- Establecer el search_path por defecto
ALTER DATABASE hidro_smart SET search_path TO hidro_smart, public;

-- Comentarios en esquemas
COMMENT ON SCHEMA hidro_smart IS 'Esquema principal con todas las tablas del sistema';
COMMENT ON SCHEMA funciones IS 'Funciones y procedimientos almacenados';
COMMENT ON SCHEMA vistas IS 'Vistas del sistema para consultas optimizadas';
COMMENT ON SCHEMA auditoria IS 'Tablas y funciones para auditoría del sistema';

-- CONFIGURACIÓN DE ROLES Y PERMISOS
-- Crear rol para la aplicación (usuario de conexión)
DROP ROLE IF EXISTS hidro_smart_app;
CREATE ROLE hidro_smart_app WITH
    LOGIN
    PASSWORD 'HidroSmart2025!Secure'
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    NOINHERIT
    NOREPLICATION
    CONNECTION LIMIT 50;

COMMENT ON ROLE hidro_smart_app IS 'Usuario de aplicación para Hidro Smart';

-- Crear rol de solo lectura (para reportes)
DROP ROLE IF EXISTS hidro_smart_readonly;
CREATE ROLE hidro_smart_readonly WITH
    LOGIN
    PASSWORD 'HidroSmartRead2025!'
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    NOINHERIT
    NOREPLICATION
    CONNECTION LIMIT 10;

COMMENT ON ROLE hidro_smart_readonly IS 'Usuario de solo lectura para reportes y consultas';

-- OTORGAR PERMISOS INICIALES
-- Permisos para el usuario de aplicación
GRANT CONNECT ON DATABASE hidro_smart TO hidro_smart_app;
GRANT USAGE ON SCHEMA hidro_smart TO hidro_smart_app;
GRANT USAGE ON SCHEMA funciones TO hidro_smart_app;
GRANT USAGE ON SCHEMA vistas TO hidro_smart_app;
GRANT USAGE ON SCHEMA auditoria TO hidro_smart_app;

-- Permisos para usuario de solo lectura
GRANT CONNECT ON DATABASE hidro_smart TO hidro_smart_readonly;
GRANT USAGE ON SCHEMA hidro_smart TO hidro_smart_readonly;
GRANT USAGE ON SCHEMA vistas TO hidro_smart_readonly;

-- ELIMINACIÓN DE TABLAS
-- Eliminar tablas si existen (para desarrollo)
DROP TABLE IF EXISTS hidro_smart.auditorias CASCADE;
DROP TABLE IF EXISTS alertas CASCADE;
DROP TABLE IF EXISTS recomendaciones CASCADE;
DROP TABLE IF EXISTS consumos CASCADE;
DROP TABLE IF EXISTS dispositivos_hogares CASCADE;
DROP TABLE IF EXISTS dispositivos CASCADE;
DROP TABLE IF EXISTS usuarios_hogares CASCADE;
DROP TABLE IF EXISTS hogares CASCADE;
DROP TABLE IF EXISTS usuarios CASCADE;
DROP TABLE IF EXISTS roles CASCADE;
DROP TABLE IF EXISTS estratos CASCADE;

-- TABLAS DE CATÁLOGOS
-- Tabla de roles del sistema
CREATE TABLE roles (
    id_rol SERIAL PRIMARY KEY,
    nombre_rol VARCHAR(50) NOT NULL UNIQUE,
    descripcion TEXT,
    permisos JSONB,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado BOOLEAN DEFAULT TRUE
);

-- Tabla de estratos socioeconómicos
CREATE TABLE hidro_smart.estratos (
    id_estrato SERIAL PRIMARY KEY,
    numero_estrato INTEGER NOT NULL UNIQUE CHECK (numero_estrato BETWEEN 1 AND 6),
    descripcion VARCHAR(100),
    valor_base_m3 DECIMAL(10,2) NOT NULL,
    subsidio_porcentaje DECIMAL(5,2),
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado BOOLEAN DEFAULT TRUE
);

-- MÓDULO DE USUARIOS Y AUTENTICACIÓN
CREATE TABLE hidro_smart.usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(150) NOT NULL UNIQUE,
    contrasena_hash VARCHAR(255) NOT NULL,
    tipo_documento VARCHAR(20) NOT NULL,
    numero_documento VARCHAR(50) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    ciudad VARCHAR(100),
    id_rol INTEGER NOT NULL,
    access_token TEXT,
    refresh_token TEXT,
    fecha_ultimo_acceso TIMESTAMP,
    intentos_fallidos INTEGER DEFAULT 0,
    bloqueado_hasta TIMESTAMP,
    pregunta_seguridad TEXT,
    respuesta_seguridad_hash VARCHAR(255),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(20) DEFAULT 'ACTIVO' CHECK (estado IN ('ACTIVO', 'SUSPENDIDO', 'INACTIVO')),
    FOREIGN KEY (id_rol) REFERENCES roles(id_rol)
);

-- Índices para mejorar rendimiento
CREATE INDEX idx_usuarios_correo ON hidro_smart.usuarios(correo_electronico);
CREATE INDEX idx_usuarios_documento ON hidro_smart.usuarios(numero_documento);
CREATE INDEX idx_usuarios_estado ON hidro_smart.usuarios(estado);

-- MÓDULO DE HOGARES (PROYECTOS)
CREATE TABLE hidro_smart.hogares (
    id_hogar SERIAL PRIMARY KEY,
    nombre_hogar VARCHAR(150) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    ciudad VARCHAR(100) NOT NULL,
    id_estrato INTEGER NOT NULL,
    id_usuario_titular INTEGER NOT NULL,
    tope_consumo_mensual DECIMAL(10,2),
    tope_consumo_diario DECIMAL(10,2),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(20) DEFAULT 'ACTIVO' CHECK (estado IN ('ACTIVO', 'SUSPENDIDO', 'INACTIVO')),
    FOREIGN KEY (id_estrato) REFERENCES estratos(id_estrato),
    FOREIGN KEY (id_usuario_titular) REFERENCES usuarios(id_usuario)
);

-- Tabla intermedia para usuarios miembros del hogar
CREATE TABLE hidro_smart.usuarios_hogares (
    id_usuario_hogar SERIAL PRIMARY KEY,
    id_usuario INTEGER NOT NULL,
    id_hogar INTEGER NOT NULL,
    tipo_usuario VARCHAR(20) DEFAULT 'MIEMBRO' CHECK (tipo_usuario IN ('TITULAR', 'MIEMBRO', 'INVITADO')),
    funciones_especiales JSONB,
    fecha_vinculacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_hogar) REFERENCES hogares(id_hogar) ON DELETE CASCADE,
    UNIQUE(id_usuario, id_hogar)
);

CREATE INDEX idx_usuarios_hogares ON hidro_smart.usuarios_hogares(id_usuario, id_hogar);

-- MÓDULO DE DISPOSITIVOS IoT
CREATE TABLE hidro_smart.dispositivos (
    id_dispositivo SERIAL PRIMARY KEY,
    codigo_dispositivo VARCHAR(100) NOT NULL UNIQUE,
    nombre_dispositivo VARCHAR(150) NOT NULL,
    tipo_dispositivo VARCHAR(50) NOT NULL,
    marca VARCHAR(100),
    modelo VARCHAR(100),
    ubicacion VARCHAR(100),
    configuracion JSONB,
    fecha_instalacion DATE,
    ultima_calibracion TIMESTAMP,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(20) DEFAULT 'ACTIVO' CHECK (estado IN ('ACTIVO', 'SUSPENDIDO', 'INACTIVO', 'MANTENIMIENTO')),
    UNIQUE(codigo_dispositivo)
);

-- Tabla intermedia para dispositivos en hogares
CREATE TABLE hidro_smart.dispositivos_hogares (
    id_dispositivo_hogar SERIAL PRIMARY KEY,
    id_dispositivo INTEGER NOT NULL,
    id_hogar INTEGER NOT NULL,
    fecha_asignacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_desasignacion TIMESTAMP,
    estado BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (id_dispositivo) REFERENCES dispositivos(id_dispositivo) ON DELETE CASCADE,
    FOREIGN KEY (id_hogar) REFERENCES hogares(id_hogar) ON DELETE CASCADE
);

CREATE INDEX idx_dispositivos_hogares ON hidro_smart.dispositivos_hogares(id_dispositivo, id_hogar);

-- MÓDULO DE CONSUMO Y MONITOREO
CREATE TABLE hidro_smart.consumos (
    id_consumo SERIAL PRIMARY KEY,
    id_hogar INTEGER NOT NULL,
    id_dispositivo INTEGER NOT NULL,
    consumo_litros DECIMAL(12,3) NOT NULL,
    tipo_actividad VARCHAR(50),
    fecha_hora_inicio TIMESTAMP NOT NULL,
    fecha_hora_fin TIMESTAMP,
    duracion_minutos INTEGER,
    costo_estimado DECIMAL(10,2),
    temperatura_agua DECIMAL(5,2),
    presion_agua DECIMAL(5,2),
    anomalia_detectada BOOLEAN DEFAULT FALSE,
    datos_raw JSONB,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_hogar) REFERENCES hogares(id_hogar) ON DELETE CASCADE,
    FOREIGN KEY (id_dispositivo) REFERENCES dispositivos(id_dispositivo)
);

-- Índices para consultas de consumo
CREATE INDEX idx_consumos_hogar_fecha ON hidro_smart.consumos(id_hogar, fecha_hora_inicio DESC);
CREATE INDEX idx_consumos_dispositivo ON hidro_smart.consumos(id_dispositivo);
CREATE INDEX idx_consumos_actividad ON hidro_smart.consumos(tipo_actividad);
CREATE INDEX idx_consumos_anomalia ON hidro_smart.consumos(anomalia_detectada);

-- MÓDULO DE ALERTAS Y NOTIFICACIONES
CREATE TABLE hidro_smart.alertas (
    id_alerta SERIAL PRIMARY KEY,
    id_hogar INTEGER NOT NULL,
    tipo_alerta VARCHAR(50) NOT NULL,
    severidad VARCHAR(20) DEFAULT 'MEDIA' CHECK (severidad IN ('BAJA', 'MEDIA', 'ALTA', 'CRITICA')),
    titulo VARCHAR(200) NOT NULL,
    mensaje TEXT NOT NULL,
    consumo_actual DECIMAL(10,2),
    tope_configurado DECIMAL(10,2),
    fecha_generacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_leida TIMESTAMP,
    leida BOOLEAN DEFAULT FALSE,
    accion_requerida TEXT,
    fecha_resolucion TIMESTAMP,
    estado VARCHAR(20) DEFAULT 'PENDIENTE' CHECK (estado IN ('PENDIENTE', 'LEIDA', 'RESUELTA', 'DESCARTADA')),
    FOREIGN KEY (id_hogar) REFERENCES hogares(id_hogar) ON DELETE CASCADE
);

CREATE INDEX idx_alertas_hogar_estado ON hidro_smart.alertas(id_hogar, estado, fecha_generacion DESC);

-- MÓDULO DE RECOMENDACIONES
CREATE TABLE hidro_smart.recomendaciones (
    id_recomendacion SERIAL PRIMARY KEY,
    id_hogar INTEGER NOT NULL,
    tipo_recomendacion VARCHAR(50) NOT NULL,
    titulo VARCHAR(200) NOT NULL,
    descripcion TEXT NOT NULL,
    ahorro_estimado_litros DECIMAL(10,2),
    ahorro_estimado_dinero DECIMAL(10,2),
    prioridad VARCHAR(20) DEFAULT 'MEDIA' CHECK (prioridad IN ('BAJA', 'MEDIA', 'ALTA')),
    fecha_generacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_aplicada TIMESTAMP,
    aplicada BOOLEAN DEFAULT FALSE,
    efectividad_porcentaje DECIMAL(5,2),
    estado VARCHAR(20) DEFAULT 'ACTIVA' CHECK (estado IN ('ACTIVA', 'APLICADA', 'DESCARTADA', 'VENCIDA')),
    FOREIGN KEY (id_hogar) REFERENCES hogares(id_hogar) ON DELETE CASCADE
);

CREATE INDEX idx_recomendaciones_hogar ON hidro_smart.recomendaciones(id_hogar, estado);

-- MÓDULO DE AUDITORÍA
CREATE TABLE hidro_smart.auditorias (
    id_auditoria SERIAL PRIMARY KEY,
    id_usuario INTEGER,
    accion VARCHAR(100) NOT NULL,
    tabla_afectada VARCHAR(100),
    id_registro_afectado INTEGER,
    descripcion TEXT,
    datos_anteriores JSONB,
    datos_nuevos JSONB,
    ip_origen VARCHAR(50),
    navegador VARCHAR(200),
    fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    resultado VARCHAR(20) CHECK (resultado IN ('EXITOSO', 'FALLIDO', 'BLOQUEADO')),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) ON DELETE SET NULL
);

CREATE INDEX idx_auditorias_usuario ON hidro_smart.auditorias(id_usuario, fecha_hora DESC);
CREATE INDEX idx_auditorias_tabla ON hidro_smart.auditorias(tabla_afectada, fecha_hora DESC);

-- OTORGAR PERMISOS A LAS TABLAS
-- Permisos completos para el usuario de aplicación
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA hidro_smart TO hidro_smart_app;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA hidro_smart TO hidro_smart_app;

-- Permisos de solo lectura para usuario de reportes
GRANT SELECT ON ALL TABLES IN SCHEMA hidro_smart TO hidro_smart_readonly;

-- INSERCIÓN DE DATOS INICIALES
-- Insertar roles
INSERT INTO hidro_smart.roles (nombre_rol, descripcion, permisos) VALUES
('ADMINISTRADOR', 'Acceso completo al sistema', '{"all": true}'::jsonb),
('SOPORTE_TECNICO', 'Gestión de dispositivos y mantenimiento', '{"devices": true, "maintenance": true}'::jsonb),
('USUARIO_DOMESTICO', 'Usuario final del sistema', '{"view": true, "reports": true}'::jsonb);

-- Insertar estratos
INSERT INTO hidro_smart.estratos (numero_estrato, descripcion, valor_base_m3, subsidio_porcentaje) VALUES
(1, 'Estrato 1 - Bajo-Bajo', 1500.00, 70.00),
(2, 'Estrato 2 - Bajo', 1800.00, 60.00),
(3, 'Estrato 3 - Medio-Bajo', 2200.00, 40.00),
(4, 'Estrato 4 - Medio', 3500.00, 0.00),
(5, 'Estrato 5 - Medio-Alto', 4200.00, -20.00),
(6, 'Estrato 6 - Alto', 5000.00, -30.00);

-- VISTAS ÚTILES
-- Vista de consumo mensual por hogar
CREATE OR REPLACE VIEW vistas.v_consumo_mensual_hogar AS
SELECT 
    h.id_hogar,
    h.nombre_hogar,
    DATE_TRUNC('month', c.fecha_hora_inicio) AS mes,
    SUM(c.consumo_litros) AS total_litros,
    COUNT(*) AS total_registros,
    SUM(c.costo_estimado) AS costo_total,
    ROUND(AVG(c.consumo_litros), 2) AS promedio_por_uso
FROM hidro_smart.hogares h
INNER JOIN hidro_smart.consumos c ON h.id_hogar = c.id_hogar
GROUP BY h.id_hogar, h.nombre_hogar, DATE_TRUNC('month', c.fecha_hora_inicio);

-- Vista de alertas activas por hogar
CREATE OR REPLACE VIEW vistas.v_alertas_activas AS
SELECT 
    h.id_hogar,
    h.nombre_hogar,
    a.tipo_alerta,
    a.severidad,
    a.titulo,
    a.mensaje,
    a.fecha_generacion,
    a.estado
FROM hidro_smart.hogares h
INNER JOIN hidro_smart.alertas a ON h.id_hogar = a.id_hogar
WHERE a.estado IN ('PENDIENTE', 'LEIDA')
ORDER BY a.fecha_generacion DESC;

-- Vista de dispositivos activos por hogar
CREATE OR REPLACE VIEW vistas.v_dispositivos_activos AS
SELECT 
    h.id_hogar,
    h.nombre_hogar,
    d.id_dispositivo,
    d.nombre_dispositivo,
    d.tipo_dispositivo,
    d.ubicacion,
    dh.fecha_asignacion,
    d.estado
FROM hidro_smart.hogares h
INNER JOIN hidro_smart.dispositivos_hogares dh ON h.id_hogar = dh.id_hogar
INNER JOIN hidro_smart.dispositivos d ON dh.id_dispositivo = d.id_dispositivo
WHERE dh.estado = TRUE AND d.estado = 'ACTIVO';

-- Otorgar permisos sobre las vistas
GRANT SELECT ON ALL TABLES IN SCHEMA vistas TO hidro_smart_app;
GRANT SELECT ON ALL TABLES IN SCHEMA vistas TO hidro_smart_readonly;

-- FUNCIONES ÚTILES
-- Función para calcular consumo diario de un hogar
CREATE OR REPLACE FUNCTION funciones.fn_consumo_diario(p_id_hogar INTEGER, p_fecha DATE)
RETURNS DECIMAL(10,2) AS $
BEGIN
    RETURN (
        SELECT COALESCE(SUM(consumo_litros), 0)
        FROM hidro_smart.consumos
        WHERE id_hogar = p_id_hogar
        AND DATE(fecha_hora_inicio) = p_fecha
    );
END;
$ LANGUAGE plpgsql;

-- Función para verificar si se superó el tope de consumo
CREATE OR REPLACE FUNCTION funciones.fn_verificar_tope_consumo()
RETURNS TRIGGER AS $
DECLARE
    v_tope_diario DECIMAL(10,2);
    v_consumo_actual DECIMAL(10,2);
BEGIN
    -- Obtener tope configurado
    SELECT tope_consumo_diario INTO v_tope_diario
    FROM hidro_smart.hogares
    WHERE id_hogar = NEW.id_hogar;
    
    -- Calcular consumo actual del día
    v_consumo_actual := funciones.fn_consumo_diario(NEW.id_hogar, DATE(NEW.fecha_hora_inicio));
    
    -- Si supera el tope, generar alerta
    IF v_tope_diario IS NOT NULL AND v_consumo_actual > v_tope_diario THEN
        INSERT INTO hidro_smart.alertas (id_hogar, tipo_alerta, severidad, titulo, mensaje, consumo_actual, tope_configurado)
        VALUES (
            NEW.id_hogar,
            'TOPE_SUPERADO',
            'ALTA',
            'Tope de consumo diario superado',
            'El consumo de agua ha superado el límite configurado para hoy.',
            v_consumo_actual,
            v_tope_diario
        );
    END IF;
    
    RETURN NEW;
END;
$ LANGUAGE plpgsql;

-- Trigger para verificar tope de consumo
CREATE TRIGGER trg_verificar_tope
AFTER INSERT ON hidro_smart.consumos
FOR EACH ROW
EXECUTE FUNCTION funciones.fn_verificar_tope_consumo();

-- Otorgar permisos de ejecución de funciones
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA funciones TO hidro_smart_app;

-- COMENTARIOS EN TABLAS
COMMENT ON TABLE hidro_smart.usuarios IS 'Almacena información de todos los usuarios del sistema';
COMMENT ON TABLE hidro_smart.hogares IS 'Representa cada proyecto/hogar monitoreado';
COMMENT ON TABLE hidro_smart.dispositivos IS 'Catálogo de dispositivos IoT registrados';
COMMENT ON TABLE hidro_smart.consumos IS 'Registros históricos de consumo de agua';
COMMENT ON TABLE hidro_smart.alertas IS 'Sistema de notificaciones y alertas';
COMMENT ON TABLE hidro_smart.recomendaciones IS 'Sugerencias de ahorro generadas por el sistema';
COMMENT ON TABLE hidro_smart.auditorias IS 'Registro de todas las acciones críticas del sistema';

-- CONFIGURACIÓN DE BACKUP AUTOMÁTICO
-- Crear tabla para controlar backups
CREATE TABLE auditoria.backup_log (
    id_backup SERIAL PRIMARY KEY,
    fecha_backup TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    tipo_backup VARCHAR(20) CHECK (tipo_backup IN ('COMPLETO', 'INCREMENTAL')),
    estado VARCHAR(20) CHECK (estado IN ('EXITOSO', 'FALLIDO')),
    tamano_bytes BIGINT,
    ruta_archivo TEXT,
    comentarios TEXT
);

COMMENT ON TABLE auditoria.backup_log IS 'Registro de backups realizados del sistema';

-- CONFIGURACIÓN DE RETENCIÓN DE DATOS
-- Función para limpiar registros antiguos de auditoría (mayores a 1 año)
CREATE OR REPLACE FUNCTION funciones.fn_limpiar_auditoria_antigua()
RETURNS INTEGER AS $
DECLARE
    registros_eliminados INTEGER;
BEGIN
    DELETE FROM hidro_smart.auditorias
    WHERE fecha_hora < CURRENT_TIMESTAMP - INTERVAL '1 year';
    
    GET DIAGNOSTICS registros_eliminados = ROW_COUNT;
    RETURN registros_eliminados;
END;
$ LANGUAGE plpgsql;

-- Función para archivar consumos antiguos (mayores a 2 años)
CREATE OR REPLACE FUNCTION funciones.fn_archivar_consumos_antiguos()
RETURNS INTEGER AS $
DECLARE
    registros_archivados INTEGER;
BEGIN
    -- Aquí se podría mover a una tabla de archivo histórico
    -- Por ahora solo contamos los registros que serían archivados
    SELECT COUNT(*) INTO registros_archivados
    FROM hidro_smart.consumos
    WHERE fecha_hora_inicio < CURRENT_TIMESTAMP - INTERVAL '2 years';
    
    RETURN registros_archivados;
END;
$ LANGUAGE plpgsql;

-- POLÍTICAS DE SEGURIDAD (Row Level Security)
-- Habilitar RLS en tablas sensibles
ALTER TABLE hidro_smart.usuarios ENABLE ROW LEVEL SECURITY;
ALTER TABLE hidro_smart.hogares ENABLE ROW LEVEL SECURITY;
ALTER TABLE hidro_smart.consumos ENABLE ROW LEVEL SECURITY;

-- Política: Los usuarios solo pueden ver sus propios datos
CREATE POLICY politica_usuarios_propios ON hidro_smart.usuarios
    FOR SELECT
    USING (id_usuario = current_setting('app.current_user_id')::INTEGER);

-- Política: Los usuarios solo pueden ver los hogares donde son miembros
CREATE POLICY politica_hogares_miembros ON hidro_smart.hogares
    FOR SELECT
    USING (
        id_hogar IN (
            SELECT id_hogar 
            FROM hidro_smart.usuarios_hogares 
            WHERE id_usuario = current_setting('app.current_user_id')::INTEGER
        )
    );

-- ESTADÍSTICAS Y ANÁLISIS
-- Crear estadísticas para el optimizador de consultas
ANALYZE hidro_smart.usuarios;
ANALYZE hidro_smart.hogares;
ANALYZE hidro_smart.dispositivos;
ANALYZE hidro_smart.consumos;
ANALYZE hidro_smart.alertas;

-- INFORMACIÓN DEL SISTEMA
-- Crear vista con información general del sistema
CREATE OR REPLACE VIEW vistas.v_info_sistema AS
SELECT
    'Hidro Smart v1.0' AS nombre_sistema,
    (SELECT COUNT(*) FROM hidro_smart.usuarios WHERE estado = 'ACTIVO') AS usuarios_activos,
    (SELECT COUNT(*) FROM hidro_smart.hogares WHERE estado = 'ACTIVO') AS hogares_activos,
    (SELECT COUNT(*) FROM hidro_smart.dispositivos WHERE estado = 'ACTIVO') AS dispositivos_activos,
    (SELECT COUNT(*) FROM hidro_smart.alertas WHERE estado = 'PENDIENTE') AS alertas_pendientes,
    (SELECT SUM(consumo_litros) FROM hidro_smart.consumos WHERE DATE(fecha_hora_inicio) = CURRENT_DATE) AS consumo_hoy_litros,
    CURRENT_TIMESTAMP AS fecha_consulta;

-- USUARIO ADMINISTRADOR INICIAL
-- Insertar usuario administrador por defecto
-- IMPORTANTE: Cambiar la contraseña en producción
INSERT INTO hidro_smart.usuarios (
    nombre, 
    correo_electronico, 
    contrasena_hash, 
    tipo_documento, 
    numero_documento, 
    id_rol
) VALUES (
    'Administrador Sistema',
    'admin@hidrosmart.com',
    crypt('Admin2025!', gen_salt('bf', 10)), -- Contraseña: Admin2025!
    'CC',
    '0000000000',
    1 -- Rol Administrador
) ON CONFLICT (correo_electronico) DO NOTHING;

-- FINALIZACIÓN Y MENSAJES
-- Mensaje de éxito
DO $
BEGIN
    RAISE NOTICE '==============================================';
    RAISE NOTICE 'Base de datos HIDRO SMART creada exitosamente';
    RAISE NOTICE '==============================================';
    RAISE NOTICE 'Esquemas creados: hidro_smart, funciones, vistas, auditoria';
    RAISE NOTICE 'Usuario de aplicación: hidro_smart_app';
    RAISE NOTICE 'Usuario de reportes: hidro_smart_readonly';
    RAISE NOTICE 'Admin por defecto: admin@hidrosmart.com / Admin2025!';
    RAISE NOTICE '==============================================';
    RAISE NOTICE 'IMPORTANTE: Cambiar contraseñas en producción';
    RAISE NOTICE '==============================================';
END $;

-- FIN DEL SCRIPT