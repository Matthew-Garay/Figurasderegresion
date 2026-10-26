# Figuras de Regresion

## A. Titulo del Proyecto y Resumen Ejecutivo

Figuras de Regresion es un script de analisis estadistico en R que implementa tres modelos de regresion (lineal simple, lineal multiple y polinomial) sobre el dataset integrado airquality, con visualizaciones generadas mediante ggplot2. El problema que resuelve es la exploracion de relaciones entre variables meteorológicas y la prediccion del nivel de ozono como variable objetivo. Su alcance tecnologico se limita al analisis estadistico y visualizacion local en R, sin componente de servidor ni persistencia de datos.

## B. Arquitectura del Sistema

El programa sigue una arquitectura secuencial de procesamiento estadistico. El flujo de datos comienza con la carga del dataset airquality integrado en R, seguido de la construccion de tres modelos de regresion independientes sobre los mismos datos: regresion lineal simple, regresion lineal multiple y regresion polinomial. Cada modelo genera su propia visualización con ggplot2. No existen capas logicas separadas ni comunicacion entre componentes; todo el procesamiento ocurre dentro de un unico script de R.

## C. Caracteristicas Tecnicas Clave

- Regresion lineal simple sobre el dataset airquality de R.
- Regresion lineal multiple sobre el dataset airquality de R.
- Regresion polinomial sobre el dataset airquality de R.
- Visualizaciones de los modelos con ggplot2.
- Variable objetivo: nivel de ozono.
- No utiliza base de datos, ni concurrencia, ni procesamiento en tiempo real, ni protocolos de red.
- Seguridad limitada al ambito de ejecucion local; no maneja datos sensibles ni autenticacion.

## D. Especificacion del Stack Tecnologico

| Categoria | Tecnologia / Librería |
|-----------|----------------------|
| Lenguaje | R 4.x |
| Visualizacion | ggplot2 |
| Analisis | Regresion lineal simple, regresion lineal multiple, regresion polinomial |

## E. Guia de Instalacion, Configuracion y Despliegue

### Requisitos previos del sistema

- R 4.x instalado en el sistema operativo.
- Paquete ggplot2 instalado en R.

### Secuencia de comandos para clonacion e instalacion

```bash
git clone https://github.com/Matthew-Garay/Figurasderegresion.git
cd Figurasderegresion
```

### Configuracion de variables de entorno

Este proyecto no requiere archivo .env ni variables de entorno.

### Comandos para ejecucion en entorno de Desarrollo

```r
install.packages("ggplot2")
```

```bash
Rscript P12.R
```

### Comandos para ejecucion en entorno de Produccion

No aplica entorno de produccion separado; el script se ejecuta localmente con el mismo comando de desarrollo.

## F. Creditos de Autoría

Desarrollado por: Matthew Ilveneff Garay Pérez
Correo Electronico: 1911.garay.perez@gmail.com
