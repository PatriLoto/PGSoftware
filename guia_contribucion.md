
# 🤝 Guía de Contribución

¡Gracias por tu interés en contribuir a este proyecto! Todas las contribuciones son bienvenidas y valoradas. Esta plantilla Quarto está diseñada para la comunidad de investigación en América Latina, y tu participación ayuda a democratizar la ciencia abierta.

## 📋 Formas de Contribuir

Hay muchas maneras de contribuir a este proyecto, más allá de escribir código:

### 💡 Sugerir nuevas funcionalidades

¿Tienes una idea para mejorar la plantilla? ¡Nos encantaría escucharla!

1. Ve a la pestaña [**Issues**](../../issues) del repositorio
2. Haz clic en **"New Issue"**
3. Completa la información:
   - **Título descriptivo**: Ejemplo: "Agregar sección de análisis de costos"
   - **Descripción del problema**: ¿Qué necesidad o problema resuelve tu propuesta?
   - **Solución propuesta**: Describe tu idea con el mayor detalle posible
   - **Alternativas consideradas**: ¿Hay otras formas de resolver esto?
   - **Contexto adicional**: Capturas de pantalla, ejemplos, referencias


### 🐛 Reportar errores (bugs)

Si encuentras un error o algo que no funciona como esperas:

1. Ve a [**Issues**](../../issues)
2. Haz clic en **"New Issue"**
3. Proporciona:
   - **Descripción del error**: ¿Qué esperabas que pasara? ¿Qué pasó en realidad?
   - **Pasos para reproducir**: Lista los pasos exactos para reproducir el error
   - **Entorno**: Sistema operativo, versión de R/RStudio, versión de Quarto
   - **Capturas de pantalla**: Si aplica
   - **Mensaje de error**: Copia el mensaje de error completo

### 📖 Mejorar la documentación

- Corregir errores ortográficos o gramaticales
- Clarificar instrucciones confusas
- Agregar ejemplos de uso
- Traducir documentación (si aplica)

### 🧪 Probar y dar feedback

- Usa la plantilla en tu proyecto real
- Comparte tu experiencia en un issue
- Sugiere mejoras basadas en tu uso

## 🔧 Contribuir con Código

### Antes de empezar

1. **Revisa los issues existentes**: Puede que alguien ya esté trabajando en tu idea
2. **Comenta en el issue**: Si vas a trabajar en algo, coméntalo para evitar duplicación de esfuerzos
3. **Discute cambios grandes**: Para cambios significativos, abre primero un issue para discutirlo

### Flujo de trabajo con Git

1. **Forkea el repositorio**
```bash
   # Haz clic en el botón "Fork" en GitHub
```

2. **Clona tu fork localmente**
```bash
   git clone https://github.com/TU-USUARIO/nombre-del-repo.git
   cd nombre-del-repo
```

3. **Crea una rama para tu contribución**
```bash
   # Para nuevas funcionalidades
   git checkout -b feature/nombre-descriptivo
   
   # Para corrección de bugs
   git checkout -b fix/nombre-del-bug
   
   # Para mejoras en documentación
   git checkout -b docs/descripcion-mejora
```

4. **Haz tus cambios**
   - Edita los archivos necesarios
   - Prueba que la plantilla se renderice correctamente
   - Verifica que no haya errores


5. **Haz commit de tus cambios**
```bash
   git add .
   git commit -m "Tipo: Descripción breve del cambio
   
   - Detalle del cambio 1
   - Detalle del cambio 2
   
   Cierra #número-de-issue"
```

   **Tipos de commit:**
   - `feat:` Nueva funcionalidad
   - `fix:` Corrección de bug
   - `docs:` Cambios en documentación
   - `style:` Cambios de formato (sin afectar funcionalidad)
   - `refactor:` Refactorización de código
   - `test:` Agregar o modificar tests
   - `chore:` Tareas de mantenimiento

6. **Haz push a tu fork**
```bash
   git push origin nombre-de-tu-rama
```

7. **Abre un Pull Request**
   - Ve a tu fork en GitHub
   - Haz clic en **"Compare & pull request"**
   - Completa la descripción del PR:
     - ¿Qué cambios hiciste?
     - ¿Por qué son necesarios?
     - ¿Cómo se pueden probar?
     - Referencias a issues relacionados (usa `Cierra #número` o `Relacionado con #número`)


### Para documentación
- Usa español neutro latinoamericano
- Sé claro y conciso
- Incluye ejemplos cuando sea posible
- Usa lenguaje inclusivo

## 🌟 Código de Conducta

Este proyecto se adhiere a un código de conducta que fomenta un ambiente abierto y acogedor. Al participar, te comprometes a:

- **Ser respetuoso**: Trata a todos con respeto y consideración
- **Ser colaborativo**: Ayuda a otros y acepta ayuda
- **Ser constructivo**: Ofrece críticas constructivas y acepta feedback
- **Ser inclusivo**: Respeta diferentes perspectivas y experiencias

## 💬 ¿Preguntas?

Si tienes preguntas sobre cómo contribuir:

1. Revisa los [issues existentes](../../issues)
2. Abre un nuevo issue con la etiqueta `pregunta`
3. Contacta a [tu email o medio de contacto]

## 🙏 Agradecimientos

Cada contribución, sin importar su tamaño, es valiosa. Gracias por ayudar a hacer la ciencia abierta más accesible en América Latina.

---

## 📚 Recursos Útiles

- [Documentación de Quarto](https://quarto.org/)
- [Guía de Git y GitHub](https://docs.github.com/es)
- [Markdown Guide](https://www.markdownguide.org/)
- [Recomendación UNESCO sobre Ciencia Abierta](https://unesdoc.unesco.org/ark:/48223/pf0000379949_spa)

---

**Última actualización**: [Fecha]

**Mantenedores**: Patricia A. Loto ([@tu-usuario-github](https://github.com/tu-usuario))
