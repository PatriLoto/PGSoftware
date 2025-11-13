# mi proyecto
  
## Descripción
[Descripción breve del proyecto]

## Estructura del proyecto
```
mi proyecto/
├── plan_gestion_software.qmd  # Plan de gestión principal
├── docs/                      # Documentación adicional  
├── src/                       # Código fuente
├── tests/                     # Pruebas
├── data/                      # Datos del proyecto
└── output/                    # Resultados y outputs
```

## Cómo usar este proyecto

# OPCIÓN DE USO 1:
1. Descarga la plantilla del plan de gestión 
2. Completa el plan de gestión de software en `plan_gestion_software.qmd`
3. Renderiza el documento con: `quarto render plan_gestion_software.qmd`

# OPCIÓN DE USO 2:
1. Genera el proyecto completo, se creará la estructura estándar de un proyecto + la plantilla del plan de gestión del software
2. Completa el plan de gestión de software en `plan_gestion_software.qmd`
3. Renderiza el documento con: `quarto render plan_gestion_software.qmd`
4. Desarrolla tu código en la carpeta `src/`
5. Añade pruebas en la carpeta `tests/`
6. Añade datos en la carpeta `data/`
7. Añade los documentos como manual o guía de usuario en la carpeta `docs/`


## Renderizado
Para generar el documento en diferentes formatos:
```bash
# HTML (por defecto)
quarto render plan_gestion_software.qmd

# PDF
quarto render plan_gestion_software.qmd --to pdf

# Word
quarto render plan_gestion_software.qmd --to docx
```

