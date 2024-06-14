![Repositorio de GitHub con los materiales](QR_repo.png)

# Introducción a Markdown

Markdown es:

* Un lenguaje de programación muy sencillo
* Una interfaz simplificada de HTML
* El paso previo a obtener documentos PDF, \LaTeX o presentaciones.

## Posibles usos de Markdown

* Los propios ficheros markdown `*.md`, si se dispone de un renderizador como el de [`VSCode`](https://code.visualstudio.com/) o [`Typora`](https://typora.io/) pueden ser útiles por sí mismos.
* Sin embargo, hay que tener cuidado, pues las visualizaciones que ofrecen estos programas no siempre corresponden con lo que posteriormente podemos obtener con pandoc.
* También se utiliza en celdas de texto en notebooks como los de `Jupyter` o `RStudio`.

---

* **El motivo de este taller**: Como paso previo a una compilación con `pandoc`, mediante la cual nuestro sencillo documento de markdown se convertirá en un PDF estilo Latex, en un documento `.tex` (transformando los elementos de sintaxis sencilla de markdown en latex), en una presentación, en un documento HTML...


## Sintaxis Markdown

### Títulos
```
# Título 1
## Título 2
### Título 3
#### Título 4
##### Título 5
```

### Estilos de letra
```
**negrita**
*cursiva*
~~tachada~~
<u>subrayada</u> <!-- Sintaxis HTML -->
```

**negrita**
*cursiva*
~~tachada~~
<u>subrayada</u>

---

### Listas
```
Lista:
* item 1

* item 2

    * item 2.1

    * item 2.2

        * item 2.2.1
```

---

Lista:

* item 1

* item 2

    * item 2.1

    * item 2.2

        * item 2.2.1

### Tablas

| **Nombre**   | **Departamento**    | **Cargo** |
|--------------|---------------------|-----------|
| Juan Antonio | Matemática Aplicada | Predoc    |
| Esther       | Genética            | Titular   |

---

### Bloques de Código

**Python**
```python
def suma(a,b):
    """Función suma
        Input: Dos números enteros o reales a y b
        Output: La suma de los números a y b (a+b)
    """
    return a + b

a = 1
b = 2
print("La suma a + b vale " + str(suma(a,b)))
```

---

**C++**
```c++
float suma(float a, float b) {
    return a + b;
}
int main() {
    int a = 1, b = 2;
    cout << "La suma a + b vale" << suma(a,b);
}
```

---

**HTML**
```html
<html>
    <head>
        ...
    </head>
    <body>
        ...
    </body>
</html>
```

También es posible incluir *inline* pequeños fragmentos de código `de esta forma`, para ello se usan los caracteres \`\`. Por ejemplo: Este fichero se llama `taller_pandoc.md`.


### HTML y Latex incrustado

Podemos utilizar cualquier etiqueta HTML y funcionará de la misma manera que la sintaxis propia de Markdown, mira la siguiente lista:

<ul>
    <li>Item 1</li>
    <li><b>Item 2 en negrita</b></li>
    <li><spam style="color:blue;">Item 3 en azul</span></li>
</ul>

---

También podemos utilizar expresiones de \LaTeX, y si posteriormente compilamos este documento con \LaTeX podemos también incluir cualquier elemento propio de la sintaxis \LaTeX, pero con cuidado, pues si producimos un elemento de otro tipo los elementos propios de latex no siempre funcionarán. 

Por ejemplo, sabemos que, si queremos encontrar las raíces reales (en $\mathbb R$) o complejas (en $\mathbb C$) de la ecuación de segundo grado $ax^2 + bx + c = 0$, podemos utilizar la expresión
\begin{equation}
\label{eq:segundo-grado}
x_i = \dfrac{-b \pm \sqrt{b^2-4ac}}{2a}, \ \ i=1,2
\end{equation}
y tenemos que, si $x_1$ y $x_2$ son las soluciones de \eqref{eq:segundo-grado}, entonces podemos escribir
$$
ax^2 + bx + c = a(x-x_1)(x-x_2)
$$


# Generación de materiales docentes con Pandoc

## ¿Qué es y para qué sirve pandoc?

Consultar su [página web](https://www.pandoc.org/) y su [documentación](https://pandoc.org/MANUAL.html).

> *"Pandoc: a universal document converter. If you need to convert files from one markup format into another, pandoc is your swiss-army knife."*

Pandoc es un programa que transforma documentos escritos en un determinado lenguaje de etiquetas ('markup language') en otro distinto. Admite una gran cantidad de transformaciones, pero las más utilizadas son:

* Markdown $\rightarrow$ \LaTeX
* Markdown $\rightarrow$ PDF (a través de Latex)
* Markdown $\rightarrow$ HTML

**Requisitos:** Compilador de Latex ([miktex](https://miktex.org/)), y por supuesto [pandoc](https://pandoc.org/installing.html).

## Ejemplos de uso

Como hemos dicho anteriormente, a partir de un documento markdown podemos generar un documento latex, y también un PDF compilado por latex. Tan solo necesitamos la orden

```bash
# Si se desea un PDF
pandoc -t latex -o <nombre_del_archivo>.pdf \
    [--metadata-file=<nombre_archivo_conf>.yaml] \
    <nombre_del_archivo>.md

# Si se desea un .tex  
pandoc -s -t latex -o <nombre_del_archivo>.tex \
    [--metadata-file=<nombre_archivo_conf>.yaml] \
    <nombre_del_archivo>.md
```
---

```bash
# Si se desea un HTML
pandoc -s -o <nombre_del_archivo>.html \
    [--metadata-file=<nombre_archivo_conf>.yaml] \
    <nombre_del_archivo>.md
```

Además de documentos PDF y latex, también podemos crear presentaciones.