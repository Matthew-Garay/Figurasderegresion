<div align="center">

# 📈 Figuras de Regresión

**Práctica de Inteligencia Artificial en R** — regresión lineal simple, múltiple y polinomial sobre el dataset `airquality`.

[![R](https://img.shields.io/badge/R-4.x-276DC3?style=flat-square&logo=r&logoColor=white)](https://www.r-project.org/)
[![ggplot2](https://img.shields.io/badge/ggplot2-4.x-2ea44f?style=flat-square)](https://ggplot2.tidyverse.org/)
[![IA](https://img.shields.io/badge/Inteligencia%20Artificial-Regresi%C3%B3n-6f42c1?style=flat-square)]()

</div>

---

## 📖 Descripción

Tres modelos de **regresión** sobre el dataset integrado `airquality` de R: **lineal simple**, **lineal múltiple** y **polinomial**, cada uno con su gráfica realizada en **ggplot2**. La variable a predecir es el **ozono**.

Es una práctica académica de Inteligencia Artificial que muestra cómo se ajustan, interpretan y visualizan distintos modelos de regresión sobre los mismos datos.

## ✨ Características

- **Regresión lineal simple:** `Ozone ~ Temp`.
- **Regresión lineal múltiple:** `Ozone ~ Solar.R + Wind + Temp`.
- **Regresión polinomial:** términos de grado 2 a 4 de la temperatura creados a mano, con curva suavizada sobre una malla fina.
- **Visualización** con ggplot2 (puntos reales + curva del modelo).
- Predicciones de ejemplo y resúmenes con `summary`.

## 🛠️ Tecnologías utilizadas

- **Lenguaje:** R
- **Paquete:** ggplot2
- **Dataset:** `airquality` (incluido en R, no requiere descarga)

## 📋 Requisitos previos

- [R](https://www.r-project.org/) o [RStudio](https://posit.co/download/rstudio-desktop/).
- Paquete **ggplot2** instalado.

## 🚀 Instalación

```bash
git clone https://github.com/Matthew-Garay/Figurasderegresion.git
cd Figurasderegresion
```

Instala ggplot2 si no lo tienes:

```r
install.packages("ggplot2")
```

## 🧪 Uso

```r
source("P12.R")
```

El script carga `airquality`, elimina filas incompletas, ajusta los tres modelos y genera las tres gráficas de regresión.

## 📂 Estructura del proyecto

```
Figurasderegresion/
├── P12.R                          # Script de regresión en R
├── P12 Figuras de regresión y airquality.pdf   # Memoria de la práctica
└── README.md
```

## 📜 Licencia

Proyecto académico y educativo; puedes usarlo libremente con fines de aprendizaje.

## ✍️ Autor

**Matthew Garay** — [GitHub](https://github.com/Matthew-Garay)
