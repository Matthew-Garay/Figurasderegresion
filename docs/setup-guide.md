# Guia de Instalacion - Figuras de Regresion

Esta guia te ayuda a ejecutar el proyecto en tu entorno local.

## Requisitos previos

- R 4.x
- Paquete ggplot2

## Instalacion

1. Clona el repositorio:
   ```bash
   git clone https://github.com/Matthew-Garay/Figurasderegresion.git
   cd Figurasderegresion
   ```
2. Instala el paquete ggplot2 si no lo tienes:
   ```r
   install.packages("ggplot2")
   ```
3. Ejecuta el script:
   ```bash
   Rscript P12.R
   ```

## Verificacion

El script genera tres modelos de regresion (lineal simple, lineal multiple y polinomial) sobre el dataset airquality y sus graficas correspondientes.
