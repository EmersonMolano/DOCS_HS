
/* =====================================================
   PROYECTO: HIDRO SMART
   BASE DE DATOS COMPLETA - SQL SERVER
   ===================================================== */

CREATE DATABASE HidroSmart;
GO
USE HidroSmart;
GO

/* =====================================================
   ELIMINAR TABLAS SI EXISTEN (ORDEN CORRECTO)
   ===================================================== */

IF OBJECT_ID('Rol_Permiso', 'U') IS NOT NULL DROP TABLE Rol_Permiso;
IF OBJECT_ID('Usuario_Rol', 'U') IS NOT NULL DROP TABLE Usuario_Rol;
IF OBJECT_ID('Sesion_Usuario', 'U') IS NOT NULL DROP TABLE Sesion_Usuario;
IF OBJECT_ID('Log_Errores', 'U') IS NOT NULL DROP TABLE Log_Errores;
IF OBJECT_ID('Auditoria', 'U') IS NOT NULL DROP TABLE Auditoria;
IF OBJECT_ID('Alertas', 'U') IS NOT NULL DROP TABLE Alertas;
IF OBJECT_ID('Consumo', 'U') IS NOT NULL DROP TABLE Consumo;
IF OBJECT_ID('Medidores', 'U') IS NOT NULL DROP TABLE Medidores;
IF OBJECT_ID('Permisos', 'U') IS NOT NULL DROP TABLE Permisos;
IF OBJECT_ID('Roles', 'U') IS NOT NULL DROP TABLE Roles;
IF OBJECT_ID('Usuarios', 'U') IS NOT NULL DROP TABLE Usuarios;
IF OBJECT_ID('Politicas_Contrasenas', 'U') IS NOT NULL DROP TABLE Politicas_Contrasenas;
GO

CREATE TABLE Usuarios (
    UsuarioID INT PRIMARY KEY IDENTITY(1,1),
    NombreUsuario NVARCHAR(100) NOT NULL UNIQUE,
    Contrasena NVARCHAR(255) NOT NULL,
    Email NVARCHAR(150) UNIQUE,
    EstadoUsuario BIT DEFAULT 1,
    FechaCreacion DATETIME DEFAULT GETDATE(),
    UltimoAcceso DATETIME
);

CREATE TABLE Roles (
    RolID INT PRIMARY KEY IDENTITY(1,1),
    NombreRol NVARCHAR(50) NOT NULL UNIQUE,
    Descripcion NVARCHAR(255)
);

CREATE TABLE Usuario_Rol (
    UsuarioID INT NOT NULL,
    RolID INT NOT NULL,
    FechaAsignacion DATETIME DEFAULT GETDATE(),
    PRIMARY KEY (UsuarioID, RolID),
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID) ON DELETE CASCADE,
    FOREIGN KEY (RolID) REFERENCES Roles(RolID) ON DELETE CASCADE
);

CREATE TABLE Permisos (
    PermisoID INT PRIMARY KEY IDENTITY(1,1),
    NombrePermiso NVARCHAR(50) NOT NULL UNIQUE,
    Descripcion NVARCHAR(255)
);

CREATE TABLE Rol_Permiso (
    RolID INT NOT NULL,
    PermisoID INT NOT NULL,
    PRIMARY KEY (RolID, PermisoID),
    FOREIGN KEY (RolID) REFERENCES Roles(RolID) ON DELETE CASCADE,
    FOREIGN KEY (PermisoID) REFERENCES Permisos(PermisoID) ON DELETE CASCADE
);

CREATE TABLE Medidores (
    MedidorID INT PRIMARY KEY IDENTITY(1,1),
    UsuarioID INT NOT NULL,
    CodigoMedidor NVARCHAR(100) UNIQUE NOT NULL,
    Ubicacion NVARCHAR(255),
    FechaInstalacion DATETIME DEFAULT GETDATE(),
    EstadoMedidor NVARCHAR(50) DEFAULT 'Activo',
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID)
);

CREATE TABLE Consumo (
    ConsumoID INT PRIMARY KEY IDENTITY(1,1),
    MedidorID INT NOT NULL,
    FechaLectura DATETIME NOT NULL,
    CantidadConsumida DECIMAL(10,2) NOT NULL,
    CostoCalculado DECIMAL(10,2),
    FOREIGN KEY (MedidorID) REFERENCES Medidores(MedidorID)
);

CREATE TABLE Alertas (
    AlertaID INT PRIMARY KEY IDENTITY(1,1),
    UsuarioID INT NOT NULL,
    MedidorID INT,
    TipoAlerta NVARCHAR(100),
    Mensaje NVARCHAR(500),
    FechaGeneracion DATETIME DEFAULT GETDATE(),
    EstadoAlerta NVARCHAR(50) DEFAULT 'Pendiente',
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
    FOREIGN KEY (MedidorID) REFERENCES Medidores(MedidorID)
);

CREATE TABLE Auditoria (
    AuditoriaID INT PRIMARY KEY IDENTITY(1,1),
    UsuarioID INT,
    Accion NVARCHAR(255),
    Fecha DATETIME DEFAULT GETDATE(),
    Descripcion NVARCHAR(500),
    IP_Origen NVARCHAR(50),
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID)
);

CREATE TABLE Sesion_Usuario (
    SesionID INT PRIMARY KEY IDENTITY(1,1),
    UsuarioID INT NOT NULL,
    FechaInicio DATETIME DEFAULT GETDATE(),
    FechaFin DATETIME,
    EstadoSesion NVARCHAR(50) CHECK (EstadoSesion IN ('Activo','Cerrado')),
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID)
);

CREATE TABLE Log_Errores (
    ErrorID INT PRIMARY KEY IDENTITY(1,1),
    UsuarioID INT,
    Fecha DATETIME DEFAULT GETDATE(),
    TipoError NVARCHAR(100),
    Descripcion NVARCHAR(500),
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID)
);

CREATE TABLE Politicas_Contrasenas (
    PoliticaID INT PRIMARY KEY IDENTITY(1,1),
    MinLongitud INT DEFAULT 8,
    MaxLongitud INT DEFAULT 20,
    RequiereMayusculas BIT DEFAULT 1,
    RequiereNumeros BIT DEFAULT 1,
    RequiereSimbolos BIT DEFAULT 1,
    CaducidadDias INT DEFAULT 90
);

CREATE INDEX IX_Consumo_Medidor ON Consumo(MedidorID);
CREATE INDEX IX_Alertas_Usuario ON Alertas(UsuarioID);
CREATE INDEX IX_Medidores_Usuario ON Medidores(UsuarioID);
CREATE INDEX IX_Auditoria_Usuario ON Auditoria(UsuarioID);
