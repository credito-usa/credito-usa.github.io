# ADSLOTS — Guía de inserción de anuncios AdSense

Estado: **ACTIVO** — Google AdSense instalado (auto-ads) en las 9 páginas.
- Publisher ID: `ca-pub-7245720759435664`
- Script global añadido al `<head>` de todas las páginas.
- `ads.txt` creado con el publisher ID.

## Auto-ads (activado)

El script `adsbygoogle.js` con `client=ca-pub-7245720759435664` está en todas las
páginas. Google decide automáticamente las mejores posiciones ("auto ads").
Puede tardar hasta 1 hora (y requiere que la cuenta esté aprobada y verificada).

## Unidades manuales (opcional, cuando quieras más control)

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
