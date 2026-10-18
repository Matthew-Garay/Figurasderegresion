# Figuras de Regresion

<p align="center">
  <a href="https://github.com/Matthew-Garay/Figurasderegresion/actions/workflows/ci.yml"><img src="https://github.com/Matthew-Garay/Figurasderegresion/actions/workflows/ci.yml/badge.svg" alt="CI Status"/></a>
  <a href="https://github.com/Matthew-Garay/Figurasderegresion/security/dependabot"><img src="https://img.shields.io/badge/Dependabot-enabled-blue?style=flat-square&logo=github&labelColor=555555" alt="Dependabot"/></a>
</p>

Tres modelos de regresion (lineal simple, lineal multiple y polinomial) sobre el dataset integrado airquality de R, cada uno con su grafica realizada en ggplot2. La variable a predecir es el ozono.

## Stack tecnologico

- **Lenguaje:** R 4.x
- **Visualizacion:** ggplot2
- **Analisis:** Regresion lineal simple, multiple y polinomial

## Arquitectura

```mermaid
graph TD
    A[Dataset airquality] --> B[Regresion lineal simple]
    A --> C[Regresion lineal multiple]
    A --> D[Regresion polinomial]
    B --> E[Grafica ggplot2]
    C --> F[Grafica ggplot2]
    D --> G[Grafica ggplot2]
    
    style A fill:#e1f5fe,stroke:#01579b
    style B fill:#fff3e0,stroke:#e65100
    style C fill:#e8f5e9,stroke:#1b5e20
    style D fill:#f3e5f5,stroke:#4a148c
    style E fill:#ffe0b2,stroke:#ef6c00
    style F fill:#ffe0b2,stroke:#ef6c00
    style G fill:#ffe0b2,stroke:#ef6c00
```

## Caracteristicas

- Regresion lineal simple sobre airquality
- Regresion lineal multiple sobre airquality
- Regresion polinomial sobre airquality
- Visualizaciones con ggplot2
- Variable objetivo: ozono

## Como ejecutar

### Requisitos previos

- R 4.x instalado
- Paquete ggplot2

### Ejecucion

1. Clona el repositorio:
   ```bash
   git clone https://github.com/Matthew-Garay/Figurasderegresion.git
   cd Figurasderegresion
   ```
2. Instala ggplot2 si no lo tienes:
   ```r
   install.packages("ggplot2")
   ```
3. Ejecuta el script:
   ```bash
   Rscript P12.R
   ```

## Estructura del proyecto

```
Figurasderegresion/
├── P12.R                    # Codigo fuente en R
├── .gitignore               # Archivos excluidos del control de versiones
├── LICENSE                  # Licencia MIT
├── README.md                # Este archivo
└── docs/                    # Documentacion extendida
    ├── setup-guide.md       # Guia de instalacion
    └── architecture.md      # Diagrama de arquitectura
```

## Contacto

<p align="center">
  <a href="mailto:1911.garay.perez@gmail.com"><img src="https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white" alt="Email"/></a>
  <a href="https://www.linkedin.com/in/matthewgarayperez/"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"/></a>
</p>
