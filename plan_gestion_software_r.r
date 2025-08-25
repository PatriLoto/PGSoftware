# Generador de Plantilla Quarto para Plan de Gestión de Software de Investigación
# Autor: [Tu nombre]
# Fecha: [Fecha actual]

library(here)

# Función para crear la plantilla Quarto
crear_plantilla_plan_gestion <- function(nombre_archivo = "plan_gestion_software.qmd", 
                                       directorio = ".", 
                                       titulo_proyecto = "Plan de Gestión de Software de Investigación",
                                       autor = "[Nombre del Investigador]",
                                       fecha = Sys.Date()) {
  
  # Crear el contenido de la plantilla
  contenido <- paste0('---
title: "', titulo_proyecto, '"
author: "', autor, '"
date: "', fecha, '"
format: 
  html:
    toc: true
    toc-depth: 3
    theme: cosmo
    code-fold: false
    embed-resources: true
  pdf:
    toc: true
    number-sections: true
    colorlinks: true
  docx:
    toc: true
    number-sections: true
lang: es
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE, warning = FALSE, message = FALSE)
library(knitr)
library(DT)
```

# Introducción

Este documento presenta el Plan de Gestión de Software para el proyecto de investigación **[NOMBRE DEL PROYECTO]**. El objetivo es establecer las mejores prácticas para el desarrollo, documentación, preservación y difusión del software desarrollado durante la investigación.

---

# 1. Descripción del Software

## Nombre del proyecto
**[Escribe el nombre del software o del proyecto de investigación]**

## Identificación
[Describe de forma breve qué hace el software, su propósito y los problemas que resuelve.]

```{r descripcion-table}
# Tabla resumen del proyecto
descripcion_data <- data.frame(
  Aspecto = c("Nombre del Software", 
              "Versión Inicial", 
              "Propósito Principal", 
              "Usuarios Objetivo",
              "Dominio de Aplicación"),
  Detalle = c("[A completar]", 
              "[A completar]", 
              "[A completar]", 
              "[A completar]",
              "[A completar]")
)

kable(descripcion_data, 
      caption = "Información General del Software",
      col.names = c("Aspecto", "Detalle"))
```

## Lenguaje(s) de programación y tecnologías
[Enumera los lenguajes, librerías, frameworks y otras tecnologías que se utilizarán]

**Ejemplos:**
- R (versión 4.3+)
- Python 3.9+
- Librerías principales: tidyverse, ggplot2, shiny
- Base de datos: PostgreSQL
- Frameworks: Quarto, RMarkdown

## Estado de desarrollo
- [ ] Software nuevo
- [ ] Basado en proyecto existente  
- [ ] Versión beta
- [ ] En producción
- [ ] Otro: ___________

---

# 2. Requisitos de Desarrollo

## Control de versiones
**Sistema:** [Git / SVN / Mercurial]  
**Repositorio principal:** [URL del repositorio]

```{r git-workflow}
# Ejemplo de flujo de trabajo con Git
git_workflow <- data.frame(
  Rama = c("main", "develop", "feature/*", "hotfix/*"),
  Propósito = c("Código estable de producción",
                "Integración de nuevas características", 
                "Desarrollo de características específicas",
                "Correcciones urgentes"),
  stringsAsFactors = FALSE
)

kable(git_workflow, 
      caption = "Estrategia de Ramas en Git")
```

## Entorno de desarrollo
[Describe cómo se gestionará la reproducibilidad del entorno]

**Herramientas recomendadas:**
- `renv` para gestión de dependencias en R
- Docker para containerización
- `conda` environments para Python
- Virtual environments

```{r entorno-setup, eval=FALSE, echo=TRUE}
# Ejemplo de configuración de entorno R
install.packages("renv")
renv::init()
renv::snapshot()
```

## Gestión de dependencias
[Menciona cómo se registrarán las dependencias del proyecto]

- **R:** Archivo `renv.lock`
- **Python:** `requirements.txt` o `environment.yml`
- **Sistema:** Dockerfile

---

# 3. Calidad y Pruebas

## Pruebas del código
[Describe el plan de pruebas]

```{r testing-strategy}
# Estrategia de pruebas
testing_data <- data.frame(
  `Tipo de Prueba` = c("Pruebas Unitarias", 
                       "Pruebas de Integración", 
                       "Pruebas de Sistema",
                       "Pruebas de Rendimiento"),
  Herramienta = c("testthat (R), pytest (Python)", 
                  "Integración continua (GitHub Actions)", 
                  "Pruebas manuales y automatizadas",
                  "Benchmarking y profiling"),
  Frecuencia = c("Cada commit", 
                 "Antes de cada merge", 
                 "Antes de cada release",
                 "Mensual o por milestone")
)

kable(testing_data, 
      caption = "Estrategia de Pruebas")
```

## Documentación del código
[Explica cómo se documentará el código internamente]

**Estándares:**
- Uso de docstrings/roxygen2 en cada función
- Comentarios inline para lógica compleja
- Documentación de APIs
- Ejemplos de uso

```{r doc-example, eval=FALSE, echo=TRUE}
#\' Función ejemplo con documentación roxygen2
#\' 
#\' @param x Vector numérico de entrada
#\' @param method Método de cálculo ("mean" o "median")
#\' @return Valor calculado
#\' @examples
#\' calcular_estadistica(c(1,2,3,4,5), "mean")
#\' @export
calcular_estadistica <- function(x, method = "mean") {
  # Implementación de la función
}
```

## Documentación para el usuario
[Detalla cómo se creará la documentación para usuarios]

**Componentes:**
- README.md detallado
- Guías de instalación
- Tutoriales paso a paso
- Documentación de API
- FAQ y troubleshooting

---

# 4. Colaboración y Acceso

## Licencia de software
**Licencia seleccionada:** [MIT / GPL v3 / Apache 2.0 / BSD / Otra]

```{r license-comparison}
# Comparación de licencias comunes
licenses_data <- data.frame(
  Licencia = c("MIT", "Apache 2.0", "GPL v3", "BSD 3-Clause"),
  Permisividad = c("Muy permisiva", "Permisiva", "Copyleft", "Permisiva"),
  `Uso Comercial` = c("Sí", "Sí", "Sí*", "Sí"),
  `Requiere Atribución` = c("Sí", "Sí", "Sí", "Sí")
)

kable(licenses_data, 
      caption = "Comparación de Licencias de Software")
```

## Repositorio público
**Plataforma:** [GitHub / GitLab / Bitbucket]  
**URL:** [URL del repositorio público]

## DOI para citación
**Servicio:** [Zenodo / figshare / Otros]  
**DOI:** [Se asignará al momento de la publicación]

---

# 5. Preservación y Difusión

## Plan de archivo a largo plazo
[Describe estrategias de preservación]

```{r preservation-plan}
# Plan de preservación
preservation_data <- data.frame(
  Estrategia = c("Repositorio institucional", 
                 "Zenodo", 
                 "Software Heritage",
                 "Backup local"),
  Frecuencia = c("Cada release mayor", 
                 "Cada release", 
                 "Automático",
                 "Semanal"),
  Responsable = c("[Nombre]", 
                  "[Nombre]", 
                  "Automático",
                  "[Nombre]")
)

kable(preservation_data, 
      caption = "Estrategia de Preservación")
```

## Plan de difusión
[Enumera estrategias de difusión]

**Canales de difusión:**
- [ ] Publicación en JOSS (Journal of Open Source Software)
- [ ] Presentación en conferencias científicas
- [ ] Redes sociales académicas (ResearchGate, Academia.edu)
- [ ] Blog posts y artículos divulgativos
- [ ] Workshops y seminarios
- [ ] Colaboraciones con otros investigadores

---

# 6. Cronograma y Hitos

```{r timeline}
# Cronograma de desarrollo
timeline_data <- data.frame(
  Hito = c("Configuración inicial del proyecto",
           "Primera versión funcional (MVP)",
           "Implementación de pruebas",
           "Documentación completa",
           "Primera release pública",
           "Publicación científica"),
  `Fecha Objetivo` = c("[Fecha]", "[Fecha]", "[Fecha]", 
                       "[Fecha]", "[Fecha]", "[Fecha]"),
  Estado = c("[ ] Pendiente", "[ ] Pendiente", "[ ] Pendiente",
             "[ ] Pendiente", "[ ] Pendiente", "[ ] Pendiente")
)

kable(timeline_data, 
      caption = "Cronograma de Desarrollo")
```

---

# 7. Recursos y Presupuesto

## Recursos humanos
- **Desarrollador principal:** [Nombre y dedicación]
- **Colaboradores:** [Lista de colaboradores]
- **Revisores de código:** [Nombres]

## Recursos técnicos
- **Hardware:** [Especificaciones necesarias]
- **Software:** [Licencias y herramientas]
- **Servicios cloud:** [Si aplica]

```{r budget-estimate}
# Estimación de costos (opcional)
budget_data <- data.frame(
  Concepto = c("Tiempo de desarrollo", 
               "Servicios cloud",
               "Licencias de software",
               "Hardware adicional"),
  `Costo Estimado` = c("[Horas × tarifa]", 
                       "[$/mes]", 
                       "[$/año]",
                       "[$ total]"),
  Notas = c("Tiempo del investigador principal",
            "GitHub Pro, servidores",
            "Si se requieren licencias propietarias",
            "Hardware especializado si es necesario")
)

kable(budget_data, 
      caption = "Estimación de Recursos")
```

---

# 8. Evaluación y Métricas

## Métricas de calidad
- Cobertura de pruebas: > 80%
- Documentación: Todas las funciones públicas documentadas
- Issues abiertas: < 10% del total
- Tiempo de resolución de bugs: < 1 semana

## Métricas de impacto
- Número de descargas/clones
- Citas académicas
- Contribuciones externas
- Uso en otros proyectos

---

# Notas y Observaciones

[Espacio para notas adicionales, consideraciones especiales, o información relevante específica del proyecto]

---

**Fecha de última actualización:** `r Sys.Date()`  
**Versión del documento:** 1.0  
**Próxima revisión:** [Fecha de próxima revisión programada]

---

*Este documento es un documento vivo que debe ser revisado y actualizado regularmente durante el ciclo de vida del proyecto.*')
  
  # Crear la ruta completa del archivo
  ruta_completa <- file.path(directorio, nombre_archivo)
  
  # Escribir el contenido al archivo
  writeLines(contenido, ruta_completa, useBytes = TRUE)
  
  # Mensaje de confirmación
  cat("✓ Plantilla Quarto creada exitosamente en:", ruta_completa, "\n")
  cat("✓ Para renderizar el documento, ejecuta: quarto render", nombre_archivo, "\n")
  cat("✓ Puedes abrir el archivo en RStudio o tu editor preferido para comenzar a completarlo.\n")
  
  return(ruta_completa)
}

# Función auxiliar para crear un proyecto completo
crear_proyecto_completo <- function(nombre_proyecto, directorio_base = ".") {
  
  # Crear directorio del proyecto
  dir_proyecto <- file.path(directorio_base, nombre_proyecto)
  if (!dir.exists(dir_proyecto)) {
    dir.create(dir_proyecto, recursive = TRUE)
  }
  
  # Crear subdirectorios
  subdirs <- c("docs", "src", "tests", "data", "output")
  for (subdir in subdirs) {
    dir_path <- file.path(dir_proyecto, subdir)
    if (!dir.exists(dir_path)) {
      dir.create(dir_path, recursive = TRUE)
    }
  }
  
  # Crear la plantilla principal
  crear_plantilla_plan_gestion(
    nombre_archivo = "plan_gestion_software.qmd",
    directorio = dir_proyecto,
    titulo_proyecto = paste("Plan de Gestión de Software -", nombre_proyecto),
    autor = "[Tu nombre aquí]"
  )
  
  # Crear archivo README
  readme_content <- paste0("# ", nombre_proyecto, "
  
## Descripción
[Descripción breve del proyecto]

## Estructura del proyecto
```
", nombre_proyecto, "/
├── plan_gestion_software.qmd  # Plan de gestión principal
├── docs/                      # Documentación adicional  
├── src/                       # Código fuente
├── tests/                     # Pruebas
├── data/                      # Datos del proyecto
└── output/                    # Resultados y outputs
```

## Cómo usar este proyecto
1. Completa el plan de gestión de software en `plan_gestion_software.qmd`
2. Renderiza el documento con: `quarto render plan_gestion_software.qmd`
3. Desarrolla tu código en la carpeta `src/`
4. Añade pruebas en la carpeta `tests/`

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
")
  
  writeLines(readme_content, file.path(dir_proyecto, "README.md"))
  
  # Crear archivo .gitignore básico
  gitignore_content <- "# R
.Rproj.user
.Rhistory
.RData
.Ruserdata
renv/

# Quarto
/.quarto/

# Output files
*.html
*.pdf
*.docx

# Data (ajustar según necesidades)
data/raw/
!data/example/

# OS
.DS_Store
Thumbs.db"
  
  writeLines(gitignore_content, file.path(dir_proyecto, ".gitignore"))
  
  cat("✓ Proyecto completo creado en:", dir_proyecto, "\n")
  cat("✓ Estructura de carpetas creada\n")
  cat("✓ README.md y .gitignore añadidos\n")
  
  return(dir_proyecto)
}

# EJEMPLOS DE USO:

# 1. Crear solo la plantilla Quarto en el directorio actual
# crear_plantilla_plan_gestion()

# 2. Crear plantilla con parámetros personalizados
# crear_plantilla_plan_gestion(
#   nombre_archivo = "mi_plan_gestion.qmd",
#   directorio = "mi_proyecto", 
#   titulo_proyecto = "Plan de Gestión - Análisis de Datos Genómicos",
#   autor = "Dr. Juan Pérez"
# )

# 3. Crear un proyecto completo con estructura de carpetas
# crear_proyecto_completo("analisis_genomicos")

# Ejecutar la creación de la plantilla básica
cat("=== Generador de Plantilla Quarto para Plan de Gestión de Software ===\n\n")
cat("Funciones disponibles:\n")
cat("1. crear_plantilla_plan_gestion() - Crea solo la plantilla .qmd\n")
cat("2. crear_proyecto_completo() - Crea proyecto con estructura completa\n\n")
cat("Ejemplo de uso:\n")
cat('crear_plantilla_plan_gestion("plan_gestion.qmd", autor="Tu Nombre")\n')
cat('crear_proyecto_completo("mi_proyecto_software")\n')