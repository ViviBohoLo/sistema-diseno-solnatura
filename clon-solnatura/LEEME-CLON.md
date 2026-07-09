# Clon fiel — SolNatura · "¿Qué son soluciones SbN?"

Espejo **exacto en código** de la página https://solnatura.co/que-son-soluciones-sbn/
Descargado del sitio real: HTML + todo el CSS + 102 imágenes/íconos/fuentes/JS.
**100% offline y autónomo** (0 errores, verificado renderizándolo y comparándolo con el sitio real).

Elegí esta página porque es la más completa: tiene el hero con foto, las **olas onduladas
rosadas** (shape dividers), la imagen circular tipo engranaje, la retícula de ~30 tarjetas de
"Medidas SbN Priorizadas" (manglares, páramos, corredores verdes, agroforestería…), y el pie
con los logos de aliados. Justo los elementos que a tu herramienta se le escapaban.

---

## Qué hay en esta carpeta

```
clon-solnatura/
├── que-son-soluciones-sbn/
│   ├── index.html          ← la página clonada (ábrela / compártela)
│   └── assets/             ← 102 archivos: CSS, imágenes reales, SVG, fuentes, JS
├── _referencia-visual/
│   ├── clon-renderizado.jpeg   ← cómo se ve MI clon (prueba de que quedó fiel)
│   └── sitio-real-hero.jpeg    ← el sitio real, para comparar
└── LEEME-CLON.md           ← este archivo
```

---

## Cómo abrir el clon

El navegador bloquea abrir `index.html` con doble clic (protocolo `file://`) porque carga
muchos recursos. Dos formas:

**Opción rápida — ver la referencia:** abre `_referencia-visual/clon-renderizado.jpeg`.
Es la página completa renderizada.

**Opción real — abrirla en el navegador:** desde una terminal en esta carpeta:
```
npx serve que-son-soluciones-sbn
```
y abre la dirección que te muestre (ej. http://localhost:3000). Se verá idéntica al sitio.

---

## Cómo usarlo con tu herramienta de diseño ("Claude Design")

Esto es lo que le faltaba: **no le des pantallazos, dale el código real.**

1. Comparte la carpeta `que-son-soluciones-sbn/` completa (el `index.html` + `assets/`).
2. Instrucción sugerida:

```
Adjunto el código HTML real de una página de SolNatura (index.html) con todos sus
recursos en /assets. Es la fuente de verdad del diseño de la marca.

Analiza su estructura, colores, tipografías, espaciados, las olas/shape-dividers,
las tarjetas y los íconos. Luego crea una NUEVA subpágina para [tu tema] que use
EXACTAMENTE el mismo sistema visual: mismos colores, mismas fuentes (Roboto Slab
para títulos, Roboto para cuerpo), las mismas olas onduladas entre secciones, el
mismo estilo de tarjetas con ícono + título + texto, y el mismo header y footer.
No inventes cuadros ni elementos que no estén en este código.
```

3. Súmale el manual de marca que ya tienes en `../sistema-diseno-solnatura/`.

> **Por qué ahora sí funciona:** el `index.html` contiene los valores exactos (hex de cada
> color, nombre de cada fuente, medidas, los SVG de las olas dibujados en código). La
> herramienta ya no adivina a partir de píxeles: lee la verdad.

---

## Anatomía de la página (para replicar el layout)

| # | Sección | Elementos clave |
|---|---------|-----------------|
| 1 | **Header** | Logo SolNatura + menú + breadcrumb "Inicio → ¿Qué son soluciones SbN?" |
| 2 | **Hero** | Foto a pantalla completa (ave del humedal) + titular grande + 3 botones redondeados + retícula de íconos (mano, flor, ojo, árbol) |
| 3 | **Ola divisoria rosada** | Shape divider ondulado (color rosa #F9CCCA) — el elemento decorativo que faltaba |
| 4 | **Intro "¿Qué son las medidas SbN?"** | Título + imagen circular tipo engranaje con foto dentro |
| 5 | **"Medidas SbN Priorizadas"** | Retícula de ~30 tarjetas: título verde + párrafo (manglares, páramos, humedales, corredores verdes, restauración de playas, ecoturismo…) |
| 6 | **Bloques con divisores de color** | Secciones separadas por franjas/olas de color |
| 7 | **Formulario "Comentarios"** | Campos + patrón geométrico decorativo |
| 8 | **Footer** | Logos de aliados: IKI · TNC · SolNatura · GIZ · Fondo Acción |

**Tipografía:** títulos en Roboto Slab (serif), cuerpo en Roboto (sans).
**Layout:** contenedores flex de Elementor; tarjetas en grilla responsive.
```
```
