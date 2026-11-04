# Diagrama de Clases

> Representación Markdown de [Diagrama de Clases.drawio](<Diagrama de Clases.drawio>). Documento histórico; se conserva el diagrama editable como referencia y no se declara vigente.

## Página 1: Página-1

Elementos con texto: **77**. Conectores: **13**.

### Elementos

| ID de origen | Texto visible |
|---|---|
| `vlyiV-OKd2_slLudekBw-3` | Permisos |
| `vlyiV-OKd2_slLudekBw-4` | + permisoID: int |
| `vlyiV-OKd2_slLudekBw-7` | + nombrePermiso: String |
| `vlyiV-OKd2_slLudekBw-8` | + descripcion: String |
| `vlyiV-OKd2_slLudekBw-9` | Rol |
| `vlyiV-OKd2_slLudekBw-10` | + rolID: int |
| `vlyiV-OKd2_slLudekBw-11` | + nombreRol: String |
| `vlyiV-OKd2_slLudekBw-12` | + descripcion: String |
| `vlyiV-OKd2_slLudekBw-16` | + asignarPermiso() |
| `vlyiV-OKd2_slLudekBw-17` | +eliminarPermiso() |
| `vlyiV-OKd2_slLudekBw-18` | Medidor |
| `vlyiV-OKd2_slLudekBw-19` | + medidorID: int |
| `vlyiV-OKd2_slLudekBw-20` | + codigoMedidor: String |
| `vlyiV-OKd2_slLudekBw-21` | + ubicacion: String |
| `vlyiV-OKd2_slLudekBw-33` | + FechaInstalacion: dateTime |
| `vlyiV-OKd2_slLudekBw-25` | + estadoMedidor: String |
| `vlyiV-OKd2_slLudekBw-23` | + asignarPermiso() |
| `vlyiV-OKd2_slLudekBw-24` | +eliminarPermiso() |
| `vlyiV-OKd2_slLudekBw-27` | Consumo |
| `vlyiV-OKd2_slLudekBw-28` | + consumoID: int |
| `vlyiV-OKd2_slLudekBw-29` | + fechaLectura: datetime |
| `vlyiV-OKd2_slLudekBw-30` | + cantidadConsumida: double |
| `vlyiV-OKd2_slLudekBw-35` | + costoCalculado : double |
| `vlyiV-OKd2_slLudekBw-36` | + calcularCosto() |
| `vlyiV-OKd2_slLudekBw-41` | Alerta |
| `vlyiV-OKd2_slLudekBw-42` | + alertaID: int |
| `vlyiV-OKd2_slLudekBw-43` | + tipoAlerta: String |
| `vlyiV-OKd2_slLudekBw-44` | + mensaje: String |
| `vlyiV-OKd2_slLudekBw-48` | + estadoAlerta: String |
| `vlyiV-OKd2_slLudekBw-46` | + enviarAlerta() |
| `vlyiV-OKd2_slLudekBw-47` | + marcarLeida() |
| `vlyiV-OKd2_slLudekBw-49` | SesionUsuario |
| `vlyiV-OKd2_slLudekBw-50` | + sesionID: int |
| `vlyiV-OKd2_slLudekBw-51` | + fechaInicio: datetime |
| `vlyiV-OKd2_slLudekBw-52` | + fechaFin: datetime |
| `vlyiV-OKd2_slLudekBw-55` | + abrirSesion() |
| `vlyiV-OKd2_slLudekBw-56` | + cerrarSesion() |
| `vlyiV-OKd2_slLudekBw-57` | Auditoria |
| `vlyiV-OKd2_slLudekBw-58` | + auditoriaID: int |
| `vlyiV-OKd2_slLudekBw-59` | + accion: String |
| `vlyiV-OKd2_slLudekBw-60` | + fecha: datetime |
| `vlyiV-OKd2_slLudekBw-72` | + descripcion: String |
| `vlyiV-OKd2_slLudekBw-74` | + ipOrigen: int |
| `vlyiV-OKd2_slLudekBw-62` | + registrarAccion() |
| `vlyiV-OKd2_slLudekBw-64` | LogError |
| `vlyiV-OKd2_slLudekBw-65` | + errorID: int |
| `vlyiV-OKd2_slLudekBw-66` | + tipoError: String |
| `vlyiV-OKd2_slLudekBw-67` | + descripcion: String |
| `vlyiV-OKd2_slLudekBw-69` | + registrarError() |
| `vlyiV-OKd2_slLudekBw-75` | Usuario |
| `vlyiV-OKd2_slLudekBw-76` | + usuarioID: int |
| `vlyiV-OKd2_slLudekBw-77` | + nombreUsuario: String |
| `vlyiV-OKd2_slLudekBw-78` | + contrasena: String |
| `vlyiV-OKd2_slLudekBw-79` | + email: String |
| `vlyiV-OKd2_slLudekBw-80` | + estadoUsuario: boolean |
| `vlyiV-OKd2_slLudekBw-83` | + fechaCreacion: datetime |
| `vlyiV-OKd2_slLudekBw-84` | + ultimoAcceso: datetime |
| `vlyiV-OKd2_slLudekBw-82` | + iniciarSesion() |
| `vlyiV-OKd2_slLudekBw-85` | + cerrarSesion() |
| `vlyiV-OKd2_slLudekBw-86` | + cambiarContrasena() |
| `vlyiV-OKd2_slLudekBw-87` | + generarAlerta() |
| `vlyiV-OKd2_slLudekBw-96` | UsuarioRol |
| `vlyiV-OKd2_slLudekBw-97` | + usuarioID: int |
| `vlyiV-OKd2_slLudekBw-104` | + rolID: int |
| `vlyiV-OKd2_slLudekBw-99` | + fechaAsignacion: datetime |
| `vlyiV-OKd2_slLudekBw-105` | RolPermisos |
| `vlyiV-OKd2_slLudekBw-107` | + rolID: int |
| `vlyiV-OKd2_slLudekBw-106` | + permisosID: int |
| `vlyiV-OKd2_slLudekBw-111` | UsuarioAlerta |
| `vlyiV-OKd2_slLudekBw-113` | + usuarioID: int |
| `vlyiV-OKd2_slLudekBw-112` | + alertaID: int |
| `vlyiV-OKd2_slLudekBw-116` | UsuarioSesionUsuario |
| `vlyiV-OKd2_slLudekBw-121` | + usuarioID: int |
| `vlyiV-OKd2_slLudekBw-117` | + sesionID: int |
| `vlyiV-OKd2_slLudekBw-122` | UsuarioLogError |
| `vlyiV-OKd2_slLudekBw-123` | + usuarioID: int |
| `vlyiV-OKd2_slLudekBw-124` | + errorID: int |

