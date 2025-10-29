#Probabilidades de transición (ejemplo)
# Crear una matriz de transición
transition_matrix <- matrix(c(0.3, 0.4, 0.3,
                              0.2, 0.8, 0.0,
                              0.6, 0.2, 0.2),
                            nrow = 3, byrow = TRUE)

# Dar nombres a las filas y columnas para mejor legibilidad
rownames(transition_matrix) <- colnames(transition_matrix) <- c("soleado", "nublado", "lluvioso")

# Mostrar la matriz de transición
print(transition_matrix)

# Verificar si cada fila suma 1 (propiedad de probabilidad de transición)
rowSums(transition_matrix)

# Crear una matriz de transición
transition_matrix <- matrix(c(0.3, 0.4, 0.3,
                              0.2, 0.8, 0.0,
                              0.6, 0.2, 0.2),
                            nrow = 3, byrow = TRUE)
# Dar nombres a las filas y columnas para mejor legibilidad
rownames(transition_matrix) <- colnames(transition_matrix) <- c("soleado", "nublado", "lluvioso")
# Mostrar la matriz de transición
print(transition_matrix)
# Verificar si cada fila suma 1 (propiedad de probabilidad de transición)
rowSums(transition_matrix)
# Estado inicial (por ejemplo, empezando en Estado1)
initial_state <- c(0, 1, 0)
# Número de pasos en el futuro
steps <- 2
# Función para pronosticar estados futuros
forecast_markov <- function(initial_state, transition_matrix, steps) {
  state <- initial_state
  for (i in 1:steps) {
    state <- state %*% transition_matrix
  }
  return(state)
}
future_state <- forecast_markov(initial_state, transition_matrix, steps)
print(future_state)

# Realizar el pronóstico
future_state <- forecast_markov(initial_state, transition_matrix, steps)
print(future_state)
