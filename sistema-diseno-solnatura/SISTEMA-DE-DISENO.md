# Sistema de Diseño — SolNatura (solnatura.co)

> Extraído directamente del código real del sitio (WordPress + Elementor), no de pantallazos.
> Todos los valores son exactos. Copia y pega esto en tu herramienta de diseño.

---

## 1. La marca en una frase

**SolNatura** — "Promoviendo Soluciones basadas en la Naturaleza (SbN) para un desarrollo
territorial resiliente al clima, bajo en carbono y biodiverso". Proyecto ambiental en Colombia,
por encargo del Ministerio de Medio Ambiente de Alemania (fondos IKI), implementado por el
consorcio **GIZ + Fondo Acción + TNC**.

**Tono visual:** natural, cálido, esperanzador, cercano al territorio (páramo colombiano:
frailejón, colibrí, sol). Ilustración vectorial plana + fotografía documental real.

---

## 2. Paleta de colores (valores exactos)

### Colores de marca (los que definen la identidad)

| Rol | HEX | Muestra | Uso |
|-----|-----|---------|-----|
| **Verde principal** | `#61CE70` | 🟢 verde brillante | Botones, acentos, íconos, títulos destacados |
| **Verde medio** | `#6DBE6F` | 🟢 verde hoja | Fondos suaves, secciones |
| **Verde bosque** | `#377E4C` | 🟩 verde oscuro | Texto sobre claro, detalles |
| **Verde salvia** | `#5BA969` | 🟢 | Variación, gráficos |
| **Naranja vivo** | `#FF5900` | 🟠 naranja | Llamados a la acción, energía, resaltados |
| **Terracota** | `#E16E45` | 🟧 | Ilustración, acentos cálidos |
| **Amarillo dorado** | `#FFB700` | 🟡 sol | Sol, destellos, highlights |
| **Rosa suave** | `#F9CCCA` | 🌸 | Fondos suaves, ilustración |
| **Teal / turquesa** | `#6CC9D5` | 🩵 agua | Agua, cielo, frescura |
| **Teal apagado** | `#6CA1AD` | 🩵 | Variación fría |

### Neutrales

| Rol | HEX | Uso |
|-----|-----|-----|
| Negro casi puro | `#141414` | Títulos, texto principal |
| Negro | `#000000` | Texto, contornos |
| Gris texto | `#7A7A7A` | Párrafos secundarios |
| Gris medio | `#B9B9B9` | Bordes, líneas |
| Gris claro | `#D8D8D8` | Separadores |
| Blanco hueso cálido | `#F4EDED` | Fondos de sección |
| Blanco | `#FFFFFF` | Fondo base |

> **Nota:** `#6EC1E4` (azul) y `#54595F` (gris) aparecen en el CSS pero son los valores
> *por defecto de Elementor* — casi no se usan. No los tomes como color de marca.

---

## 3. Tipografía (fuentes reales del sitio)

Ambas son **Google Fonts gratuitas** — puedes instalarlas o cargarlas en cualquier herramienta.

| Uso | Fuente | Peso |
|-----|--------|------|
| **Títulos / encabezados** | **Roboto Slab** (serif) | 400 (regular) |
| **Texto de cuerpo** | **Roboto** (sans-serif) | 400 (regular) |
| **Texto destacado / primario** | **Roboto** | 600 (semibold) |
| **Acentos / botones** | **Roboto** | 500 (medium) |

- Cargar Roboto: https://fonts.google.com/specimen/Roboto
- Cargar Roboto Slab: https://fonts.google.com/specimen/Roboto+Slab

**Jerarquía:** Los títulos usan la serif (Roboto Slab) para dar carácter editorial/institucional;
el cuerpo usa Roboto sans para legibilidad. Esa mezcla serif-título + sans-cuerpo es clave para
que "se vea como SolNatura".

---

## 4. Logos y recursos gráficos (descargados en `/assets`)

Todos son **vectoriales (.svg)** salvo indicación — escalan sin perder calidad, ideales para diseño.

