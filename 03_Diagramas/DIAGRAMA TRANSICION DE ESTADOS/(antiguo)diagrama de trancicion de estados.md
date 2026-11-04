# (antiguo)diagrama de trancicion de estados

> Representación Markdown del diagrama histórico [(antiguo) transición de estados](<(antiguo)diagrama de trancicion de estados.drawio>). Se conserva el archivo editable como referencia y no se declara vigente.

## Página 1: T.E 1

Elementos con texto: **7**. Conectores: **11**.

### Elementos

| ID de origen | Texto visible |
|---|---|
| `JNAOdsm63g5qRIQcTMSw-2` | Login |
| `JNAOdsm63g5qRIQcTMSw-3` | GenerateToken |
| `JNAOdsm63g5qRIQcTMSw-4` | DisplayLoginError |
| `JNAOdsm63g5qRIQcTMSw-5` | RecoverPassword |
| `JNAOdsm63g5qRIQcTMSw-6` | Authenticated |
| `JNAOdsm63g5qRIQcTMSw-7` | AccountOptions |
| `JNAOdsm63g5qRIQcTMSw-8` | UpdateProfile |

### Conectores

| Desde | Etiqueta | Hacia |
|---|---|---|
| `JNAOdsm63g5qRIQcTMSw-1` | (sin etiqueta) | Login |
| Login | credenciales válidas | GenerateToken |
| Login | credenciales inválidas | DisplayLoginError |
| Login | olvido contraseña | RecoverPassword |
| GenerateToken | token generado | Authenticated |
| DisplayLoginError | reintentar login | Login |
| RecoverPassword | contraseña recuperada | Login |
| Authenticated | acceder opciones cuenta | AccountOptions |
| AccountOptions | editar perfil | UpdateProfile |
| UpdateProfile | perfil actualizado | AccountOptions |
| Authenticated | cerrar sesión | `JNAOdsm63g5qRIQcTMSw-9` |

## Página 2: T.E. 2

Elementos con texto: **2**. Conectores: **4**.

### Elementos

| ID de origen | Texto visible |
|---|---|
| `jYTN8Dy1PFXo4wGX5a2f-2` | RegisterDevices |
| `jYTN8Dy1PFXo4wGX5a2f-3` | ConfigureDevice |

### Conectores

| Desde | Etiqueta | Hacia |
|---|---|---|
| `jYTN8Dy1PFXo4wGX5a2f-1` | iniciar vinculación | RegisterDevices |
| RegisterDevices | dispositivo registrado | ConfigureDevice |
| ConfigureDevice | cambios de configuración | RegisterDevices |
| ConfigureDevice | configuración finalizada | `jYTN8Dy1PFXo4wGX5a2f-4` |

## Página 3: T.E.3

Elementos con texto: **4**. Conectores: **6**.

### Elementos

| ID de origen | Texto visible |
|---|---|
| `UFMOo4t7_cnYtDfdh-6--2` | CreacionProyecto |
| `UFMOo4t7_cnYtDfdh-6--3` | AsignacionDispositivos |
| `UFMOo4t7_cnYtDfdh-6--4` | ConfiguracionesProyecto |
| `UFMOo4t7_cnYtDfdh-6--5` | AsignacionUsuariosFunciones |

### Conectores

| Desde | Etiqueta | Hacia |
|---|---|---|
| `UFMOo4t7_cnYtDfdh-6--1` | iniciar proyecto | CreacionProyecto |
| CreacionProyecto | proyecto creado | AsignacionDispositivos |
| CreacionProyecto | definir configuraciones | ConfiguracionesProyecto |
| ConfiguracionesProyecto | ajustar configuración | CreacionProyecto |
| AsignacionDispositivos | dispositivos asignados | AsignacionUsuariosFunciones |
| AsignacionUsuariosFunciones | proyecto implementado | `UFMOo4t7_cnYtDfdh-6--6` |

## Página 4: T.E.4 

Elementos con texto: **3**. Conectores: **6**.

### Elementos

| ID de origen | Texto visible |
|---|---|
| `7PSFEuc5NNOMRf0XsivS-2` | ConfiguracionesPersonal |
| `7PSFEuc5NNOMRf0XsivS-3` | ConfigurarAlertas |
| `7PSFEuc5NNOMRf0XsivS-4` | ControlesAuditoria |

### Conectores

| Desde | Etiqueta | Hacia |
|---|---|---|
| `7PSFEuc5NNOMRf0XsivS-1` | acceder configuraciones | ConfiguracionesPersonal |
| ConfiguracionesPersonal | definir alertas | ConfigurarAlertas |
| ConfiguracionesPersonal | configurar auditoría | ControlesAuditoria |
| ConfigurarAlertas | guardar alertas | ConfiguracionesPersonal |
| ControlesAuditoria | guardar controles | ConfiguracionesPersonal |
| ConfiguracionesPersonal | salir de configuraciones | `7PSFEuc5NNOMRf0XsivS-5` |

## Página 5: T.E.5

Elementos con texto: **5**. Conectores: **8**.

### Elementos

| ID de origen | Texto visible |
|---|---|
| `bKW0yRXAC0CqzCj6tG9H-2` | AccederSistema |
| `bKW0yRXAC0CqzCj6tG9H-3` | ConfiguracionesPersonal |
| `bKW0yRXAC0CqzCj6tG9H-5` | MenuConfiguracion |
| `bKW0yRXAC0CqzCj6tG9H-6` | ConfigurarAlertas |
| `bKW0yRXAC0CqzCj6tG9H-7` | ControlesAuditoria |

### Conectores

| Desde | Etiqueta | Hacia |
|---|---|---|
| `bKW0yRXAC0CqzCj6tG9H-4` | (sin etiqueta) | MenuConfiguracion |
| MenuConfiguracion | definir alertas | ConfigurarAlertas |
| ConfigurarAlertas | guardar alertas | MenuConfiguracion |
| MenuConfiguracion | configurar auditoría | ControlesAuditoria |
| ControlesAuditoria | guardar controles | MenuConfiguracion |
| MenuConfiguracion | salir de configuraciones | `bKW0yRXAC0CqzCj6tG9H-8` |
| `bKW0yRXAC0CqzCj6tG9H-1` | iniciar | AccederSistema |
| AccederSistema | acceder configuraciones | ConfiguracionesPersonal |
