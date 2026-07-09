# Sistema de diseño y clones de código — SolNatura

Este repositorio contiene el **sistema de diseño de la marca SolNatura** (solnatura.co) y
**clones fieles en código** de sus páginas, extraídos directamente del sitio real (no de
pantallazos). El objetivo es que una herramienta de diseño pueda reproducir con exactitud el
estilo de la marca al crear páginas complementarias.

> **Contexto:** SolNatura es un proyecto de Soluciones basadas en la Naturaleza (SbN) en
> Colombia, por encargo del Ministerio de Medio Ambiente de Alemania (fondos IKI), implementado
> por GIZ, Fondo Acción y TNC. Sitio construido en WordPress + Elementor.

---

## 📁 Estructura

```
.
├── sistema-diseno-solnatura/      # Manual de marca (design tokens)
│   ├── SISTEMA-DE-DISENO.md        # Colores, tipografías, layout + prompt listo
│   ├── guia-visual.html            # Guía visual (abrir en navegador)
│   └── assets/                     # Logos e ilustraciones vectoriales reales (.svg)
│
└── clon-solnatura/                # Clones fieles de páginas (HTML+CSS+imágenes offline)
    ├── LEEME-CLON.md               # Cómo usar los clones + anatomía de secciones
    ├── que-son-soluciones-sbn/     # Clon 1: "¿Qué son soluciones SbN?"
    │   ├── index.html              #   → la página (fuente de verdad)
    │   └── assets/                 #   → 102 archivos (CSS, imágenes, SVG, fuentes, JS)
    ├── elementos-claves-sbn/       # Clon 2: "Elementos clave para implementación de SbN"
    │   ├── index.html
    │   └── assets/                 #   → 113 archivos
    ├── _referencia-visual/         # Capturas renderizadas (prueba de fidelidad)
    └── _herramientas/
        └── clonar-pagina.sh        # Script para clonar otras páginas del sitio
```

---

## 🎨 Sistema de diseño (resumen)

**Colores de marca:** verde `#61CE70` · verde hoja `#6DBE6F` · verde bosque `#377E4C` ·
naranja `#FF5900` · terracota `#E16E45` · amarillo sol `#FFB700` · rosa `#F9CCCA` · teal `#6CC9D5`
**Neutrales:** tinta `#141414` · gris `#7A7A7A` · crema `#F4EDED` · blanco `#FFFFFF`
**Tipografía:** títulos en **Roboto Slab** (serif) · cuerpo en **Roboto** (sans-serif)

Detalle completo en [`sistema-diseno-solnatura/SISTEMA-DE-DISENO.md`](sistema-diseno-solnatura/SISTEMA-DE-DISENO.md).

---

## 🤖 Cómo usar esto con una herramienta de diseño

1. Dale acceso a este repositorio completo.
2. Indícale que la **fuente de verdad** del diseño son los `index.html` dentro de `clon-solnatura/`
   y el manual `SISTEMA-DE-DISENO.md`.
3. Prompt sugerido:

> Analiza el código real de estas páginas de SolNatura (los `index.html` y sus `assets/`).
> Es la fuente de verdad del diseño de la marca. Crea una NUEVA subpágina para _[tu tema]_ que
> use EXACTAMENTE el mismo sistema visual: los mismos colores, las fuentes Roboto Slab (títulos)
> y Roboto (cuerpo), las mismas **olas onduladas** (shape dividers) entre secciones, el mismo
> estilo de **tarjetas** (ícono + título verde + texto), el mismo header y el mismo footer con
> los logos de aliados. **No inventes cuadros ni elementos que no aparezcan en este código.**

---

## 👀 Ver los clones renderizados

Los `index.html` cargan muchos recursos, así que el navegador los bloquea con doble clic.
Para verlos: `npx serve clon-solnatura/que-son-soluciones-sbn` y abre la URL que muestre.
O revisa las capturas en `clon-solnatura/_referencia-visual/`.

---

*Contenido extraído del sitio público solnatura.co para trabajo interno de diseño de marca.*
