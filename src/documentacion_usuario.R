# EJEMPLOS DE USO:

# 1. Crear solo la plantilla Quarto en el directorio actual
# crear_plantilla_plan_gestion()

# 2. Crear plantilla con parámetros personalizados
# crear_plantilla_plan_gestion(
#   nombre_archivo = "mi_plan_gestion_software.qmd",
#   directorio = "mi_proyecto", 
#   titulo_proyecto = "Plan de Gestión - Análisis de Datos Genómicos",
#   autor = "Dr. Juan Pérez"
# )

# 3. Crear un proyecto completo con estructura de carpetas
# crear_proyecto_completo("asistente_virtual")

# Ejecutar la creación de la plantilla básica
cat("=== Generador de Plantilla Quarto para Plan de Gestión de Software ===\n\n")
cat("Funciones disponibles:\n")
cat("1. crear_plantilla_plan_gestion() - Crea solo la plantilla .qmd\n")
cat("2. crear_proyecto_completo() - Crea proyecto con estructura completa\n\n")
cat("Ejemplo de uso:\n")
cat('crear_plantilla_plan_gestion("plan_gestion.qmd", autor="Tu Nombre")\n')
cat('crear_proyecto_completo("mi_proyecto_software")\n')