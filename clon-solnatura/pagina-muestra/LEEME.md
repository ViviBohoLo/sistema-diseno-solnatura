# Página de muestra — plantilla lista para copiar

Esta es una **subpágina de ejemplo** construida con el sistema de diseño de SolNatura:
colores, tipografías (Roboto Slab + Roboto), **olas onduladas**, logo, íconos e ilustraciones
**reales** de la marca. Verificada renderizándola (idéntica en estilo al sitio real).

**El diseño es el correcto; los textos y las imágenes son de ejemplo.** El tema inventado es un
"Encuentro Regional SbN" solo para mostrar los componentes.

## Cómo usarla con tu herramienta de diseño

Es la forma más directa de que la herramienta acierte: **no le pidas que interprete, pídele que copie.**

> Usa `clon-solnatura/pagina-muestra/index.html` como plantilla base. Conserva EXACTAMENTE su
> estructura, colores, tipografías, las olas onduladas entre secciones, el estilo de tarjetas,
> el header y el footer. Cambia ÚNICAMENTE los textos y las imágenes por los de _[mi tema]_.
> No agregues cuadros ni elementos que no estén en esta plantilla.

## Bloques incluidos (para reutilizar por separado)

1. **Header** transparente sobre foto: logo + menú + botón "Inscríbete".
2. **Hero** con foto de fondo, kicker amarillo, título en Roboto Slab y tarjeta de intro translúcida.
3. **Ola divisoria** rosada (SVG editable — cambia el color en el atributo `fill`).
4. **Sección de contenido** sobre fondo de color de marca.
5. **Tarjetas** (ficha de color + ícono + título verde + texto) en grilla responsive.
6. **Banda de datos** verde con cifras destacadas en amarillo.
7. **Chips de territorios**.
8. **Footer** oscuro con logos de aliados (IKI · GIZ · Fondo Acción).

## Editar

- Un solo archivo `index.html` con todo el CSS adentro (fácil de leer y adaptar).
- Colores en variables CSS al inicio (`:root`) — cambia ahí para ajustar toda la página.
- Recursos en `assets/` (logo, íconos, foto, logos de aliados) — reemplázalos por los tuyos.
- Para ver: `npx serve` en esta carpeta, o abre `_referencia-visual/pagina-muestra-renderizada.jpeg`.
