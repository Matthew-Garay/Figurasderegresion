data(airquality)
install.packages("ggplot2")  # Ejecutar solo una vez
library(ggplot2)

#1.Explorar el dataset
head(airquality)

aircomplete <- airquality[complete.cases(airquality), ]
print(aircomplete)

cat("Dimensiones del dataset Airquality(Rasurado):", dim(aircomplete), "\n")
summary(aircomplete)

#Orden de datos por prioridad
modelo_ozone <- lm(Ozone ~ ., data = aircomplete)
summary(modelo_ozone)

modelo_temp <- lm(Temp ~ ., data = aircomplete)
summary(modelo_temp)

modelo_wind <- lm(Wind ~ ., data = aircomplete)
summary(modelo_wind)

modelo_month <- lm(Month ~ ., data = aircomplete)
summary(modelo_month)

modelo_solar <- lm(Solar.R ~ ., data = aircomplete)
summary(modelo_solar)

modelo_day <- lm(Day ~ ., data = aircomplete)
summary(modelo_day)

# Modelo Regresion Lineal simple: Ozone vs Temp
lin_reg <- lm(Ozone ~ Temp, data = aircomplete)

# Modelo Regresion lineal múltiple
multi_reg <- lm(Ozone ~ Solar.R + Wind + Temp, data = airquality)

# Crear variables polinómicas
aircomplete$Temp2 <- aircomplete$Temp^2
aircomplete$Temp3 <- aircomplete$Temp^3
aircomplete$Temp4 <- aircomplete$Temp^4

# Modelo polinomial
poly_reg <- lm(Ozone ~ Temp + Temp2 + Temp3 + Temp4, data = aircomplete)


#Variable dependiente (Y): Ozono
#Variable independiente (X): Temperatura
#Cuando hace más calor, ciertas reacciones químicas hacen que se pueda elevar la cantidad de ozono

#2. Generar los graficos de Regresion Lineal Simple, Multiple y Polinomial
# Gráfico Regresion Lineal Simple
ggplot() +
  geom_point(aes(x = aircomplete$Temp, y = aircomplete$Ozone), colour = "red") +
  geom_line(aes(x = aircomplete$Temp,
                y = predict(lin_reg, newdata = aircomplete)), colour = "blue") +
  ggtitle("Ozone vs Temp (Conjunto de entrenamiento)") +
  xlab("Temperatura") +
  ylab("Ozono")

# Gráfico Regresion Lineal Multiple
ggplot() +
  geom_point(aes(x = aircomplete$Temp, y = aircomplete$Ozone), colour = "red") +
  geom_line(aes(x = aircomplete$Temp,
                y = predict(multi_reg, newdata = aircomplete)), colour = "blue") +
  ggtitle("Ozone vs Temp (Conjunto de entrenamiento)") +
  xlab("Temperatura") +
  ylab("Ozono")


x_grid <- seq(min(aircomplete$Temp), max(aircomplete$Temp), 0.1)
# Gráfico estilo personalizado
ggplot() +
  geom_point(aes(x = aircomplete$Temp, y = aircomplete$Ozone), colour = "red") +
  geom_line(aes(x = x_grid,
                y = predict(poly_reg, newdata= data.frame(Temp=x_grid,
                                                         Temp2=x_grid^2,
                                                         Temp3=x_grid^3,
                                                         Temp4=x_grid^4
                ))),
            color="blue")+
  ggtitle("Regresión Polinomial: Ozone vs Temp") +
  xlab("Temperatura") +
  ylab("Ozono")

summary(lin_reg)
predict(lin_reg, data.frame(Temp = 75))

summary(multi_reg)
predict(multi_reg, data.frame(Solar.R = 190, Wind = 7.0, Temp = 75))

summary(poly_reg)
predict(poly_reg, data.frame(Temp = 75,Temp2 = 75^2,Temp3 = 75^3,Temp4 = 75^4))