| Archivo | Qué es |
|---------|--------|
| `Logo.svg` | Logo principal SolNatura (vectorial) |
| `Logo-FondoAccion.png` | Logo Fondo Acción (aliado, alta resolución) |
| `banner-FA.png` | Banner / lockup Fondo Acción |
| `Frailejon.svg` | Ilustración de frailejón (planta emblema del páramo) |
| `colibr.svg` | Ilustración de colibrí |
| `Sol.svg` | Ilustración del sol |
| `hand.svg` | Ilustración de mano |
| `tree.svg` | Ilustración de árbol |
| `mapita-2.svg` | Mapa estilizado (territorio Colombia) |
| `Loca.svg`, `Loopa.svg`, `Asset-3.svg`, `Asset-4.svg`, `2-1.svg`, `5.svg` | Elementos/íconos decorativos |
| `foto-principal-Porfirio.jpg` | Fotografía documental principal (persona real, estilo del sitio) |

**Estilo de ilustración:** vectores planos, formas orgánicas y redondeadas, colores de la paleta
de arriba, temática de naturaleza/páramo colombiano. **Estilo fotográfico:** documental, personas
reales del territorio, luz natural, cálido.

---

## 5. Estructura de la página (para replicar el layout)

Secciones observadas en la home:

1. **Encabezado** con logo + menú hamburguesa + logos de aliados (GIZ / Fondo Acción / TNC).
2. **Hero** — carrusel/slider de diapositivas ("Esta es la primera diapositiva…") con ilustración + titular.
3. **¿Qué es SolNatura?** — bloque de texto introductorio sobre el proyecto.
4. **Elementos clave para la implementación de SbN** — bloques con las preguntas guía:
   ¿DÓNDE? · ¿CÓMO? · ¿QUIÉNES? · ¿CUÁNDO?
5. **Los 4 pilares/pasos** con íconos:
   - Diseñando SbN desde lo local
   - Fortaleciendo el apoyo financiero
   - Implementando SbN
   - Mejorando las condiciones necesarias
6. **Experiencias SbN que inspiran** — casos/testimonios.
7. **Mecanismo independiente de quejas (IKI ICM)** — bloque institucional.
8. **Pie de página** con logos de aliados y enlaces.

---

## 6. Cómo usar esto con tu herramienta de diseño

**El problema con los PDF/pantallazos:** una imagen no contiene colores exactos, ni el nombre
de la fuente, ni los vectores. La herramienta tiene que "adivinar" y por eso falla.

**La solución (este paquete):** valores exactos + assets vectoriales reales. Dale a tu
herramienta **este documento + la carpeta `/assets`**. Ahora tiene la verdad, no una foto.

### Prompt listo para pegar en tu herramienta de diseño

```
Crea una página web complementaria para el proyecto SolNatura, siguiendo su
sistema de diseño exacto:

PALETA: verde principal #61CE70, verde hoja #6DBE6F, verde bosque #377E4C,
naranja vivo #FF5900, terracota #E16E45, amarillo sol #FFB700, rosa suave #F9CCCA,
teal #6CC9D5. Neutrales: texto #141414, gris #7A7A7A, fondo blanco #FFFFFF,
fondo de sección crema #F4EDED.

TIPOGRAFÍA: títulos en Roboto Slab (serif); cuerpo en Roboto (sans-serif).
Títulos con carácter editorial, cuerpo muy legible.

ESTILO: naturaleza / páramo colombiano. Ilustraciones vectoriales planas y
orgánicas (frailejón, colibrí, sol, árbol, mapa). Fotografía documental real
de personas del territorio, luz cálida natural. Tono esperanzador e institucional.

LOGOS/ASSETS: usa los archivos SVG adjuntos (Logo.svg y las ilustraciones).

LAYOUT: hero con ilustración + titular, bloques de contenido con íconos,
sección de "experiencias que inspiran", pie con logos de aliados (GIZ, Fondo
Acción, TNC).
```

---

## 7. Ficha técnica (para referencia)

- **Plataforma:** WordPress 7.0 + Elementor Pro 4.1.4, tema Hello Elementor.
- **Idioma:** español (Colombia).
- **Fuentes:** Google Fonts (Roboto, Roboto Slab) — gratuitas.
- Los colores provienen de los *Global Colors* de Elementor (identidad definida en el sitio).
