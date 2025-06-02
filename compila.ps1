# DOCUMENTOS
# Para el documento PDF
pandoc -t latex -o taller_pandoc.pdf --metadata-file=config2.yaml taller_pandoc.md
# Para documento latex
pandoc -t latex -s -o taller_pandoc.tex --metadata-file=config2.yaml taller_pandoc.md
# Para documento HTML
pandoc --mathjax -s -o taller_pandoc.html --metadata-file=config2.yaml taller_pandoc.md

# PRESENTACIONES
# Presentacion PDF básica
pandoc -t beamer -o .\presentacion.pdf .\presentacion.md
# Presentacion PDF con toc y nivel 2
pandoc -t beamer --toc -o .\presentacion.pdf --slide-level=2 .\presentacion.md
# Comando para la presentación del seminario
pandoc -t beamer --toc -o .\presentacion_pandoc.pdf --slide-level=3 --metadata-file=config1.yaml .\presentacion_pandoc.md