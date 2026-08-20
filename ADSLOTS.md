# ADSLOTS — Guía de inserción de anuncios AdSense

Estado: **INACTIVO** (no hay cuenta AdSense aprobada todavía). Esta guía documenta las
posiciones óptimas y el código exacto para activar anuncios cuando tengas tu
`ca-pub-XXXXXXXX`.

⚠️ **IMPORTANTE (no saltar):** NO pegues código de AdSense ni muestres anuncios
hasta que Google APRUEBE tu cuenta y te entregue tu `ca-pub-XXXXXXXX`. Poner
anuncios con una cuenta no aprobada (o con el ID de otra persona) viola las
políticas de AdSense y puede acabar en ban permanente del dominio.

---

## Paso 1 — Obtener tu publisher ID

1. Ve a https://adsense.google.com con tu cuenta de Google
   (wilfredoguillensalazar@gmail.com).
2. Registra el sitio `credito-usa.github.io`.
3. Cuando Google apruebe la cuenta, tu ID aparece en "Cuenta → Configuración".
   Formato: `ca-pub-1234567890123456`.

---

## Paso 2 — Crear ads.txt (una sola vez)

Crea el archivo `ads.txt` en la raíz del repo con TU ID real (solo cuando lo tengas):

```
google.com, pub-1234567890123456, DIRECT, f08c47fec0942fa0
```

(El token `f08c47fec0942fa0` es el mismo para todos los publishers de AdSense.)

---

## Paso 3 — Script global (una vez por página)

Añadir en el `<head>` de cada página donde quieras anuncios:

```html
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1234567890123456" crossorigin="anonymous"></script>
```

---

## Paso 4 — Unidades de anuncio en las posiciones marcadas

### Página principal (index.html)
| # | Posición (después de…) | Bloque a insertar |
|---|---|---|
| A | Cierre de la sección `hero` (antes de `<!-- GUÍAS DEL SITIO -->`… no: antes de la sección `alt` del índice) | `<ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-XXXXXXXX" data-ad-slot="AAAA" data-ad-format="auto"></ins>` |
| B | Cierre de la sección `id="que-es"` | ídem (slot BBBB) |
| C | Cierre de la sección `id="puntaje"` | ídem (slot CCCC) |
| D | Antes de la sección `id="faq"` | ídem (slot DDDD) |

Cada unidad creada en AdSense tiene su propio `data-ad-slot`; usa el que te asigne.

### Páginas de guía (facil-aprobacion, tarjetas-con-itin, tarjeta-asegurada, puntaje-de-credito, mejores-tarjetas-hispanos)
| # | Posición | 
|---|---|
| A | Después del primer `<section>` (`id="inicio"`) |
| B | Después de la sección central (tabla comparativa) |
| C | Antes de `id="faq"` |

### Páginas utilitarias (acerca-de, contacto, privacidad)
No recomendado (AdSense no suele aprobar anuncios en páginas utilitarias y
pueden restar calidad). Opcional: una unidad en acerca-de si el tráfico lo justifica.

### Activación del bloque (patrón estándar, después del `<ins>`)
```html
<script>
  (adsbygoogle = window.adsbygoogle || []).push({});
</script>
```

---

## Notas de optimización

- **Formato `auto`** recomendado al inicio: AdSense elige tamaño según viewport.
- Las posiciones A/B (arriba del contenido) suelen tener el mejor CPM.
- No más de 2-3 unidades visibles por página (política de AdSense: densidad de anuncios).
- Los anuncios deben ser distinguibles del contenido; evita pegarlos dentro de tablas o títulos.
- Las páginas ya están preparadas para insertar sin romper el layout (bloques `<ins>` van como elementos de bloque entre secciones).

## Recordatorio

El código de arriba usa `ca-pub-XXXXXXXX` como PLACEHOLDER. Cuando tengas tu ID
real, edita este archivo y activa las unidades. Si me pasas el ID, lo hago yo
en minutos (script + ads.txt + unidades en las posiciones A-D).
