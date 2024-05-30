# Calculadora de Biomasa en R

Bienvenido al mundo de los datos de insectos. ¡Vamos a crujir algunos números y no insectos! 
#Happy coding!

Este script está diseñado para que puedas usar la fórmula para calcular la biomasa propuesta por Rogers et al, 1976, y utilizada posteriormente por Stork y Blackburn en su estudio de 1993. La fórmula relaciona el número de insectos con su tamaño (longitud) de la siguiente manera:

\[ b = n \times (0.0305 \times l^{2.62}) \]

donde:
- \( n \) es la abundancia
- \( l \) es el tamaño

## Características

- Función `biomass` para calcular la biomasa dado el número de insectos y su tamaño.
- Capacidad de calcular la biomasa para un conjunto de datos con múltiples especies.
- Uso de la librería `dplyr` para manipulación de datos.

## Uso

### Cálculo Básico

Para calcular la biomasa de una sola especie, puedes usar la función `biomass`:

```r
biomass <-  function(n, l) {
  r1 <- l^2.62
  r2 <- 0.0305 * r1
  resul <- n * r2
  return(resul)
}

biomass(5, 6.5) # Primero la abundancia y luego el tamaño

library(dplyr)

database <- data.frame(
  Species = c("Species1", "Species2", "Species3", "Species4"),
  n = c(10, 15, 8, 20), # Abundancia
  l = c(5.2, 6.5, 4.8, 7.0) # Tamaño (cm)
)

databiomass <- database %>%
  mutate(biomass = biomass(n, l))

print(databiomass) # Muestra la tabla con los valores de biomasa

Ejemplo

library(dplyr)

database <- data.frame(
  Species = c("Species1", "Species2", "Species3", "Species4"),
  n = c(10, 15, 8, 20), # Abundancia
  l = c(5.2, 6.5, 4.8, 7.0) # Tamaño (cm)
)

databiomass <- database %>%
  mutate(biomass = biomass(n, l))

print(databiomass) # Muestra la tabla con los valores de biomasa

Referencias
Rogers, L., Hinds, L. y Buschbom, R. (1976). A general weight vs length relationships for insects. Ann. Entomol. Soc. Am., 69: 387-389.
Stork, N. E. y Blackburn, T. M. (1993). Abundance, body size and biomass of arthropods in tropical forest. Oikos, 67: 483-489.

Autor
Nicolás Ayala Tovar


Este README proporciona una descripción detallada del proyecto, los requisitos, y las instrucciones de uso. Puedes personalizarlo aún más según tus necesidades.
