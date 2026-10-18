# Arquitectura - Figuras de Regresion

## Visión general

Tres modelos de regresion (lineal simple, lineal multiple y polinomial) sobre el dataset airquality de R, con visualizaciones en ggplot2.

## Decisiones de arquitectura

### ADR-001: Regresion con R y ggplot2

**Estado:** Aceptado  
**Contexto:** Se requiere ajustar, interpretar y visualizar distintos modelos de regresion sobre los mismos datos.  
**Decisión:** Usar R base para el ajuste de modelos y ggplot2 para la visualización de resultados.  
**Consecuencias:** Análisis estadístico completo, depende de R y ggplot2.

## Tecnologías

- R 4.x
- ggplot2
