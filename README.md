# Figuras de regresión

Práctica de Inteligencia Artificial en R. Ajusta tres modelos de regresión sobre
el dataset `airquality` de R y compara sus gráficos.

## El dataset

`airquality` viene incluido en R, así que no hace falta descargar nada. Tiene
153 observaciones de la calidad del aire en Nueva York entre mayo y septiembre
de 1973, con ozono, temperatura, viento, radiación solar, humedad y presión.

El script empieza quitando las filas con valores faltantes:

```r
aircomplete <- airquality[complete.cases(airquality), ]
```

## Los tres modelos

La variable dependiente en todos los casos es **Ozone**. La física que hay
detrás: cuando hace más calor, ciertas reacciones químicas producen más ozono
cerca de la superficie, así que se espera una relación no lineal.

### Regresión lineal simple

Ozono contra temperatura, con una sola variable:

```r
lin_reg <- lm(Ozone ~ Temp, data = aircomplete)
```

### Regresión lineal múltiple

Ozono contra radiación solar, viento y temperatura:

```r
multi_reg <- lm(Ozone ~ Solar.R + Wind + Temp, data = airquality)
```

### Regresión polinomial

Crea el término de grado 4 en la temperatura a mano y lo añade al modelo:

```r
aircomplete$Temp2 <- aircomplete$Temp^2
aircomplete$Temp3 <- aircomplete$Temp^3
aircomplete$Temp4 <- aircomplete$Temp^4

poly_reg <- lm(Ozone ~ Temp + Temp2 + Temp3 + Temp4, data = aircomplete)
```

El polinómico dibuja su curva sobre una malla `x_grid` de 0.1 en 0.1 entre el
mínimo y el máximo de la temperatura, en lugar de predecir sobre los datos
originales. Así la curva sale suave, en vez de salir saltando entre puntos.

Además el script ajusta un modelo para cada variable del dataset
(`modelo_ozone`, `modelo_temp`, `modelo_wind`...) para ver cuál se explica
mejor por las demás.

## Cómo ejecutarlo

En RStudio, `Ctrl+Shift+S`. En consola:

```r
source("P12.R")
```

La primera línea hace `install.packages("ggplot2")`. Si ya lo tienes
instalado, **coméntala** antes de ejecutar: si no, RStudio se reconecta al
CRAN en cada ejecución y tarda un rato de más.

## Paquetes

| Paquete | Para qué |
|---------|----------|
| `ggplot2` | los tres gráficos de regresión |

`airquality` viene con R, no hay que instalar nada más.

## Nota

Se añadió un `.gitignore` para que no se vuelva a subir `Rhistory`, que es el
historial de comandos de RStudio y no forma parte del trabajo.