### Conectores

| Desde | Etiqueta | Hacia |
|---|---|---|
| RolPermisos | (sin etiqueta) | +eliminarPermiso() |
| Rol | (sin etiqueta) | UsuarioRol |
| Consumo | (sin etiqueta) | +eliminarPermiso() |
| Auditoria | (sin etiqueta) | + cambiarContrasena() |
| + usuarioID: int | (sin etiqueta) | + ultimoAcceso: datetime |
| Medidor | (sin etiqueta) | + generarAlerta() |
| UsuarioAlerta | (sin etiqueta) | + generarAlerta() |
| UsuarioSesionUsuario | (sin etiqueta) | + generarAlerta() |
| + estadoUsuario: boolean | (sin etiqueta) | UsuarioRol |
| Permisos | (sin etiqueta) | `vlyiV-OKd2_slLudekBw-109` |
| Alerta | (sin etiqueta) | `vlyiV-OKd2_slLudekBw-114` |
| SesionUsuario | (sin etiqueta) | UsuarioSesionUsuario |
| LogError | (sin etiqueta) | UsuarioLogError |

## Alcance

Esta copia lista los rótulos y conectores encontrados en el archivo editable. No reemplaza el diseño gráfico ni verifica cardinalidades. Contrástese con las migraciones de BD_HS y el [diccionario implementado](../../../08_Documentacion_Tecnica_Actualizada/03_Base_de_Datos/09_diccionario-implementado.md) antes de declarar este diagrama como definitivo.
