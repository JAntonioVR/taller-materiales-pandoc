# Herramientas para la elaboración rápida de materiales docentes
Material del seminario "Herramientas para la elaboración rápida de materiales docentes", impartido en el marco del Equipo Docente de Formación Inicial de la Facultad de Ciencias de la Universidad de Granada (Curso 2023/2024)

El funcionamiento es muy sencillo. Mediante las órdenes del archivo `compila.ps1` pueden generarse presentaciones y documentos PDF, HTML o tex a partir de los documentos `*.md` y de los archivos de configuración `*.yaml`.

Por ejemplo, para generar un documento de texto PDF a partir del documento de markdown `taller_pandoc.md`, podemos usar los metadatos del archivo `config2.yaml` y la orden 
```bash
pandoc -t latex -o taller_pandoc.pdf --metadata-file=config2.yaml taller_pandoc.md
```
para generar el archivo `taller_pandoc.pdf`.
