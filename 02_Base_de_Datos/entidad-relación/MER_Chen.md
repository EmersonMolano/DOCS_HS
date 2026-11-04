# MER_Chen

> Representación Markdown de [MER_Chen.drawio](<MER_Chen.drawio>). Transcripción textual del diagrama editable. No confirma por sí sola que entidades y relaciones correspondan con la base actualmente implementada.

## Página 1: Modelo conceptual Chen vigente

Elementos con texto: **21**. Conectores: **20**.

### Elementos

| ID de origen | Texto visible |
|---|---|
| `c2` | Usuario |
| `c3` | Hogar |
| `c4` | Dispositivo |
| `c5` | Lectura |
| `c6` | Regla de alerta |
| `c7` | Evento de alerta |
| `c8` | Ticket |
| `c9` | Respuesta |
| `c10` | Rol |
| `c11` | Permiso |
| `d12` | participa |
| `d15` | asocia |
| `d18` | produce |
| `d21` | configura |
| `d24` | genera |
| `d27` | registra |
| `d30` | crea |
| `d33` | contiene |
| `d36` | asigna |
| `d39` | concede |
| `chen_note` | Modelo conceptual resumido; restricciones y cardinalidades físicas se verifican en las migraciones y claves únicas de BD_HS. |

### Conectores

| Desde | Etiqueta | Hacia |
|---|---|---|
| Usuario | N | participa |
| participa | N | Hogar |
| Hogar | 1 | asocia |
| asocia | N | Dispositivo |
| Dispositivo | 1 | produce |
| produce | N | Lectura |
| Hogar | 1 | configura |
| configura | N | Regla de alerta |
| Regla de alerta | 1 | genera |
| genera | N | Evento de alerta |
| Hogar | 1 | registra |
| registra | N | Evento de alerta |
| Usuario | 1 | crea |
| crea | N | Ticket |
| Ticket | 1 | contiene |
| contiene | N | Respuesta |
| Usuario | N | asigna |
| asigna | N | Rol |
| Rol | N | concede |
| concede | N | Permiso |

## Alcance

Esta copia lista los rótulos y conectores encontrados en el archivo editable. No reemplaza el diseño gráfico ni verifica cardinalidades. Contrástese con las migraciones de BD_HS y el [diccionario implementado](../../08_Documentacion_Tecnica_Actualizada/03_Base_de_Datos/09_diccionario-implementado.md) antes de declarar este diagrama como definitivo.
