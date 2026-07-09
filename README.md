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
    ├── home/                       # Clon: Inicio (hero + mapa + 5 tarjetas de navegación)
    ├── que-son-soluciones-sbn/     # Clon: "¿Qué son soluciones SbN?" (olas rosadas, ~30 tarjetas)
    ├── elementos-claves-sbn/       # Clon: "Elementos clave" (sol naranja, mapas, tarjetas 01-04)
    ├── estructura-del-fondo/       # Clon: "Estructura del fondo SolNatura"
    ├── fondo-capital-privado/      # Clon: "Fondo de capital privado"
    ├── que-es-cluster/             # Clon: "Qué es un clúster para promover SbN"
    │   └── (cada carpeta: index.html + assets/ con CSS, imágenes, SVG, fuentes, JS)
    ├── _referencia-visual/         # Capturas renderizadas (prueba de fidelidad)
    └── _herramientas/
        └── clonar-pagina.sh        # Script para clonar otras páginas del sitio
```

**6 páginas clonadas**, todas verificadas renderizándolas (0 errores, idénticas al sitio real).

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
3. Prompt sugerido (versión "copia, no reinterpretes"):

> Estas 6 páginas (`clon-solnatura/*/index.html` con sus `assets/`) son el código REAL del
> sitio SolNatura. **No las rediseñes ni las interpretes: reutilízalas.**
>
> Para crear la nueva subpágina de _[tu tema]_:
> 1. Toma como base la página clonada más parecida a lo que necesito (dime cuál si dudas).
> 2. **Copia su estructura tal cual**: el mismo `<header>`, el mismo `<footer>`, los mismos
>    contenedores, las mismas **olas onduladas** (shape dividers SVG), las mismas clases CSS.
> 3. Cambia ÚNICAMENTE los textos y las imágenes por los de mi tema. Conserva colores,
>    tipografías (Roboto Slab títulos / Roboto cuerpo), espaciados y tarjetas exactamente igual.
> 4. **Prohibido inventar** cuadros, bordes, sombras o elementos que no existan en estos clones.
>
> Si un componente que necesito no está en ninguna página, dímelo antes de inventarlo.

---

## 👀 Ver los clones renderizados

Los `index.html` cargan muchos recursos, así que el navegador los bloquea con doble clic.
Para verlos: `npx serve clon-solnatura/que-son-soluciones-sbn` y abre la URL que muestre.
O revisa las capturas en `clon-solnatura/_referencia-visual/`.

---

*Contenido extraído del sitio público solnatura.co para trabajo interno de diseño de marca.*
