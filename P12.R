# ============================================================================
# P12.R - Figuras de Regresion sobre el dataset airquality
# Refactorizado: modularizacion de graficos, eliminacion de install.packages(),
# paleta de colores neutra y titulos distintivos por modelo.
# ============================================================================

library(ggplot2)

# ----------------------------------------------------------------------------
# Carga y preparacion del dataset
# ----------------------------------------------------------------------------
data(airquality)

aircomplete <- airquality[complete.cases(airquality), ]

cat("=== Analisis de Regresion - Dataset Airquality ===\n", sep = "")
cat("Dimensiones del dataset (sin valores faltantes):", dim(aircomplete), "\n\n")
print(summary(aircomplete))

# ----------------------------------------------------------------------------
# Modelos de regresion
# ----------------------------------------------------------------------------
modelo_ozone <- lm(Ozone ~ ., data = aircomplete)
modelo_temp  <- lm(Temp ~ ., data = aircomplete)
modelo_wind  <- lm(Wind ~ ., data = aircomplete)
modelo_month <- lm(Month ~ ., data = aircomplete)
modelo_solar <- lm(Solar.R ~ ., data = aircomplete)
modelo_day   <- lm(Day ~ ., data = aircomplete)

# Regresion lineal simple: Ozone ~ Temp
lin_reg <- lm(Ozone ~ Temp, data = aircomplete)

# Regresion lineal multiple: Ozone ~ Solar.R + Wind + Temp
multi_reg <- lm(Ozone ~ Solar.R + Wind + Temp, data = airquality)

# Regresion polinomial: Ozone ~ Temp + Temp^2 + Temp^3 + Temp^4
aircomplete$Temp2 <- aircomplete$Temp^2
aircomplete$Temp3 <- aircomplete$Temp^3
aircomplete$Temp4 <- aircomplete$Temp^4
poly_reg <- lm(Ozone ~ Temp + Temp2 + Temp3 + Temp4, data = aircomplete)

# ----------------------------------------------------------------------------
# Funcion: graficar_regresion
# Dibuja dispersion + linea de regresion con estilo limpio: paleta neutra,
# tema minimal y sin colores saturados.
# ----------------------------------------------------------------------------
graficar_regresion <- function(datos, x_var, y_var, modelo, datos_pred, titulo,
                               etiqueta_x, etiqueta_y, color_puntos = "#2C3E50",
                               color_linea = "#7F8C8D") {
    ggplot() +
        geom_point(aes(x = datos[[x_var]], y = datos[[y_var]]), colour = color_puntos) +
        geom_line(aes(x = datos_pred[[x_var]], y = predict(modelo, newdata = datos_pred)),
                  colour = color_linea) +
        ggtitle(titulo) +
        xlab(etiqueta_x) +
        ylab(etiqueta_y) +
        theme_minimal(base_size = 12) +
        theme(
            plot.title = element_text(face = "bold", size = 14, margin = margin(b = 12)),
            axis.title = element_text(size = 11, margin = margin(t = 8)),
            panel.grid.minor = element_blank()
        )
}

# ----------------------------------------------------------------------------
# Generacion de los tres graficos de regresion
# ----------------------------------------------------------------------------

# 1. Regresion Lineal Simple: Ozone vs Temp
grafico_simple <- graficar_regresion(
    datos = aircomplete,
    x_var = "Temp",
    y_var = "Ozone",
    modelo = lin_reg,
    datos_pred = aircomplete,
    titulo = "Regresion Lineal Simple: Ozono vs Temperatura",
    etiqueta_x = "Temperatura",
    etiqueta_y = "Ozono"
)
print(grafico_simple)

cat("\n--- Regresion Lineal Simple ---\n")
print(summary(lin_reg))
cat("Prediccion para Temp = 75:\n")
print(predict(lin_reg, data.frame(Temp = 75)))

# 2. Regresion Lineal Multiple: Ozone ~ Solar.R + Wind + Temp
grafico_multiple <- graficar_regresion(
    datos = aircomplete,
    x_var = "Temp",
    y_var = "Ozone",
    modelo = multi_reg,
    datos_pred = aircomplete,
    titulo = "Regresion Lineal Multiple: Ozono vs Temperatura (controlando Solar.R y Wind)",
    etiqueta_x = "Temperatura",
    etiqueta_y = "Ozono"
)
print(grafico_multiple)

cat("\n--- Regresion Lineal Multiple ---\n")
print(summary(multi_reg))
cat("Prediccion para Solar.R = 190, Wind = 7.0, Temp = 75:\n")
print(predict(multi_reg, data.frame(Solar.R = 190, Wind = 7.0, Temp = 75)))

# 3. Regresion Polinomial: Ozone vs Temp (grado 4)
x_grid <- data.frame(
    Temp = seq(min(aircomplete$Temp), max(aircomplete$Temp), 0.1)
)
x_grid$Temp2 <- x_grid$Temp^2
x_grid$Temp3 <- x_grid$Temp^3
x_grid$Temp4 <- x_grid$Temp^4

grafico_pol <- graficar_regresion(
    datos = aircomplete,
    x_var = "Temp",
    y_var = "Ozone",
    modelo = poly_reg,
    datos_pred = x_grid,
    titulo = "Regresion Polinomial (grado 4): Ozono vs Temperatura",
    etiqueta_x = "Temperatura",
    etiqueta_y = "Ozono"
)
print(grafico_pol)

cat("\n--- Regresion Polinomial ---\n")
print(summary(poly_reg))
cat("Prediccion para Temp = 75:\n")
print(predict(poly_reg, data.frame(
    Temp = 75, Temp2 = 75^2, Temp3 = 75^3, Temp4 = 75^4
)))

cat("\n=== Analisis completado ===\n")